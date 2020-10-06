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

  def maybePrune(rel: Rel, keep: Boolean) = {
    val pred = rel.pred
    copy(path = path filter {
      case Prop.app(`pred`, _) => keep
      case _                   => true
    })
  }

  def contains(name: String) = store contains name
  def apply(name: String) = store(name)
  def apply(names: List[String]) = names map store
  def +(that: (String, Pure)) = copy(store = store + that)
  def ++(that: Iterable[(String, Pure)]) = copy(store = store ++ that)
}

case class Rel(pred: Pred, in: List[String], out: List[String]) {
  def name = pred.toString
  def apply(st0: State, st1: State) = pred(st0(in) ++ st1(in))
  def apply(st0: State, st1: State, ret: Pure) = pred(st0(in) ++ st1(in) ++ List(ret))
}

case class Hyp(inv: Rel, sum: Rel, si0: State, sin: State, siy: State, dont: Set[String])

case class Context(hyps: List[Hyp], switches: List[Pure]) {
  def ::(hyp: Hyp) = copy(hyps = hyp :: hyps)
  def ::(sw: Pure) = copy(switches = sw :: switches)
}
