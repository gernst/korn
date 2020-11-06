package korn.smt

case class Clause(path: List[Prop], head: Prop, reason: String) {
  def free = head.free ++ path.flatMap(_.free)
  override def toString = path.mkString(", ") + " ==> " + head + " # " + reason
}

case class Pred(name: String, types: List[Sort]) {
  def apply(args: List[Pure]) = Prop.app(this, args)
  def apply(args: List[Pure], res: Pure) = Prop.app(this, args ++ List(res))
  override def toString = name
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
  def <=>(that: Prop) = Prop.imp(this, that)

  def free: Set[Var]
  def rename(re: Map[Var, Var]): Prop
  def subst(su: Map[Var, Pure]): Prop
}

object Prop {
  object lt extends binary(Pred.lt)
  object le extends binary(Pred.le)
  object gt extends binary(Pred.gt)
  object ge extends binary(Pred.ge)

  val ands: List[Prop] => Prop = {
    case Nil       => True
    case List(arg) => arg
    case args      => args reduce Prop.and
  }

  val ors: List[Prop] => Prop = {
    case Nil       => False
    case List(arg) => arg
    case args      => args reduce Prop.or
  }

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
    def rename(re: Map[Var, Var]) = Prop.truth(arg rename re)
    def subst(su: Map[Var, Pure]) = Prop.truth(arg subst su)
    override def toString = sexpr("not", sexpr("=", arg, 0))
  }

  case class eqn(left: Pure, right: Pure) extends Prop {
    def free = left.free ++ right.free
    def rename(re: Map[Var, Var]) = Prop.eqn(left rename re, right rename re)
    def subst(su: Map[Var, Pure]) = Prop.eqn(left subst su, right subst su)
    override def toString = sexpr("=", left, right)
  }

  case class app(pred: Pred, args: List[Pure]) extends Prop {
    def free = Set(args flatMap (_.free): _*)
    def rename(re: Map[Var, Var]) = Prop.app(pred, args map (_ rename re))
    def subst(su: Map[Var, Pure]) = Prop.app(pred, args map (_ subst su))

    override def toString = {
      if (args.isEmpty) pred.toString
      else sexpr(pred :: args)
    }
  }

  case class not(arg: Prop) extends Prop {
    def free = arg.free
    def rename(re: Map[Var, Var]) = Prop.not(arg rename re)
    def subst(su: Map[Var, Pure]) = Prop.not(arg subst su)

    override def toString = {
      arg match {
        case truth(arg) => sexpr("=", arg, 0)
        case _          => sexpr("not", arg)
      }
    }
  }

  case class and(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = Prop.and(arg1 rename re, arg2 rename re)
    def subst(su: Map[Var, Pure]) = Prop.and(arg1 subst su, arg2 subst su)
    override def toString = sexpr("and", arg1, arg2)
  }

  case class or(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = Prop.or(arg1 rename re, arg2 rename re)
    def subst(su: Map[Var, Pure]) = Prop.or(arg1 subst su, arg2 subst su)
    override def toString = sexpr("or", arg1, arg2)
  }

  case class imp(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = Prop.imp(arg1 rename re, arg2 rename re)
    def subst(su: Map[Var, Pure]) = Prop.imp(arg1 subst su, arg2 subst su)
    override def toString = sexpr("=>", arg1, arg2)
  }

  case class eqv(arg1: Prop, arg2: Prop) extends Prop {
    def free = arg1.free ++ arg2.free
    def rename(re: Map[Var, Var]) = Prop.eqv(arg1 rename re, arg2 rename re)
    def subst(su: Map[Var, Pure]) = Prop.eqv(arg1 subst su, arg2 subst su)
    override def toString = sexpr("=", arg1, arg2)
  }

  case class bind(quant: Quant, params: List[Param], body: Prop) extends Prop with Pure.bind[Prop] {
    def bound = Set(params map (_.x): _*)
    def free = body.free -- bound
    def rename(a: Map[Var, Var], re: Map[Var, Var]) = Prop.bind(quant, params map (_ rename a), body rename re)
    def subst(a: Map[Var, Var], su: Map[Var, Pure]) = Prop.bind(quant, params map (_ rename a), body subst su)
    override def toString = sexpr(quant, sexpr(params), body)
  }
}

sealed trait Quant {
  def apply(params: List[Param], body: Prop) = {
    Prop.bind(this, params, body)
  }
}

case object All extends Quant {
  override def toString = "forall"
}

case object Ex extends Quant {
  override def toString = "exists"
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
