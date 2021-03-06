package korn.horn

import korn.smt._

object State {
  val empty = State(Nil, Map())
}

object Context {
  def init(st: State) = Context(st, Nil, Nil)
}

case class Hyp(inv: Step, sum: Step, st1: State, si0: State, sin: State, siy: State, dont: Set[String])

case class Context(entry: State, hyps: List[Hyp], switches: List[Pure]) {
  def ::(hyp: Hyp) = copy(hyps = hyp :: hyps)
  def ::(sw: Pure) = copy(switches = sw :: switches)
}

case class State(path: List[Pure], store: Store) extends (String => Val) {
  def and(that: Pure): State = {
    that match {
      case Pure.and(phi, psi) =>
        this and psi and phi
      case _ =>
        copy(path = that :: path)
    }
  }

  def maybePrune(pred: Pred, keep: Boolean) = {
    copy(path = path filter {
      case Pure.app(`pred`, _) => keep
      case _                   => true
    })
  }

  def contains(name: String) = store contains name
  def apply(name: String) = store(name)
  def apply(names: List[String]) = names map store
  def +(that: (String, Val)) = copy(store = store + that)
  def ++(that: Iterable[(String, Val)]) = copy(store = store ++ that)

  override def toString = "State(" + path + "," + store + ")"
}