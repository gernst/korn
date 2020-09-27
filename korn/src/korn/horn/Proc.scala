package korn.horn

import korn.c._
import korn.smt._

import scala.collection.mutable

class Main(unit: Unit, name: String, params: List[Formal], locals: List[Formal], body: Stmt)
    extends Proc(unit, name, params, locals, body) {

  /** Main function has pre/postcondition true implicitly */
  override def enter(st: State) = st
  override def leave(st: State) {}
  override def leave(st: State, res: Pure) {}
}

class Proc(val unit: Unit, name: String, params: List[Formal], locals: List[Formal], body: Stmt) {
  import unit._
  import unit.sig._

  /** types of code identifiers (params and locals) */
  val env = mutable.Map[String, Sort]()
  var state = unit.state

  /** collect identifiers in scope and their types */
  val scope = params ++ locals
  val names = scope map (_.name)
  val types = scope map (_.typ)
  val sorts = types map (resolve(_))
  val sorts2 = sorts ++ sorts // signature of relational predicates

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

  def init() {
    for ((name, sort) <- (names zip sorts)) {
      env += (name -> sort)
      state += (name -> vr(name, sort))
    }
  }

  def run() {
    init()
    val st0 = enter(state.resetOrigin)
    val st1 = local(body, st0)
    leave(st1) // implicit return without value
  }

  def enter(st: State) = {
    val pre = pres(name)
    val prop = apply(pre, st.store)
    st and prop
  }

  def leave(st: State) {
    val (post, ret) = posts(name)

    val prop = if (ret.isEmpty) {
      apply(post, st.store)
    } else {
      // implicitly return 0
      apply(post, Pure.zero, st.store)
    }

    clause(st, prop, "post " + name)
  }

  def leave(st: State, res: Pure) {
    val (post, ret) = posts(name)
    korn.ensure(ret.nonEmpty, "return value given for " + name)
    val prop = apply(post, res, st.store)
    clause(st, prop, "post " + name)
  }

  def havoc(st: State) = {
    val vars = fresh(names zip sorts)
    st ++ (names zip vars)
  }

  def here(label: String): Pred = {
    newPred(label, sorts2)
  }

  def apply(pred: Pred, st0: Store): Prop = {
    val args0 = names map st0
    pred(args0)
  }

  def apply(pred: Pred, res: Pure, st0: Store): Prop = {
    val args0 = names map st0
    pred(args0 ++ List(res))
  }

  def apply(pred: Pred, st0: Store, st1: Store): Prop = {
    val args0 = names map st0
    val args1 = names map st1
    pred(args0 ++ args1)
  }

  def now(pred: Pred, st: State, reason: String) {
    val prop = apply(pred, st.origin, st.store)
    clause(st, prop, reason)
  }

  def from(pred: Pred): State = {
    val st0 = havoc(state)
    val st1 = st0.resetOrigin
    val prop = apply(pred, st1.origin, st1.store)
    st1 and prop
  }

  def join(st1: State, reason1: String, st2: State, reason2: String): State = {
    val pred = here($if.newLabel)
    now(pred, st1, reason1)
    now(pred, st2, reason2)
    from(pred)
  }

  def local(stmts: List[Stmt], st0: State): State = {
    stmts match {
      case Nil =>
        st0
      case first :: rest =>
        val st1 = local(first, st0)
        val st2 = local(rest, st1)
        st2
    }
  }

  def local(stmt: Stmt, st0: State): State = {
    stmt match {
      case Group(stmts) =>
        local(stmts, st0)

      case Assume(Id(name), expr, typ) =>
        val (_expr, st1) = rval(expr, st0)
        val x = st1(name) // XXX: WEIRD
        val eq = (x === _expr)
        val st2 = st1 and eq
        st2

      case Atomic(None) =>
        st0

      case Atomic(Some(expr)) =>
        val (_, st1) = rval(expr, st0)
        st1

      case Label(label, stmt) =>
        val pred = here($label.newLabel(label))
        now(pred, st0, "label " + label)
        val st1 = from(pred)
        local(stmt, st1)

      /* case Break =>
        korn.ensure(hyps.nonEmpty, "stray break")
        val st1 = exit(st0, true, "break")

        None // successor states not immediately reachable

      case Return(None) =>
        val st1 = exit(st0, false, "return")

        for ((cond, _) <- post) {
          result(cond, st1, "return " + name)
        }

        None

      case Return(Some(res)) =>
        val st1 = exit(st0, false, "return")
        val (_res, st2) = rval(res, st1)

        for ((cond, _) <- post) {
          result(cond, st2, _res, "return " + name)
        }

        None

      case Goto(label) if useHyp(label) =>
        val st1 = exit(st0, false, "goto")
        val pred = here("$" + name + "_" + label)
        now(pred, st1, "goto " + label)
        None

      case Goto(label) =>
        val pred = here("$" + name + "_" + label)
        now(pred, st0, "goto " + label)
        None */

      case If(test, left, right) =>
        val (_test, st) = rval_test(test, st0)
        val st1 = local(left, st and _test)
        val st2 = local(right, st and !_test)
        join(st1, "if then", st2, "if else")

      /* case While(test, body) =>
        val mod = Stmt.modifies(body)
        val dont = Stmt.labels(body)

        val inv = here($inv.newLabel)

        if (Main.invariants)
          now(inv, st0, "loop entry " + inv.name)

        val sti = if (Main.invariants) {
          from(inv)
        } else {
          ??? // any
        }

        val (_test, st1) = rval_test(test, sti)

        val sty = st1 and _test
        val stn = st1 and !_test

        def eval_sum(pred: Pred, st: State, st_ : State) = eval(pred, st, st_, mod)
        def eval_post(pred: Pred, st: State, st_ : State) = eval(pred, st_)

        val (sum, _eval) = if (Main.summaries) {
          (here($sum.newLabel, mod), eval_sum: Eval)
        } else {
          (here($sum.newLabel), eval_post: Eval)
        }

        /* base case: exit */
        val fin = _eval(sum, stn, stn)
        clause(stn, fin, "loop term " + sum.name)

        /* inductive case: loop once */
        val hyp = Hyp(sum, st0, sty, dont, _eval)

        val iter = withinLoop(hyp) {
          local(body, sty)
        }

        for (st_ <- iter) yield {
          if (Main.invariants)
            now(inv, st_, "forwards " + inv.name)

          val st2 = havoc(mod, st0)
          val prem = _eval(sum, st_, st2)
          val concl = _eval(sum, sty, st2)
          clause(st_ and prem, concl, "backwards " + sum.name)

          val st3 = st2 and _eval(sum, st0, st2)
          st3
        } */
    }
  }
}
