package korn.horn

import korn.c._
import korn.smt._

import scala.collection.mutable

class Proc(
    val unit: Unit,
    val name: String,
    val params: List[Formal],
    val locals: List[Formal],
    val body: Stmt,
    val contract: Contract,
    val config: Config) {
  import unit._
  import unit.sig._

  val branch = config.branch
  val loop = config.loop

  /** collect identifiers in scope and their types */
  object toplevel extends Scope(globals)
  object external extends Scope(params)
  object internal extends Scope(params ++ locals)
  object combined extends Scope(globals ++ params ++ locals)

  object eval extends unit.eval.scoped(this)
  import eval._

  def run() {
    val st0 = state
    val st1 = contract.enter(st0, this)
    val ctx = Context.init(st1)
    for (st2 <- local(body, st1, st1, ctx))
      contract.leave(st1, st2, None, this) // implicit return without value
  }

  def now(pred: Step, st0: State, st1: State, reason: String) {
    val prop = pred(st0, st1)
    clause(st1, prop, reason)
  }

  def from(pred: Step, st0: State, st1: State): State = {
    val prop = pred(st0, st1)
    st1 and prop
  }

  def local(stmts: List[Stmt], st0: State, st1: State, ctx: Context): List[State] = {
    stmts match {
      case Nil =>
        List(st1)
      case first :: rest =>
        for (
          st2 <- local(first, st0, st1, ctx);
          st3 <- local(rest, st0, st2, ctx)
        )
          yield st3
    }
  }

  def local(stmt: Stmt, st0: State, st1: State, ctx: Context): List[State] = {
    stmt match {
      case Group(stmts) =>
        local(stmts, st0, st1, ctx)

      case Assume(Id(name), None, typ) =>
        List(st1)

      case Assume(Id(name), Some(expr), typ) =>
        for ((Val(pure, _), st2) <- rval(expr, st0, st1))
          yield {
            val Val(x, _) = st2(name)
            val eq = x === pure
            val st3 = st2 and eq
            st3
          }

      case Atomic(None) =>
        List(st1)

      case Atomic(Some(expr)) =>
        for ((_, st2) <- rval(expr, st0, st1))
          yield st2

      case Label(label, stmt) =>
        val st2 = branch.label(label, st0, st1, this)
        local(stmt, st0, st2, ctx)

      case Goto(label) =>
        val st2 = loop.goto(label, st1, ctx.hyps, this)
        branch.goto(label, st0, st2, this)
        Nil

      case Return(None) =>
        val st2 = loop.return_(st1, ctx.hyps, this)
        contract.leave(ctx.entry, st2, None, this)
        Nil

      case Return(Some(res)) =>
        val st2 = loop.return_(st1, ctx.hyps, this)
        for ((_res, st3) <- rval(res, st0, st2))
          contract.leave(ctx.entry, st3, Some(_res), this)
        Nil

      case Break =>
        val hyp :: _ = ctx.hyps
        loop.break(st1, hyp, this)
        Nil

      case If(test, left, right) =>
        val _test_st = rval_test(test, st0, st1)

        val _left =
          for (
            (_test, st2) <- _test_st;
            res <- local(left, st0, st2 and _test, ctx)
          )
            yield res

        val _right =
          for (
            (_test, st2) <- _test_st;
            res <- local(right, st0, st2 and !_test, ctx)
          )
            yield res
        // branch.join(st0, sa1, "if then", sb1, "if else", this)

        _left ++ _right

      case While(test, body) =>
        /* val dont = Stmt.labels(body)

        val (inv, sum, si0) = loop.enter(st0, st1, this)

        val (_test, si1) = rval_test(test, si0, si0)
        val sin = si1 and !_test
        val siy = si1 and _test

        val hyp = Hyp(inv, sum, st1, si0, sin, siy, dont)
        val loc = korn.unpack(stmt.loc, "no location for while loop")
        witness += inv.name -> (this, loc, inv, "invariant")
        witness += sum.name -> (this, loc, sum, "summary")

        loop.term(hyp, this)

        val si2 = local(body, si0, siy, hyp :: ctx)
        loop.iter(si2, hyp, this)

        loop.leave(hyp, this) */

        ???

      case _ =>
        korn.error("cannot execute as local statement: " + stmt)
    }
  }
}
