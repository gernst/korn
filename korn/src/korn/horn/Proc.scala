package korn.horn

import korn.c._
import korn.smt._

import scala.collection.mutable

case class Hyp(inv: Pred, sum: Pred, st0: State, stn: State, sty: State, dont: Set[String])

class Proc(
    val unit: Unit,
    val name: String,
    params: List[Formal],
    locals: List[Formal],
    body: Stmt,
    contract: Contract,
    loop: Loop) {
  import unit._
  import unit.sig._

  /** types of code identifiers (params and locals) */
  val env = mutable.Map[String, Sort]()

  /** collect identifiers in scope and their types */
  object external extends Scope(params)
  object internal extends Scope(params ++ locals)

  var hyps: List[Hyp] = Nil

  object eval extends unit.eval.scoped(this)
  import eval._

  object $if extends korn.Counter {
    def newLabel = "$" + name + "_if" + next
  }

  object $inv extends korn.Counter {
    def newLabel = "$" + name + "_inv" + next
  }

  object $sum extends korn.Counter {
    def newLabel = "$" + name + "_sum" + next
  }

  object $label {
    def newLabel(label: String) = "$" + name + "_" + label
  }

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
    val (_, st2) = local(body, st0, st1)
    contract.leave(st2, this) // implicit return without value
  }

  def withinLoop[A](hyp: Hyp)(thunk: => A) = {
    try {
      hyps = hyp :: hyps; thunk
    } finally {
      hyps = hyps.tail
    }
  }

  def clause(st: State, phi: Prop, reason: String) {
    val f = (st.path contains False)
    val t = (st.path contains phi) || (phi == True)

    if (!t && !f)
      clauses += Clause(st.path, phi, reason)
  }

  def goal(st: State, phi: Prop, reason: String) {
    clause(st and !phi, False, reason)
  }

  def havoc: Store = {
    val vars = fresh(internal.sig)
    Map(internal.names zip vars: _*)
  }

  def arbitrary = {
    State(Nil, havoc)
  }

  def here(label: String): Pred = {
    val sorts = internal.sorts ++ internal.sorts
    newPred(label, sorts)
  }

  def apply(pred: Pred, names: List[String], st0: State): Prop = {
    pred(st0(names))
  }

  def apply(pred: Pred, names: List[String], res: Pure, st0: State): Prop = {
    pred(st0(names) ++ List(res))
  }

  def apply(pred: Pred, names: List[String], st0: State, st1: State): Prop = {
    pred(st0(names) ++ st1(names))
  }

  def now(pred: Pred, st0: State, st: State, reason: String) {
    val prop = apply(pred, internal.names, st0, st)
    clause(st, prop, reason)
  }

  def from(pred: Pred, st0: State): State = {
    val st1 = st0 ++ havoc // new state
    val prop = apply(pred, internal.names, st0, st1)
    st1 and prop
  }

  def from(pred: Pred): (State, State) = {
    val st0 = arbitrary
    (st0, from(pred, st0))
  }

  def join(st0: State, sa1: State, ra: String, sb1: State, rb: String): State = {
    val pred = here($if.newLabel)
    now(pred, st0, sa1, ra)
    now(pred, st0, sb1, rb)
    from(pred, st0)
  }

  def join(
      sa0: State,
      sa1: State,
      ra: String,
      sb0: State,
      sb1: State,
      rb: String): (State, State) = {
    val pred = here($if.newLabel)
    now(pred, sa0, sa1, ra)
    now(pred, sb0, sb1, rb)
    from(pred)
  }

  def unreach(st: State) = {
    st and False
  }

  def local(stmts: List[Stmt], st0: State, st1: State): (State, State) = {
    stmts match {
      case Nil =>
        (st0, st1)
      case first :: rest =>
        val (st0_, st2) = local(first, st0, st1)
        val (st0__, st3) = local(rest, st0_, st2)
        (st0__, st3)
    }
  }

  def local(stmt: Stmt, st0: State, st1: State): (State, State) = {
    stmt match {
      case Group(stmts) =>
        local(stmts, st0, st1)

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
        val pred = here($label.newLabel(label))
        now(pred, st0, st1, "label " + label)
        // ensure the path comes from some arbitrary origin sr0
        // such that pred(sr0, sr1)
        val (sr0, sr1) = from(pred)
        local(stmt, sr0, sr1)

      case Goto(label) =>
        val st2 = loop.goto(label, st1, this)
        val pred = here($label.newLabel(label))
        // Note: using st0 here bridges the correct origin
        //       wrt. labels for non-local forward control-flow inside a loop,
        //       alternatively fix the origin here as st2
        //       (would that be better for non-local loop entries?)
        now(pred, st0, st2, "goto " + label)
        (st0, unreach(st2))

      case Return(None) =>
        val st2 = loop.return_(st1, this)
        contract.leave(st2, this)
        (st0, unreach(st2))

      case Return(Some(res)) =>
        val st2 = loop.return_(st1, this)
        val (_res, st3) = rval(res, st0, st2)
        contract.leave(st3, _res, this)
        (st0, unreach(st3))

      case Break =>
        loop.break(st1, this)
        (st0, unreach(st1))

      case If(test, left, right) =>
        val (_test, st) = rval_test(test, st0, st1)
        val (sa0, sa1) = local(left, st0, st and _test)
        val (sb0, sb1) = local(right, st0, st and !_test)
        join(sa0, sa1, "if then", sb0, sb1, "if else")

      case While(test, body) =>
        val dont = Stmt.labels(body)

        val inv = here($inv.newLabel)
        val sum = here($sum.newLabel)

        val (si0, si1) = from(inv)

        val (_test, si2) = rval_test(test, si0, si1)

        val sin = si2 and !_test
        now(sum, si0, sin, "loop term " + sum.name)

        val siy = si2 and _test
        val (sb0, sb1) = local(body, si0, siy)
        now(inv, sb0, sb1, "forwards " + inv.name)

        val st2 = from(sum, st0)
        (st0, st2)
    }
  }
}
