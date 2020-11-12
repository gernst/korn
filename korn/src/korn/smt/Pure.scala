package korn.smt

object Parsing {
  def boolSort = {
    Sort.bool
  }

  def intSort = {
    Sort.int
  }

  def arraySort(dom: Sort, ran: Sort) = {
    Sort.array(dom, ran)
  }

  def pair[A,B](a: A, b: B) = {
    (a, b)
  }

  def num(n: String) = {
    Pure.const(BigInt(n))
  }

  def let(eqs: Array[(Var,Pure)], body: Pure) = {
    Pure.let(eqs.toList, body)
  }

  def bind(quant: String, bound: Array[Param], body: Pure) = {
    quant match {
      case "exists" => Ex(bound.toList, body)
      case "forall" => All(bound.toList, body)
    }
  }

  def apply(n: String) = {
    n match {
      case "true"  => True
      case "false" => True
      case _       => Var(n)
    }
  }

  def apply(n: String, args: Array[Pure]) = {
    (n, args) match {
      case ("=", Array(left, right)) => Pure.eqn(left, right)

      case ("^", Array(arg1, arg2))   => arg1 ^ arg2
      case ("*", Array(arg1, arg2))   => arg1 * arg2
      case ("div", Array(arg1, arg2)) => arg1 / arg2
      case ("mod", Array(arg1, arg2)) => arg1 % arg2

      case ("-", Array(arg1)) => -arg1

      case ("+", _) => args.reduceLeft(Pure.plus)
      case ("-", _) => args.reduceLeft(Pure.minus)

      case ("<=", Array(arg1, arg2)) => arg1 <= arg2
      case ("<", Array(arg1, arg2))  => arg1 < arg2
      case (">", Array(arg1, arg2))  => arg1 > arg2
      case (">=", Array(arg1, arg2)) => arg1 <= arg2

      case ("not", Array(arg1))      => !arg1
      case ("=>", Array(arg1, arg2)) => arg1 ==> arg2

      case ("and", _) => Pure.ands(args.toList)
      case ("or", _)  => Pure.ors(args.toList)

      case ("select", Array(arg1, arg2)) => Pure.select(arg1, arg2)
      case ("store", Array(arg1, arg2, arg3)) => Pure.store(arg1, arg2, arg3)

      case _ => korn.error("unknown function: " + n)
    }
  }
}

sealed trait Sort {}

case class Clause(path: List[Pure], head: Pure, reason: String) {
  def free = head.free ++ path.flatMap(_.free)
  override def toString = path.mkString(", ") + " ==> " + head + " # " + reason
}

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
  val t = Fun("true", List(), Sort.bool)
  val f = Fun("false", List(), Sort.bool)

  val exp = Fun("^", List(Sort.int, Sort.int), Sort.int)
  val times = Fun("*", List(Sort.int, Sort.int), Sort.int)
  val divBy = Fun("div", List(Sort.int, Sort.int), Sort.int)
  val mod = Fun("mod", List(Sort.int, Sort.int), Sort.int)

  val uminus = Fun("-", List(Sort.int), Sort.int)
  val plus = Fun("+", List(Sort.int, Sort.int), Sort.int)
  val minus = Fun("-", List(Sort.int, Sort.int), Sort.int)

  val le = Fun("<=", List(Sort.int, Sort.int), Sort.bool)
  val lt = Fun("<", List(Sort.int, Sort.int), Sort.bool)
  val ge = Fun(">=", List(Sort.int, Sort.int), Sort.bool)
  val gt = Fun(">", List(Sort.int, Sort.int), Sort.bool)

  val not = Fun("not", List(Sort.bool), Sort.bool)
  val and = Fun("and", List(Sort.bool, Sort.bool), Sort.bool)
  val or = Fun("or", List(Sort.bool, Sort.bool), Sort.bool)
  val imp = Fun("=>", List(Sort.bool, Sort.bool), Sort.bool)
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

  def ===(that: Pure) = Pure.eqn(this, that)
  def !==(that: Pure) = !(this === that)

  def <=(that: Pure) = Pure.le(this, that)
  def <(that: Pure) = Pure.lt(this, that)
  def >=(that: Pure) = Pure.ge(this, that)
  def >(that: Pure) = Pure.gt(this, that)

  def unary_! = Pure.not(this)
  def and(that: Pure) = Pure.and(this, that)
  def or(that: Pure) = Pure.or(this, that)
  def ==>(that: Pure) = Pure.imp(this, that)

  def select(index: Pure) = Pure.select(this, index)
  def store(index: Pure, value: Pure) = Pure.store(this, index, value)
}

object Pure extends korn.Counter with Alpha[Pure, Var] {
  val zero = const(0)
  val one = const(1)

  object exp extends binary(Fun.exp)
  object times extends binary(Fun.times)
  object divBy extends binary(Fun.divBy)
  object mod extends binary(Fun.mod)

  object uminus extends unary(Fun.uminus)
  object plus extends binary(Fun.plus)
  object minus extends binary(Fun.minus)

  object lt extends binary(Fun.lt)
  object le extends binary(Fun.le)
  object gt extends binary(Fun.gt)
  object ge extends binary(Fun.ge)

  object not extends unary(Fun.not)
  object and extends binary(Fun.and)
  object or extends binary(Fun.or)
  object imp extends binary(Fun.imp)

  val ands: List[Pure] => Pure = {
    case Nil       => True
    case List(arg) => arg
    case args      => args reduce Pure.and
  }

  val ors: List[Pure] => Pure = {
    case Nil       => False
    case List(arg) => arg
    case args      => args reduce Pure.or
  }

  case class const(value: BigInt) extends Pure {
    def free = Set()
    def rename(re: Map[Var, Var]) = this
    def subst(su: Map[Var, Pure]) = this
    def <<(bits: Int) = const(value << bits)
    def +(that: BigInt) = const(value + that)
    def -(that: BigInt) = const(value - that)
    override def toString = value.toString
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

  // Parsing only
  case class let(eqs: List[(Var, Pure)], body: Pure) extends Pure {
    def free = ???
    def rename(re: Map[Var, Var]) = ???
    def subst(su: Map[Var, Pure]) = ???
    override def toString = {
      val ps = eqs map { case (x, a) => sexpr(x, a) }
      sexpr("let", sexpr(ps), body)
    }
  }

  case class ite(test: Pure, left: Pure, right: Pure) extends Pure {
    def free = test.free ++ left.free ++ right.free
    def rename(re: Map[Var, Var]) = ite(test rename re, left rename re, right rename re)
    def subst(su: Map[Var, Pure]) = ite(test subst su, left subst su, right subst su)
    override def toString = sexpr("ite", test, left, right)
  }

  case class eqn(left: Pure, right: Pure) extends Pure {
    def free = left.free ++ right.free
    def rename(re: Map[Var, Var]) = eqn(left rename re, right rename re)
    def subst(su: Map[Var, Pure]) = eqn(left subst su, right subst su)
    override def toString = sexpr("=", left, right)
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

  class unary(val fun: Fun) extends (Pure => Pure) {
    def unapply(pure: Pure) =
      pure match {
        case app(`fun`, List(arg)) => Some(arg)
        case _                     => None
      }

    def apply(arg: Pure) = {
      app(fun, List(arg))
    }
  }

  class binary(val fun: Fun) extends ((Pure, Pure) => Pure) {
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

case class Var(name: String, index: Option[Int]) extends Pure with Pure.x {
  def fresh(index: Int) = Var(name, Some(index))

  override def toString = {
    index match {
      case None        => name
      case Some(index) => name + index
    }
  }
}

object Var extends (String => Var) {
  def apply(name: String) = {
    Var(name, None)
  }
}

sealed trait Quant {
  def apply(params: List[Param], body: Pure) = {
    Bind(this, params, body)
  }
}

case object All extends Quant {
  override def toString = "forall"
}

case object Ex extends Quant {
  override def toString = "exists"
}

case class Bind(quant: Quant, params: List[Param], body: Pure) extends Pure with Pure.bind[Pure] {
  def bound = Set(params map (_.x): _*)
  def free = body.free -- bound
  def rename(a: Map[Var, Var], re: Map[Var, Var]) = Bind(quant, params map (_ rename a), body rename re)
  def subst(a: Map[Var, Var], su: Map[Var, Pure]) = Bind(quant, params map (_ rename a), body subst su)
  override def toString = sexpr(quant, sexpr(params), body)
}

case class Param(x: Var, sort: Sort) {
  def rename(re: Map[Var, Var]) = Param(x rename re, sort)
  override def toString = sexpr(x, sort)
}
