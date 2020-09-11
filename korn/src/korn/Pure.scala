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
  def ?(left: Pure, right: Pure) = App("ite", this, left, right)

  def ^(that: Pure) = App("exp", this, that)
  def *(that: Pure) = App("*", this, that)
  def /(that: Pure) = App("div", this, that)
  def %(that: Pure) = App("mod", this, that)

  def unary_+ = this
  def unary_- = App("-", this)
  def +(that: Pure) = App("+", this, that)
  def -(that: Pure) = App("-", this, that)

  def ===(that: Pure) = App("=", this, that)
  def !==(that: Pure) = !(this === that)

  def <=(that: Pure) = App("<=", this, that)
  def <(that: Pure) = App("<", this, that)
  def >=(that: Pure) = App(">=", this, that)
  def >(that: Pure) = App(">", this, that)

  def unary_!() = App("not", this)
  def and(that: Pure) = App("and", this, that)
  def or(that: Pure) = App("or", this, that)
  def ==>(that: Pure) = App("=>", this, that)

  def select(index: Pure) = App("select", this, index)
  def store(index: Pure, value: Pure) = App("store", this, index, value)
}

object Pure extends Counter with Alpha[Pure, Var] {}

case class Num(value: Int) extends Pure {
  def free = Set()
  def rename(re: Map[Var, Var]) = this
  def subst(su: Map[Var, Pure]) = this
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

  override def toString = sexpr(fun :: args)
}

object App {
  def apply(fun: String): App = {
    App(fun, Nil)
  }

  def apply(fun: String, arg1: Pure): App = {
    App(fun, List(arg1))
  }

  def apply(fun: String, arg1: Pure, arg2: Pure): App = {
    App(fun, List(arg1, arg2))
  }

  def apply(fun: String, arg1: Pure, arg2: Pure, arg3: Pure): App = {
    App(fun, List(arg1, arg2, arg3))
  }
}
