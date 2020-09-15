package korn

case class Pred(name: String, types: List[Sort]) {
  def apply(args: List[Pure]) = Prop.app(this, args)
  def apply(args: List[Pure], res: Pure) = Prop.app(this, args ++ List(res))
}

object Pred {
  val le = Pred("<=", List(Sort.int, Sort.int))
  val lt = Pred("<", List(Sort.int, Sort.int))
  val ge = Pred(">=", List(Sort.int, Sort.int))
  val gt = Pred(">", List(Sort.int, Sort.int))
}

sealed trait Prop {
  def ?(left: Pure, right: Pure) = Pure.ite(this, left, right)

  def unary_!() = {
    this match {
      case Prop.not(that) => that
      case _              => Prop.not(this)
    }
  }

  def and(that: Prop) = Prop.and(this, that)
  def or(that: Prop) = Prop.or(this, that)
  def ==>(that: Prop) = Prop.imp(this, that)

  def free: Set[Var]
  def rename(re: Map[Var, Var]): Prop
  def subst(su: Map[Var, Pure]): Prop
}

object Prop {
  object lt extends binary(Pred.lt)
  object le extends binary(Pred.le)
  object gt extends binary(Pred.gt)
  object ge extends binary(Pred.ge)

  class unary(val pred: Pred) {
    def unapply(prop: Prop) =
      prop match {
        case app(`pred`, List(arg)) => Some(arg)
        case _                      => None
      }

    def apply(arg: Pure) = {
      app(pred, List(arg))
    }
  }

  class binary(val pred: Pred) {
    def unapply(prop: Prop) =
      prop match {
        case app(`pred`, List(arg1, arg2)) => Some((arg1, arg2))
        case _                             => None
      }

    def apply(arg1: Pure, arg2: Pure) = {
      app(pred, List(arg1, arg2))
    }
  }

  case class truth(arg: Pure) extends Prop {
    def free = arg.free
    def rename(re: Map[Var, Var]) = truth(arg rename re)
    def subst(su: Map[Var, Pure]) = truth(arg subst su)
  }

  case class eqn(left: Pure, right: Pure) extends Prop {
    def free = left.free ++ right.free
    def rename(re: Map[Var, Var]) = eqn(left rename re, right rename re)
    def subst(su: Map[Var, Pure]) = eqn(left subst su, right subst su)
    override def toString = sexpr("=", left, right)
  }

  case class app(pred: Pred, args: List[Pure]) extends Prop {
    def free = Set(args flatMap (_.free): _*)
    def rename(re: Map[Var, Var]) = app(pred, args map (_ rename re))
    def subst(su: Map[Var, Pure]) = app(pred, args map (_ subst su))

    override def toString = {
      if (args.isEmpty) pred.toString
      else sexpr(pred :: args)
    }
  }

  case class not(arg: Prop) extends Prop {
    def free = arg.free
    def rename(re: Map[Var, Var]) = ???
    def subst(su: Map[Var, Pure]) = ???
    override def toString = sexpr("not", arg)
  }

  case class and(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = ???
    def subst(su: Map[Var, Pure]) = ???
    override def toString = sexpr("and", arg1, arg2)
  }

  case class or(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = ???
    def subst(su: Map[Var, Pure]) = ???
    override def toString = sexpr("or", arg1, arg2)
  }

  case class imp(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = ???
    def subst(su: Map[Var, Pure]) = ???
    override def toString = sexpr("=>", arg1, arg2)
  }

  case class Eqv(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = ???
    def subst(su: Map[Var, Pure]) = ???
    override def toString = sexpr("=", arg1, arg2)
  }

}

case object True extends Prop {
  def free = Set()
  def rename(re: Map[Var, Var]) = this
  def subst(su: Map[Var, Pure]) = this
  override def toString = "true"
}

case object False extends Prop {
  def free = Set()
  def rename(re: Map[Var, Var]) = this
  def subst(su: Map[Var, Pure]) = this
  override def toString = "false"
}
