package korn.horn

import korn.smt._

object State {
  val empty = State(Nil, Map())
}

object Context {
  val empty = Context(Nil, Nil)
}

case class State(path: List[Prop], store: Store) extends (String => Pure) {
  def and(that: Prop): State = {
    that match {
      case Prop.and(phi, psi) =>
        this and psi and phi
      case _ =>
        copy(path = that :: path)
    }
  }

  def without(pred: Pred) = {
    copy(path = path filter {
      case Prop.app(`pred`, _) => false
      case _                   => true
    })
  }

  def contains(name: String) = store contains name
  def apply(name: String) = store(name)
  def apply(names: List[String]) = names map store
  def +(that: (String, Pure)) = copy(store = store + that)
  def ++(that: Iterable[(String, Pure)]) = copy(store = store ++ that)
}

case class Hyp(inv: Pred, sum: Pred, si0: State, sin: State, siy: State, dont: Set[String])

case class Context(hyps: List[Hyp], switches: List[Pure]) {
  def ::(hyp: Hyp) = copy(hyps = hyp :: hyps)
  def ::(sw: Pure) = copy(switches = sw :: switches)
}
