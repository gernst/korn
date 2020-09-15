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

case class Fun(name: String, args: List[Sort], ret: Sort) {
  override def toString = name
}

object Fun {
  val exp = Fun("^", List(Sort.int, Sort.int), Sort.int)
  val times = Fun("*", List(Sort.int, Sort.int), Sort.int)
  val divBy = Fun("/", List(Sort.int, Sort.int), Sort.int)
  val mod = Fun("%", List(Sort.int, Sort.int), Sort.int)

  val uminus = Fun("-", List(Sort.int), Sort.int)
  val plus = Fun("+", List(Sort.int, Sort.int), Sort.int)
  val minus = Fun("-", List(Sort.int, Sort.int), Sort.int)
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

  def ===(that: Pure) = Prop.eqn(this, that)
  def !==(that: Pure) = !(this === that)

  def <=(that: Pure) = Prop.le(this, that)
  def <(that: Pure) = Prop.lt(this, that)
  def >=(that: Pure) = Prop.ge(this, that)
  def >(that: Pure) = Prop.gt(this, that)

  def select(index: Pure) = Pure.select(this, index)
  def store(index: Pure, value: Pure) = Pure.store(this, index, value)
}

object Pure extends Counter with Alpha[Pure, Var] {
  val zero = const(0)
  val one = const(1)

  object exp extends binary(Fun.exp)
  object times extends binary(Fun.times)
  object divBy extends binary(Fun.divBy)
  object mod extends binary(Fun.mod)

  object uminus extends unary(Fun.uminus)
  object plus extends binary(Fun.plus)
  object minus extends binary(Fun.minus)

  def fresh(name: String, typ: Sort) = {
    Var(name, typ, Some(Pure.next))
  }

  def vars(names: List[String], types: List[Sort]) = {
    for ((name, typ) <- (names zip types))
      yield Var(name, typ)
  }

  case class const(value: Int) extends Pure {
    def free = Set()
    def rename(re: Map[Var, Var]) = this
    def subst(su: Map[Var, Pure]) = this
    override def toString = value.toString
  }

  case class bool(arg: Prop) extends Pure {
    def free = arg.free
    def rename(re: Map[Var, Var]) = bool(arg rename re)
    def subst(su: Map[Var, Pure]) = bool(arg subst su)
  }

  case class app(fun: Fun, args: List[Pure]) extends Pure {
    def free = Set(args flatMap (_.free): _*)
    def rename(re: Map[Var, Var]) = app(fun, args map (_ rename re))
    def subst(su: Map[Var, Pure]) = app(fun, args map (_ subst su))

    override def toString = {
      if (args.isEmpty) fun.toString
      else sexpr(fun :: args)
    }
  }

  case class ite(test: Prop, left: Pure, right: Pure) extends Pure {
    def free = test.free ++ left.free ++ right.free
    def rename(re: Map[Var, Var]) = ite(test rename re, left rename re, right rename re)
    def subst(su: Map[Var, Pure]) = ite(test subst su, left subst su, right subst su)
    override def toString = sexpr("ite", test, left, right)
  }

  case class select(base: Pure, index: Pure) extends Pure {
    def free = base.free ++ index.free
    def rename(re: Map[Var, Var]) = new select(base rename re, index rename re)
    def subst(su: Map[Var, Pure]) = new select(base subst su, index subst su)
    override def toString = sexpr("select", base, index)
  }

  case class store(base: Pure, index: Pure, arg: Pure) extends Pure {
    def free = base.free ++ index.free ++ arg.free
    def rename(re: Map[Var, Var]) = new store(base rename re, index rename re, arg rename re)
    def subst(su: Map[Var, Pure]) = new store(base subst su, index subst su, arg subst su)
    override def toString = sexpr("store", base, index, arg)
  }

  class unary(val fun: Fun) {
    def unapply(pure: Pure) =
      pure match {
        case app(`fun`, List(arg)) => Some(arg)
        case _                     => None
      }

    def apply(arg: Pure) = {
      app(fun, List(arg))
    }
  }

  class binary(val fun: Fun) {
    def unapply(pure: Pure) =
      pure match {
        case app(`fun`, List(arg1, arg2)) => Some((arg1, arg2))
        case _                            => None
      }

    def apply(arg1: Pure, arg2: Pure) = {
      app(fun, List(arg1, arg2))
    }

    def flatten(expr: Pure): List[Pure] =
      expr match {
        case app(`fun`, List(arg1, arg2)) =>
          flatten(arg1) ++ flatten(arg2)
        case _ =>
          List(expr)
      }
  }
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
