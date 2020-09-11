package korn

sealed trait Sort {}

object Sort {
  val bool = base("Bool")
  val int = base("Int")

  case class base(name: String) extends Sort {
    override def toString = name
  }

  case class pointer(elem: Sort) extends Sort {
    override def toString = sexpr("Pointer", elem)
  }

  case class array(dom: Sort, ran: Sort) extends Sort {
    override def toString = sexpr("Array", dom, ran)
  }
}

sealed trait Pure extends Pure.term {
  def ?(left: Pure, right: Pure) = Pure.ite(this, left, right)

  def ^(that: Pure) = Pure.exp(this, that)
  def *(that: Pure) = Pure.times(this, that)
  def /(that: Pure) = Pure.divBy(this, that)
  def %(that: Pure) = Pure.mod(this, that)

  def unary_+ = this
  def unary_- = Pure.uminus(this)
  def +(that: Pure) = Pure.plus(this, that)
  def -(that: Pure) = Pure.minus(this, that)

  def ===(that: Pure) = Pure._eq(this, that)
  def !==(that: Pure) = !(this === that)

  def <=(that: Pure) = Pure.le(this, that)
  def <(that: Pure) = Pure.lt(this, that)
  def >=(that: Pure) = Pure.ge(this, that)
  def >(that: Pure) = Pure.gt(this, that)

  def unary_!() = Pure.not(this)
  def and(that: Pure) = Pure.and(this, that)
  def or(that: Pure) = Pure.or(this, that)
  def ==>(that: Pure) = Pure.imp(this, that)

  def select(index: Pure) = Pure.select(this, index)
  def store(index: Pure, value: Pure) = Pure.store(this, index, value)
}

object Pure extends Counter with Alpha[Pure, Var] {
  object ite extends ternary("ite")

  object exp extends binary("expr")
  object times extends binary("*")
  object divBy extends binary("div")
  object mod extends binary("mod")

  object uminus extends unary("-")
  object plus extends binary("+")
  object minus extends binary("-")

  object _eq extends binary("=")
  object lt extends binary("<")
  object le extends binary("<=")
  object gt extends binary(">")
  object ge extends binary(">=")

  object not extends unary("not")
  object and extends binary("and")
  object or extends binary("or")
  object imp extends binary("=>")

  object select extends binary("select")
  object store extends ternary("store")

  class unary(val fun: String) {
    def unapply(pure: Pure) =
      pure match {
        case App(`fun`, List(arg)) => Some(arg)
        case _                     => None
      }

    def apply(arg: Pure) = {
      App(fun, List(arg))
    }
  }

  class binary(val fun: String) {
    def unapply(pure: Pure) =
      pure match {
        case App(`fun`, List(arg1, arg2)) => Some((arg1, arg2))
        case _                            => None
      }

    def apply(arg1: Pure, arg2: Pure) = {
      App(fun, List(arg1, arg2))
    }

    def flatten(expr: Pure): List[Pure] =
      expr match {
        case App(`fun`, List(arg1, arg2)) =>
          flatten(arg1) ++ flatten(arg2)
        case _ =>
          List(expr)
      }
  }

  class ternary(val fun: String) {
    def unapply(pure: Pure) =
      pure match {
        case App(`fun`, List(arg1, arg2, arg3)) => Some((arg1, arg2, arg3))
        case _                                  => None
      }

    def apply(arg1: Pure, arg2: Pure, arg3: Pure): Pure = {
      App(fun, List(arg1, arg2, arg3))
    }
  }
}

case class Num(value: Int) extends Pure {
  def free = Set()
  def rename(re: Map[Var, Var]) = this
  def subst(su: Map[Var, Pure]) = this
  override def toString = value.toString
}

object Num {
  val zero = Num(0)
  val one = Num(1)
}

case class Var(name: String, index: Option[Int] = None) extends Pure with Pure.x {
  def fresh(index: Int) = Var(name, Some(index))

  override def toString = {
    index match {
      case None        => name
      case Some(index) => name + index
    }
  }
}

object Var {
  def fresh(name: String) = Var(name, Some(Pure.next))
}

case class App(fun: String, args: List[Pure]) extends Pure {
  def free = Set(args flatMap (_.free): _*)
  def rename(re: Map[Var, Var]) = App(fun, args map (_ rename re))
  def subst(su: Map[Var, Pure]) = App(fun, args map (_ subst su))

  override def toString = {
    if (args.isEmpty) fun
    else sexpr(fun :: args)
  }
}

sealed trait Prop {
  def free: Set[Var]
}

case class Eq(left: Pure, right: Pure) extends Prop {
  def free = left.free ++ right.free
}

case class In(pred: String, args: List[Pure]) extends Prop {
  def free = Set(args flatMap (_.free): _*)
}

case class Not(arg: Prop) extends Prop {
  def free = arg.free
}

case class And(arg1: Prop, arg2: Prop) extends Prop {
  def free = arg1.free ++ arg2.free
}

case class Or(arg1: Prop, arg2: Prop) extends Prop {
  def free = arg1.free ++ arg2.free
}

case class Imp(arg1: Prop, arg2: Prop) extends Prop {
  def free = arg1.free ++ arg2.free
}

case class Eqv(arg1: Prop, arg2: Prop) extends Prop {
  def free = arg1.free ++ arg2.free
}
