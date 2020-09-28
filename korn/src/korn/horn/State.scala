package korn.horn

import korn.smt._

case class State(path: List[Prop], store: Store) {
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
      case _ => true
    })
  }

  def contains(name: String) = store contains name
  def apply(name: String) = store(name)
  def apply(names: List[String]) = names map store
  def +(that: (String, Pure)) = copy(store = store + that)
  def ++(that: Iterable[(String, Pure)]) = copy(store = store ++ that)
}

object State {
  val empty = State(Nil, Map())
}