package korn

sealed trait Type {
  def withDims(dims: Dims) = {
    val Dims(ptr, bounds) = dims
    if (ptr)
      bounds.foldLeft(PtrType(this): Type)(ArrayType)
    else
      bounds.foldLeft(this)(ArrayType)
  }
}

sealed trait CompoundType extends Type
sealed trait TypeName extends Type { def name: String }
case class BaseType(name: String) extends Type
case class Signed(name: String) extends Type
case class Unsigned(name: String) extends Type

object Type {
  val _void = BaseType("void")
  val _Bool = BaseType("_Bool")
  val _float = BaseType("float")
  val _double = BaseType("double")
}

object Signed {
  val _char = Signed("char")
  val _short = Signed("short")
  val _int = Signed("int")
  val _long = Signed("long")
  val _long_long = Signed("long long")
}

object Unsigned {
  val _char = Unsigned("char")
  val _short = Unsigned("short")
  val _int = Unsigned("int")
  val _long = Unsigned("long")
  val _long_long = Unsigned("long long")
}

case class TypedefName(name: String) extends TypeName

case class StructName(name: String) extends TypeName

case class UnionName(name: String) extends TypeName

case class EnumName(name: String) extends TypeName

case class PtrType(typ: Type) extends Type

case class FunPtrType(ret: Type, args: List[Type]) extends Type {
  def this(ret: Type, args: Array[Type]) = this(ret, args.toList)
}

case class ArrayType(typ: Type, dim: Expr) extends Type

case class AnonStruct(fields: List[Field]) extends CompoundType {
  def this(fields: Array[Field]) = this(fields.toList)
}

case class AnonUnion(fields: List[Field]) extends CompoundType {
  def this(fields: Array[Field]) = this(fields.toList)
}

case class AnonEnum(consts: List[String]) extends CompoundType {
  def this(consts: Array[String]) = this(consts.toList)
}

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

case class Field(typ: Type, name: String) {
  override def toString = typ + " " + name
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

object Id extends Counter {
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
  class nullary(name: String) {
    def apply() = {
      FunCall(name, Nil)
    }

    def unapply(call: FunCall) =
      call match {
        case FunCall(`name`, Nil) =>
          true
        case _ =>
          false
      }
  }

  class unary(name: String) {
    def apply(arg: Expr) = {
      FunCall(name, List(arg))
    }

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
