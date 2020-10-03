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
    val branch: Branch,
    val loop: Loop) {
  import unit._
  import unit.sig._

  /** types of code identifiers (params and locals) */
  val env = mutable.Map[String, Sort]()

  /** collect identifiers in scope and their types */
  object external extends Scope(params)
  object internal extends Scope(params ++ locals)

  object eval extends unit.eval.scoped(this)
  import eval._

  def init() = {
    var st0: Store = Map()

    for ((name, sort) <- internal.sig) {
      env += (name -> sort)
      st0 += (name -> vr(name, sort))
    }

    state ++ st0
  }

  def run() {
    val st0 = init()
    val st1 = contract.enter(st0, this)
    val ctx = Context.empty
    val (_, st2) = local(body, st0, st1, ctx)
    contract.leave(st2, this) // implicit return without value
  }

  def now(pred: Pred, st1: State, reason: String) {
    val prop = internal.apply(pred, st1)
    clause(st1, prop, reason)
  }

  def now(pred: Pred, st0: State, st1: State, reason: String) {
    val prop = internal.apply(pred, st0, st1)
    clause(st1, prop, reason)
  }

  def from(pred: Pred, st1: State): State = {
    val prop = internal.apply(pred, st1)
    st1 and prop
  }

  def from(pred: Pred, st0: State, st1: State): State = {
    val prop = internal.apply(pred, st0, st1)
    st1 and prop
  }

  def unreach(st: State) = {
    st and False
  }

  def local(stmts: List[Stmt], st0: State, st1: State, ctx: Context): (State, State) = {
    stmts match {
      case Nil =>
        (st0, st1)
      case first :: rest =>
        val (st0_, st2) = local(first, st0, st1, ctx)
        val (st0__, st3) = local(rest, st0_, st2, ctx)
        (st0__, st3)
    }
  }

  def local(stmt: Stmt, st0: State, st1: State, ctx: Context): (State, State) = {
    stmt match {
      case Group(stmts) =>
        local(stmts, st0, st1, ctx)

      case Assume(Id(name), expr, typ) =>
        val (_expr, st2) = rval(expr, st0, st1)
        val x = st2(name) // XXX: WEIRD
        val eq = (x === _expr)
        val st3 = st2 and eq
        (st0, st3)

      case Atomic(None) =>
        (st0, st1)

      case Atomic(Some(expr)) =>
        val (_, st2) = rval(expr, st0, st1)
        (st0, st2)

      case Label(label, stmt) =>
        val (sr0, sr1) = branch.label(label, st0, st1, this)
        local(stmt, sr0, sr1, ctx)

      case Goto(label) =>
        val st2 = loop.goto(label, st0, st1, ctx.hyps, this)
        branch.goto(label, st0, st2, this)
        (st0, unreach(st2))

      case Return(None) =>
        val st2 = loop.return_(st0, st1, ctx.hyps, this)
        contract.leave(st2, this)
        (st0, unreach(st2))

      case Return(Some(res)) =>
        val st2 = loop.return_(st0, st1, ctx.hyps, this)
        val (_res, st3) = rval(res, st0, st2)
        contract.leave(st3, _res, this)
        (st0, unreach(st3))

      case Break =>
        val hyp :: _ = ctx.hyps
        loop.break(st0, st1, hyp, this)
        (st0, unreach(st1))

      case If(test, left, right) =>
        val (_test, st2) = rval_test(test, st0, st1)
        val (sa0, sa1) = local(left, st0, st2 and _test, ctx)
        val (sb0, sb1) = local(right, st0, st2 and !_test, ctx)
        branch.join(sa0, sa1, "if then", sb0, sb1, "if else", this)

      case While(test, body) =>
        val dont = Stmt.labels(body)

        val (inv, sum, si0, si1) = loop.enter(st0, st1, this)

        val (_test, si2) = rval_test(test, si0, si1)
        val sin = si2 and !_test
        val siy = si2 and _test

        val hyp = Hyp(inv, sum, si0, sin, siy, dont)

        loop.term(hyp, this)

        val (sb0, sb1) = local(body, si0, siy, hyp :: ctx)
        loop.iter(sb0, sb1, hyp, this)

        loop.leave(hyp, this)

      case _ =>
        korn.error("cannot execute as local statement: " + stmt)
    }
  }
}
