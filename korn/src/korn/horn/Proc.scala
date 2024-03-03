package korn.horn

import korn.Loc
import korn.c._
import korn.smt._

import scala.collection.mutable

class Proc(
    val unit: Unit,
    val ploc: Loc,
    val name: String,
    val params: List[Formal],
    val ret: Type,
    val locals: List[Formal],
    val body: Stmt,
    val contract: Contract,
    val config: Config) {
  import unit._
  import unit.sig._

  val branch = config.branch
  val loop = config.loop
  val call = config.call

  /** collect identifiers in scope and their types */
  object toplevel extends Scope(globals)
  object parameters extends Scope(params)
  object internal extends Scope(params ++ locals)
  object combined extends Scope(globals ++ params ++ locals)

  object eval extends unit.eval.scoped(this)
  import eval._

  def run() {
    val st0 = state
    val (pre_, st1) = contract.enter(st0, this)
    val ctx = Context.init(st1)

    val states1 = List(st1)
    for (st2 <- local(body, st1, states1, ctx)) {
      val post_ = contract.leave(st1, st2, None, this) // implicit return without value

      for (pre <- pre_) {
        val formals = (globals ++ params) map (_.name)

        korn.ensure(
          pre.fun.args.length == formals.length,
          "arity mismatch of postcondition predicate: " + pre.fun.toStringTyped + " and " + formals)

        witness += pre.name -> (this, ploc, pre, formals, "precondition")
      }

      for (post <- post_) {
        val result = List("\\result")

        val formals =
          if (ret != Type._void)
            ((globals ++ params ++ globals) map (_.name)) ++ result
          else
            (globals ++ params ++ globals) map (_.name)

        korn.ensure(
          post.fun.args.length == formals.length,
          "arity mismatch of postcondition predicate" + post.fun.toStringTyped + " and " + formals)

        witness += post.name -> (this, ploc, post, formals, "postcondition")
      }
    }
  }

  def now(pred: Step, st0: State, st1: State, reason: String, extra: List[Pure] = Nil) {
    val prop = pred(st0, st1, extra)
    clause(st1, prop, reason)
  }

  def from(pred: Step, st0: State, st1: State, extra: List[Pure] = Nil): State = {
    val prop = pred(st0, st1, extra)
    st1 and prop
  }

  val unreachable: List[State] = Nil

  def local(stmts: List[Stmt], st0: State, states1: List[State], ctx: Context): List[State] = {
    stmts match {
      case Nil =>
        states1

      case first :: rest =>
        val states2 = local(first, st0, states1, ctx);
        val states3 = local(rest, st0, states2, ctx)
        states3
    }
  }

  def local(stmt: Stmt, st0: State, states1: List[State], ctx: Context): List[State] = {
    stmt match {
      case Group(stmts) =>
        local(stmts, st0, states1, ctx)

      case Assume(Id(name), None, typ) =>
        states1

      case Assume(Id(name), Some(expr), typ) =>
        for (
          st1 <- states1;
          (Val(pure, _), st2) <- rval(expr, st1);
          Val(x, _) = st2(name)
        )
          yield st2 and (x === pure)

      case Atomic(None) =>
        states1

      case Atomic(Some(expr)) =>
        for (
          st1 <- states1;
          (_, st2) <- rval(expr, st1)
        )
          yield st2

      case Label(label, stmt) =>
        val states2 =
          for (st1 <- states1)
            yield branch.label(label, st0, st1, this)
        local(stmt, st0, states2, ctx)

      case Goto(label) =>
        for (st1 <- states1) {
          val st2 = loop.goto(label, st1, ctx.hyps, this)
          branch.goto(label, st0, st2, this)
        }
        unreachable

      case Return(None) =>
        for (st1 <- states1) {
          val st2 = loop.return_(st1, ctx.hyps, this)
          contract.leave(ctx.entry, st2, None, this)
        }
        unreachable

      case Return(Some(res)) =>
        for (st1 <- states1) {
          val st2 = loop.return_(st1, ctx.hyps, this)
          for ((_res, st3) <- rval(res, st2))
            contract.leave(ctx.entry, st3, Some(_res), this)
        }
        unreachable

      case Break =>
        val hyp :: _ = ctx.hyps
        for (st1 <- states1) {
          loop.break(st1, hyp, this)
        }
        unreachable

      // case If(test, left, right) =>
      //   val (_test, st2) = rval_test(test, st0, st1)
      //   val sa1 = local(left, st0, st2 and _test, ctx)
      //   val sb1 = local(right, st0, st2 and !_test, ctx)
      //   branch.join(st0, sa1, "if then", sb1, "if else", this)

      case If(test, left, right) =>
        val _test_states2 =
          for (
            st1 <- states1;
            (_test, st2) <- rval_test(test, st1)
          )
            yield (_test, st2)

        val _pos_states2 =
          for ((_test, st2) <- _test_states2)
            yield st2 and _test

        val _neg_states2 =
          for ((_test, st2) <- _test_states2)
            yield st2 and !_test

        val _left = local(left, st0, _pos_states2, ctx)
        val _right = local(right, st0, _neg_states2, ctx)

        _left ++ _right

      case While(test, body) =>
        val dont = Stmt.labels(body)
        val loc = korn.unpack(stmt.loc, "no location for while loop")

        // Note, we want to verify the loop just once
        // using a joint invariant (not path-sensitive invariants).
        // However, the summarization must capture potential dependencies
        // between initial states and final states of the loop.
        // To accomodate, we introduce two relational predicates so that
        //   inv is an inductive invariant
        //   sum summarizes the loop from terminated inv states and break states (it is currently not required to be backwards-inductive)

        // initialization:
        //   path(st1) ==> inv(st1, st1) for all st1 in states1

        // some intermediate states:
        //    si0 used as the \old(_) state (coinciding with the disjuntion of states1) but taken arbitrary for the body
        //    si1 is some arbitrary state at the loop head with the invariant, which yields st2 after evaluation of the loop test
        //    sin is st2 with the negated loop test ("no")
        //    siy is st2 with the positive loop test ("yes") 

        // one regular iteration:
        //   inv(si0, siy) /\ body(si2, si3) ==> inv(si0, si3)

        // loop exit conditions:
        //   inv(si0, sin) ==> sum(si0, sin)
        //   inv(si0, six) ==> sum(si0, six) // when encountering a break inside the loop body

        // state after the loop:
        //   path(st1) /\ sum(st1, si0) where si0 is completely arbitrary as specified before

        val (inv, sum, si0, si1) = loop.enter(st0, states1, loc, this)

        witness += inv.name -> (this, loc, inv, inv.names, "invariant")
        witness += sum.name -> (this, loc, sum, sum.names, "summary")

        for ((_test, si2) <- rval_test(test, si1)) yield {
          val sin = si2 and !_test
          val siy = si2 and _test

          val hyp = Hyp(inv, sum, states1, si0, sin, siy, dont)

          loop.term(inv, sum, si0, sin, loc, this)

          for (si2 <- local(body, si0, List(siy), hyp :: ctx)) yield {
            loop.iter(inv, si0, si2, loc, this)
          }
        }

        for(st1 <- states1)
          yield loop.leave(sum, st1, si0, this)

      case _ =>
        korn.error("cannot execute as local statement: " + stmt)
    }
  }
}
