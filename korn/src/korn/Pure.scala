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

case class Var(name: String, typ: Sort, index: Option[Int] = None) extends Pure with Pure.x {
  def prime = Var(name + "@", typ, index)
  def fresh(index: Int) = Var(name, typ, Some(index))

  override def toString = {
    index match {
      case None        => name
      case Some(index) => name + index
    }
  }
}

object Var {
  def fresh(name: String, typ: Sort) = Var(name, typ, Some(Pure.next))
}

object Vars {
  def apply(names: List[String], types: List[Sort]) = {
    for ((name, typ) <- (names zip types))
      yield Var(name, typ)
  }
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

case class Ite(test: Prop, left: Pure, right: Pure) extends Pure {
  def free = test.free ++ left.free ++ right.free
  def rename(re: Map[Var, Var]) = Ite(test rename re, left rename re, right rename re)
  def subst(su: Map[Var, Pure]) = Ite(test subst su, left subst su, right subst su)
  override def toString = sexpr("ite", test, left, right)
}

sealed trait Prop {
  def ?(left: Pure, right: Pure) = Ite(this, left, right)

  def unary_!() = Not(this)
  def and(that: Prop) = And(this, that)
  def or(that: Prop) = Or(this, that)
  def ==>(that: Prop) = Imp(this, that)

  def free: Set[Var]
  def rename(re: Map[Var, Var]): Prop
  def subst(su: Map[Var, Pure]): Prop
}

object Prop {
  object lt extends binary("<")
  object le extends binary("<=")
  object gt extends binary(">")
  object ge extends binary(">=")

  class unary(val pred: String) {
    def unapply(prop: Prop) =
      prop match {
        case In(`pred`, List(arg)) => Some(arg)
        case _                     => None
      }

    def apply(arg: Pure) = {
      In(pred, List(arg))
    }
  }

  class binary(val pred: String) {
    def unapply(prop: Prop) =
      prop match {
        case In(`pred`, List(arg1, arg2)) => Some((arg1, arg2))
        case _                            => None
      }

    def apply(arg1: Pure, arg2: Pure) = {
      In(pred, List(arg1, arg2))
    }
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

case class Eq(left: Pure, right: Pure) extends Prop {
  def free = left.free ++ right.free
  def rename(re: Map[Var, Var]) = ???
  def subst(su: Map[Var, Pure]) = ???
  override def toString = sexpr("=", left, right)
}

case class In(pred: String, args: List[Pure]) extends Prop {
  def free = Set(args flatMap (_.free): _*)
  def rename(re: Map[Var, Var]) = ???
  def subst(su: Map[Var, Pure]) = ???
  override def toString = {
    if (args.isEmpty) pred
    else sexpr(pred :: args)
  }
}

case class Not(arg: Prop) extends Prop {
  def free = arg.free
  def rename(re: Map[Var, Var]) = ???
  def subst(su: Map[Var, Pure]) = ???
  override def toString = sexpr("not", arg)
}

case class And(arg1: Prop, arg2: Prop) extends Prop {
  def free = arg1.free ++ arg2.free
  def rename(re: Map[Var, Var]) = ???
  def subst(su: Map[Var, Pure]) = ???
  override def toString = sexpr("and", arg1, arg2)
}

case class Or(arg1: Prop, arg2: Prop) extends Prop {
  def free = arg1.free ++ arg2.free
  def rename(re: Map[Var, Var]) = ???
  def subst(su: Map[Var, Pure]) = ???
  override def toString = sexpr("or", arg1, arg2)
}

case class Imp(arg1: Prop, arg2: Prop) extends Prop {
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
