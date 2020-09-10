package korn

sealed trait Sort {}

object Sort {
  val bool = base("bool")
  val int = base("int")
  val sec = base("sec")
  val unit = base("unit")

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
  import Fun._

  def ?(left: Pure, right: Pure) = App(ite, this, left, right)

  def ^(that: Pure) = App(exp, this, that)
  def *(that: Pure) = App(times, this, that)
  def /(that: Pure) = App(divBy, this, that)
  def %(that: Pure) = App(mod, this, that)

  def unary_+ = this
  def unary_- = App(minus, this)
  def +(that: Pure) = App(plus, this, that)
  def -(that: Pure) = App(minus, this, that)

  def ===(that: Pure) = App(_eq, this, that)
  def !==(that: Pure) = !(this === that)

  def <=(that: Pure) = App(le, this, that)
  def <(that: Pure) = App(lt, this, that)
  def >=(that: Pure) = App(ge, this, that)
  def >(that: Pure) = App(gt, this, that)

  def unary_!() = App(not, this)
  def &&(that: Pure) = App(and, this, that)
  def ||(that: Pure) = App(or, this, that)
  def ==>(that: Pure) = App(imp, this, that)
}

object Pure extends Counter with Alpha[Pure, Var] {}

case class Fun(name: String, index: Option[Int] = None) {
  override def toString = {
    index match {
      case None        => name
      case Some(index) => name + index
    }
  }
}

object Fun extends Counter {
  def fresh(name: String) = Fun(name, Some(next))

  val ite = Fun("ite")

  def t = Fun("true")
  def f = Fun("false")

  val exp = Fun("^")
  val times = Fun("*")
  val divBy = Fun("/")
  val mod = Fun("%")

  val uminus = Fun("-")
  val plus = Fun("+")
  val minus = Fun("-")

  val _eq = Fun("=")
  val le = Fun("<=")
  val lt = Fun("<")
  val ge = Fun(">=")
  val gt = Fun(">")

  val not = Fun("not")
  val and = Fun("and")
  val or = Fun("or")
  val imp = Fun("=>")

  val select = Fun("select")
  val store = Fun("store")
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

case class App(fun: Fun, args: List[Pure]) extends Pure {
  def free = Set(args flatMap (_.free): _*)
  def rename(re: Map[Var, Var]) = App(fun, args map (_ rename re))
  def subst(su: Map[Var, Pure]) = App(fun, args map (_ subst su))

  override def toString = sexpr(fun :: args)
}

object App {
  def apply(fun: Fun): App = {
    App(fun, Nil)
  }

  def apply(fun: Fun, arg1: Pure): App = {
    App(fun, List(arg1))
  }

  def apply(fun: Fun, arg1: Pure, arg2: Pure): App = {
    App(fun, List(arg1, arg2))
  }

  def apply(fun: Fun, arg1: Pure, arg2: Pure, arg3: Pure): App = {
    App(fun, List(arg1, arg2, arg3))
  }
}
