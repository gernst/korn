package korn

object Alpha {
  trait term[E, V <: E] {
    this: E =>
    def free: Set[V]
    def rename(re: Map[V, V]): E
    def subst(su: Map[V, E]): E
    
    def subst(v: V, e: E): E = {
      val su = Map(v -> e)
      subst(su)
    }
  }

  trait x[E, V <: E] extends term[E, V] {
    this: V =>
    def fresh(index: Int): V
    def free = Set(this)
    def rename(re: Map[V, V]) = re.getOrElse(this, this)
    def subst(su: Map[V, E]) = su.getOrElse(this, this)
  }
}

trait Alpha[E <: Alpha.term[E, V], V <: E with Alpha.x[E, V]] {
  context: Counter =>

  type term = Alpha.term[E, V]
  type x = Alpha.x[E, V]

  trait bind[A] {
    def bound: Set[V]

    def rename(a: Map[V, V], re: Map[V, V]): A
    def subst(a: Map[V, V], su: Map[V, E]): A

    def avoid(xs: Set[V]) = {
      val captured = bound & xs
      context.fresh(captured)
    }

    def refresh = {
      val xs = bound
      val alpha = avoid(xs)
      rename(alpha, alpha)
    }

    def rename(re: Map[V, V]): A = {
      val xs = context.free(re)
      val alpha = avoid(xs)
      rename(alpha, re -- bound ++ alpha)
    }

    def subst(su: Map[V, E]): A = {
      val xs = context.free(su)
      val alpha = avoid(xs)
      subst(alpha, su -- bound ++ alpha)
    }
  }

  def id(xs: Iterable[V]): Map[V, V] = {
    val ys = xs map (x => (x, x))
    ys.toMap
  }

  def fresh(x: V) = {
    x fresh next
  }

  def fresh(xs: Iterable[V]): Map[V, V] = {
    val ys = xs map (x => (x, x fresh next))
    ys.toMap
  }

  def free(xs: Map[V, E]): Set[V] = {
    val ys = xs.values flatMap (_.free)
    ys.toSet
  }

  def subst[B <: E](xs: (V, B)*): Map[V, B] = {
    xs.toMap
  }

  def subst[B <: E](xs: Iterable[(V, B)]): Map[V, B] = {
    xs.toMap
  }

  def subst[B <: E](xs: Iterable[V], ys: Iterable[B]): Map[V, B] = {
    assert(xs.size == ys.size)
    val zs = (xs zip ys)
    zs.toMap
  }

  def compose(inner: Map[V, E], outer: Map[V, E]) = {
    val updated = inner map {
      case (x, e) => (x, e subst outer)
    }
    updated ++ outer
  }
}