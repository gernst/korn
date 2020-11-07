package korn.horn

import korn.smt._

object State {
  val empty = State(Nil, Map())
}

object Context {
  val empty = Context(Nil, Nil)
}

case class State(path: List[Pure], store: Store) extends (String => Val) {
  def and(that: Val): State = {
    ???
  }

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
}

case class Hyp(inv: Pred, sum: Pred, si0: State, sin: State, siy: State, dont: Set[String])

case class Context(hyps: List[Hyp], switches: List[Pure]) {
  def ::(hyp: Hyp) = copy(hyps = hyp :: hyps)
  def ::(sw: Pure) = copy(switches = sw :: switches)
}
