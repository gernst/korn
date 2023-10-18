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
  object external extends Scope(params)
  object internal extends Scope(params ++ locals)
  object combined extends Scope(globals ++ params ++ locals)

  object eval extends unit.eval.scoped(this)
  import eval._

  def run() {
    val st0 = state
    val (pre_, st1) = contract.enter(st0, this)
    val ctx = Context.init(st1)
    val st2 = local(body, st1, st1, ctx)
    val post_ = contract.leave(st1, st2, None, this) // implicit return without value

    for (pre <- pre_) {
      witness += pre.name -> (this, ploc, pre, external.names, "precondition")
    }

    for (post <- post_) {
      if(ret != Type._void)
        witness += post.name -> (this, ploc, post, external.names ++ List("\\result"), "postcondition")
      else
        witness += post.name -> (this, ploc, post, external.names, "postcondition")
    }
  }

  def now(pred: Step, st0: State, st1: State, reason: String) {
    val prop = pred(st0, st1)
    clause(st1, prop, reason)
  }

  def from(pred: Step, st0: State, st1: State): State = {
    val prop = pred(st0, st1)
    st1 and prop
  }

  def unreach(st: State) = {
    st and False
  }

  def local(stmts: List[Stmt], st0: State, st1: State, ctx: Context): State = {
    stmts match {
      case Nil =>
        st1
      case first :: rest =>
        val st2 = local(first, st0, st1, ctx)
        val st3 = local(rest, st0, st2, ctx)
        st3
    }
  }

  def local(stmt: Stmt, st0: State, st1: State, ctx: Context): State = {
    stmt match {
      case Group(stmts) =>
        local(stmts, st0, st1, ctx)

      case Assume(Id(name), None, typ) =>
        st1

      case Assume(Id(name), Some(expr), typ) =>
        val (Val(pure, _), st2) = rval(expr, st0, st1)
        val Val(x, _) = st2(name)
        val eq = x === pure
        val st3 = st2 and eq
        st3

      case Atomic(None) =>
        st1

      case Atomic(Some(expr)) =>
        val (_, st2) = rval(expr, st0, st1)
        st2

      case Label(label, stmt) =>
        val st2 = branch.label(label, st0, st1, this)
        local(stmt, st0, st2, ctx)

      case Goto(label) =>
        val st2 = loop.goto(label, st1, ctx.hyps, this)
        branch.goto(label, st0, st2, this)
        unreach(st2)

      case Return(None) =>
        val st2 = loop.return_(st1, ctx.hyps, this)
        contract.leave(ctx.entry, st2, None, this)
        unreach(st2)

      case Return(Some(res)) =>
        val st2 = loop.return_(st1, ctx.hyps, this)
        val (_res, st3) = rval(res, st0, st2)
        contract.leave(ctx.entry, st3, Some(_res), this)
        unreach(st3)

      case Break =>
        val hyp :: _ = ctx.hyps
        loop.break(st1, hyp, this)
        unreach(st1)

      case If(test, left, right) =>
        val (_test, st2) = rval_test(test, st0, st1)
        val sa1 = local(left, st0, st2 and _test, ctx)
        val sb1 = local(right, st0, st2 and !_test, ctx)
        branch.join(st0, sa1, "if then", sb1, "if else", this)

      case While(test, body) =>
        val dont = Stmt.labels(body)
        val loc = korn.unpack(stmt.loc, "no location for while loop")

        val (inv, sum, si0) = loop.enter(st0, st1, loc, this)

        val (_test, si1) = rval_test(test, si0, si0)
        val sin = si1 and !_test
        val siy = si1 and _test

        val hyp = Hyp(inv, sum, st1, si0, sin, siy, dont)
        witness += inv.name -> (this, loc, inv, inv.names, "invariant")
        witness += sum.name -> (this, loc, sum, sum.names, "summary")

        loop.term(hyp, loc, this)

        val si2 = local(body, si0, siy, hyp :: ctx)
        loop.iter(si2, hyp, loc, this)

        loop.leave(hyp, this)

      case _ =>
        korn.error("cannot execute as local statement: " + stmt)
    }
  }
}
