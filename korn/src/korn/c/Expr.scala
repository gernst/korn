package korn.c

sealed trait Expr {
  def rename(re: Map[String, String]): Expr
}

object Expr {
  def comma(exprs: List[Expr]) = {
    if (exprs.isEmpty) {
      None
    } else {
      // Note: comma is associative
      Some(exprs.reduce(BinOp(",", _, _)))
    }
  }

  def hasEffects(expr: Expr): Boolean = {
    expr match {
      case _: Id                       => false
      case _: Lit                      => false
      case PreOp("++", arg)            => true
      case PreOp("--", arg)            => true
      case PostOp("++", arg)           => true
      case PostOp("--", arg)           => true
      case BinOp("=", arg1, arg2)      => true
      case PreOp(op, arg)              => hasEffects(arg)
      case PostOp(op, arg)             => hasEffects(arg)
      case BinOp(op, arg1, arg2)       => hasEffects(arg1) || hasEffects(arg2)
      case Index(arg1, arg2)           => hasEffects(arg1) || hasEffects(arg2)
      case Question(test, left, right) => hasEffects(test) || hasEffects(left) || hasEffects(right)
      case Cast(typ, expr)             => hasEffects(expr)
      case SizeOfExpr(expr)            => false // compile time
      case SizeOfType(typ)             => false
      case Arrow(expr, field)          => hasEffects(expr)
      case Dot(expr, field)            => hasEffects(expr)
      case FunCall(name, args)         => true // XXX: approximation
      case Init(values)                => (values exists { case (_, expr) => hasEffects(expr) })
    }
  }
}

case class Formal(typ: Type, name: String) {
  def id = Id(name)
  def pair = (id, typ)

  def shuffle(typ: Type, dims: List[Expr]): (Type, List[Expr]) = {
    typ match {
      case ArrayType(arg, dim) =>
        shuffle(arg, dim :: dims)
      case PtrType(arg) =>
        val (res, _dims) = shuffle(arg, dims)
        (PtrType(res), _dims)
      case _ =>
        (typ, dims)
    }
  }
}

case class Lit(arg: Any) extends Expr {
  def rename(re: Map[String, String]) = this
}

case class Id(name: String) extends Expr {
  def rename(re: Map[String, String]) = {
    if (re contains name) Id(re(name))
    else this
  }
}

object Id extends korn.Counter {
  val result = Id("$result")
  val main = Id("main")
  def fresh(name: String) = "$" + name + next
}

case class PreOp(op: String, arg: Expr) extends Expr {
  def rename(re: Map[String, String]) = PreOp(op, arg rename re)
}

case class PostOp(op: String, arg: Expr) extends Expr {
  def rename(re: Map[String, String]) = PostOp(op, arg rename re)
}

case class BinOp(op: String, arg1: Expr, arg2: Expr) extends Expr {
  def rename(re: Map[String, String]) = BinOp(op, arg1 rename re, arg2 rename re)
}

case class Index(base: Expr, index: Expr) extends Expr {
  def rename(re: Map[String, String]) = Index(base rename re, index rename re)
}

case class Question(test: Expr, left: Expr, right: Expr) extends Expr {
  def rename(re: Map[String, String]) = Question(test rename re, left rename re, right rename re)
}

case class SizeOfType(typ: Type) extends Expr {
  def rename(re: Map[String, String]) = this
}

case class SizeOfExpr(expr: Expr) extends Expr {
  def rename(re: Map[String, String]) = SizeOfExpr(expr rename re)
}

case class Cast(typ: Type, expr: Expr) extends Expr {
  def rename(re: Map[String, String]) = Cast(typ, expr rename re)
}

case class Dot(expr: Expr, field: String) extends Expr {
  def rename(re: Map[String, String]) = Dot(expr rename re, field)
}

case class Arrow(expr: Expr, field: String) extends Expr {
  def rename(re: Map[String, String]) = Arrow(expr rename re, field)
}

case class FunCall(fun: String, args: List[Expr]) extends Expr { // no function pointers
  def this(fun: String) = this(fun, Nil)
  def this(fun: String, args: Array[Expr]) = this(fun, args.toList)
  def rename(re: Map[String, String]) = FunCall(fun, args map (_ rename re))
}

object FunCall {
  class nullary(val name: String) {
    def unapply(call: FunCall) =
      call match {
        case FunCall(`name`, Nil) =>
          true
        case _ =>
          false
      }
  }

  class unary(val name: String) {
    def unapply(call: FunCall) =
      call match {
        case FunCall(`name`, List(arg)) =>
          Some(arg)
        case _ =>
          None
      }
  }
}

case class Init(values: Array[(Option[String], Expr)]) extends Expr { // { .field = value } or { value }
  def rename(re: Map[String, String]) = ???
}
