package korn.horn

import korn.c._
import korn.smt._

import scala.collection.mutable

class Main(unit: Unit, name: String, params: List[Formal], locals: List[Formal], body: Stmt)
    extends Proc(unit, name, params, locals, body) {
  import unit._

  /** Main function has pre/postcondition true implicitly */
  override def enter(st0: Origin) = state ++ st0
  override def leave(st: State) {}
  override def leave(st: State, res: Pure) {}
}

class Proc(val unit: Unit, name: String, params: List[Formal], locals: List[Formal], body: Stmt) {
  import unit._
  import unit.sig._

  object loops extends Loops(this)

  /** types of code identifiers (params and locals) */
  val env = mutable.Map[String, Sort]()

  /** collect identifiers in scope and their types */
  object external extends Scope(params)
  object internal extends Scope(params ++ locals)
  // val sorts2 = sorts ++ sorts // signature of relational predicates

  var hyps: List[Loop] = List(loops.default)

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
    // var st = unit.state
    var st0: Origin = Map()

    for ((name, sort) <- internal.sig) {
      env += (name -> sort)
      st0 += (name -> vr(name, sort))
    }

    st0
  }

  def run() {
    val st0 = init()
    val st1 = enter(st0)
    val st2 = local(body, st0, st1)
    leave(st2) // implicit return without value
  }

  def enter(st0: Origin) = {
    val pre = pres(name)
    val prop = apply(pre, external.names, st0)
    state ++ st0 and prop
    // State(List(prop), st0)
  }

  def leave(st: State) {
    val (post, ret) = posts(name)

    val prop = if (ret.isEmpty) {
      apply(post, external.names, st.store)
    } else {
      // implicitly return 0
      apply(post, external.names, Pure.zero, st.store)
    }

    clause(st, prop, "post " + name)
  }

  def leave(st: State, res: Pure) {
    val (post, ret) = posts(name)
    korn.ensure(ret.nonEmpty, "return value given for " + name)
    val prop = apply(post, external.names, res, st.store)
    clause(st, prop, "post " + name)
  }

  def withinLoop[A](loop: Loop)(thunk: => A) = {
    try {
      hyps = loop :: hyps; thunk
    } finally {
      hyps = hyps.tail
    }
  }

  def havoc: Origin = {
    val vars = fresh(internal.sig)
    Map(internal.names zip vars: _*)
  }

  def here(label: String): Pred = {
    val sorts = internal.sorts ++ internal.sorts
    newPred(label, sorts)
  }

  def apply(pred: Pred, names: List[String], st0: Store): Prop = {
    val args0 = names map st0
    pred(args0)
  }

  def apply(pred: Pred, names: List[String], res: Pure, st0: Store): Prop = {
    val args0 = names map st0
    pred(args0 ++ List(res))
  }

  def apply(pred: Pred, names: List[String], st0: Store, st1: Store): Prop = {
    val args0 = names map st0
    val args1 = names map st1
    pred(args0 ++ args1)
  }

  def now(pred: Pred, st0: Store, st: State, reason: String) {
    val prop = apply(pred, internal.names, st0, st.store)
    clause(st, prop, reason)
  }

  def generalize(pred: Pred, st1: State, reason: String): (Origin, State) = {
    now(pred, st1.store, st1, reason)
    val st0 = havoc // new origin
    (st0, from(pred, st0, st1))
  }

  def from(pred: Pred, st0: Origin, st1: State): State = {
    val st2 = havoc // new state
    val prop = apply(pred, internal.names, st0, st2)
    st1 ++ st2 and prop
    // State(List(prop), st1)
  }

  def join(st0: Origin, st1: State, reason1: String, st2: State, reason2: String): State = {
    val pred = here($if.newLabel)
    now(pred, st0, st1, reason1)
    now(pred, st0, st2, reason2)
    from(pred, st0, state)
  }

  def unreach(st: State) = {
    st and False
  }

  def local(stmts: List[Stmt], st0: Origin, st1: State): State = {
    stmts match {
      case Nil =>
        st1
      case first :: rest =>
        val st2 = local(first, st0, st1)
        val st3 = local(rest, st0, st2)
        st3
    }
  }

  def local(stmt: Stmt, st0: Origin, st1: State): State = {
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
        val loop :: _ = hyps
        val st2 = loop.goto(label, st1)
        val pred = here("$" + name + "_" + label)
        now(pred, st0, st2, "goto " + label)
        unreach(st1)

      case Return(None) =>
        val loop :: _ = hyps
        val st2 = loop.return_(st1)
        leave(st2)
        unreach(st2)

      case Return(Some(res)) =>
        val loop :: _ = hyps
        val st2 = loop.return_(st1)
        val (_res, st3) = rval(res, st0, st2)
        leave(st3, _res)
        unreach(st3)

      case Break =>
        val loop :: _ = hyps
        korn.ensure(loop != loops.default, "stray break")
        loop.break(st1)
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
        val hyp = if(korn.Main.summaries) {
            loops.sum(inv, sum, stz, sty, dont, korn.Main.minimal)
        } else {
            loops.inv(inv, sum, stz)
        }

        // base case (terminate loop):
        // establish summary for going round the loop
        // from negated test and invariant in stn
        // now(sum, stz, stn, "loop term " + sum.name)
        hyp.term(stn)

        val st_ = withinLoop(hyp) { local(body, stz, sty) }
        hyp.iter(st_)

        // the result after the loop is another arbitrary state
        // that satisfies the sumary wrt. loop origin stz
        from(sum, stz, st1)
    }
  }
}
