package korn.horn

import korn.c._
import korn.smt._

import scala.collection.mutable

case class Hyp(inv: Pred, sum: Pred, stz: State, sty: State, dont: Set[String])

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
    val st2 = local(body, st0, st1)
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

  def generalize(pred: Pred, st1: State, reason: String): (State, State) = {
    now(pred, st1, st1, reason)
    val st0 = havoc // new origin
    val st2 = st1 ++ havoc
    (st2, from(pred, st2))
  }

  def from(pred: Pred, st0: State): State = {
    val st2 = st0 ++ havoc // new state
    val prop = apply(pred, internal.names, st0, st2)
    st2 and prop
  }

  def join(st0: State, st1: State, reason1: String, st2: State, reason2: String): State = {
    val pred = here($if.newLabel)
    now(pred, st0, st1, reason1)
    now(pred, st0, st2, reason2)
    from(pred, st0)
  }

  def unreach(st: State) = {
    st and False
  }

  def local(stmts: List[Stmt], st0: State, st1: State): State = {
    stmts match {
      case Nil =>
        st1
      case first :: rest =>
        val st2 = local(first, st0, st1)
        val st3 = local(rest, st0, st2)
        st3
    }
  }

  def local(stmt: Stmt, st0: State, st1: State): State = {
    stmt match {
      case Group(stmts) =>
        local(stmts, st0, st1)

      case Assume(Id(name), expr, typ) =>
        val (_expr, st2) = rval(expr, st0, st1)
        val x = st2(name) // XXX: WEIRD
        val eq = (x === _expr)
        val st3 = st2 and eq
        st3

      case Atomic(None) =>
        st1

      case Atomic(Some(expr)) =>
        val (_, st2) = rval(expr, st0, st1)
        st2

      case Label(label, stmt) =>
        val pred = here($label.newLabel(label))
        val (stz, st2) = generalize(pred, st1, "label " + label)
        local(stmt, stz, st2)

      case Goto(label) =>
        val st2 = loop.goto(label, st1, this)
        val pred = here("$" + name + "_" + label)
        now(pred, st0, st2, "goto " + label)
        unreach(st1)

      case Return(None) =>
        val st2 = loop.return_(st1, this)
        contract.leave(st2, this)
        unreach(st2)

      case Return(Some(res)) =>
        val st2 = loop.return_(st1, this)
        val (_res, st3) = rval(res, st0, st2)
        contract.leave(st3, _res, this)
        unreach(st3)

      case Break =>
        loop.break(st1, this)
        unreach(st1)

      case If(test, left, right) =>
        val (_test, st) = rval_test(test, st0, st1)
        val sty = local(left, st0, st and _test)
        val stn = local(right, st0, st and !_test)
        join(st0, sty, "if then", stn, "if else")

      case While(test, body) =>
        val mod = Stmt.modifies(body)
        val dont = Stmt.labels(body)

        val inv = here($inv.newLabel)
        val sum = here($sum.newLabel)

        // generalize state to come from the invariant
        // stz is the new origin at the loop head
        // sti is an arbitrary state that satisfies the invariant wrt. stz
        val (stz, sti) = generalize(inv, st1, "loop entry " + inv.name)

        // evaluate test, and branch into states sty, stn
        val (_test, st) = rval_test(test, stz, sti)
        val sty = st and _test
        val stn = st and !_test

        // step case (iterate once):
        // execute body to state st_ and re-establish invariant wrt. loop origin stz
        val hyp = Hyp(inv, sum, stz, sty, dont)

        withinLoop(hyp) {
          // base case (terminate loop):
          // establish summary for going round the loop
          // from negated test and invariant in stn
          // now(sum, stz, stn, "loop term " + sum.name)
          loop.term(stn, this)

          val st_ = local(body, stz, sty)
          loop.iter(st_, this)

          // the result after the loop is another arbitrary state
          // that satisfies the sumary wrt. st1
          val st2 = st1 ++ havoc
          val prop = apply(sum, internal.names, st1, st2)
          val st3 = st2 and prop
          st3
        }
    }
  }
}
