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

case class Dims(ptr: Boolean, bounds: List[Expr]) {
  def this(ptr: Boolean, bounds: Array[Expr]) = this(ptr, bounds.toList)
}

object Dims {
  val empty = Dims(false, Nil)
}

case class ParamSpec(typ: Type, name: Option[String], dims: Dims) {
  def this(typ: Type, dims: Dims) = this(typ, None, dims)
  def this(typ: Type, name: String, dims: Dims) = this(typ, Some(name), dims)
}

case class VarSpec(name: String, dims: Dims, init: Option[Expr]) {
  def this(name: String, dims: Dims) = this(name, dims, None)
  def this(name: String, dims: Dims, init: Expr) = this(name, dims, Some(init))
}

case class FieldSpec(name: String, dims: Dims)
case class FieldsSpec(typ: Type, fields: Array[FieldSpec])

object Parsing {
  def params(specs: Array[ParamSpec]) =
    specs match {
      case Array(ParamSpec(Type._void, None, Dims.empty)) =>
        Array[Type]()
      case _ =>
        for (spec <- specs)
          yield {
            val ParamSpec(typ, _, dims) = spec
            typ withDims dims
          }
    }

  def formals(specs: Array[ParamSpec]) =
    specs match {
      case Array(ParamSpec(Type._void, None, Dims.empty)) =>
        Array[Formal]()
      case _ =>
        for (spec <- specs)
          yield {
            val ParamSpec(typ, Some(name), dims) = spec
            Formal(typ withDims dims, name)
          }
    }

  def fields(groups: Array[FieldsSpec]) = {
    for (
      group <- groups;
      field <- group.fields
    )
      yield {
        val FieldSpec(name, dims) = field
        Field(group.typ withDims dims, name)
      }
  }

  def vars(typ: Type, group: Array[VarSpec]) = {
    for (vars <- group)
      yield {
        val VarSpec(name, dims, init) = vars
        VarDef(Formal(typ withDims dims, name), init)
      }
  }
}

sealed trait Stmt {}

case class Block(stmts: List[Stmt]) extends Stmt {
  def this(stmts: Array[Stmt]) = this(stmts.toList)
}

object Group {
  val empty = Block(Nil)
}

// like block but no scoping
// used for variable declarations
case class Group(stmts: List[Stmt]) extends Stmt {
  def this(stmts: Array[Stmt]) = this(stmts.toList)
}

case class Atomic(expr: Option[Expr]) extends Stmt {
  def this(expr: Expr) = this(Some(expr))
}

object Atomic {
  val none = Atomic(None)
  def assume(expr: Expr) = Atomic(Some(__VERIFIER.assume(expr)))
}

case class Label(label: String) extends Stmt

case class Case(const: Int) extends Stmt

case class Goto(label: String) extends Stmt 

case object Break extends Stmt {
  def self = this
}

case object Continue extends Stmt {
  def self = this
}

case class Return(expr: Option[Expr]) extends Stmt {
  def this(expr: Expr) = this(Some(expr))
}

object Return {
  val none = Return(None)
}

case class If(test: Expr, left: Stmt, right: Stmt) extends Stmt {
  def this(test: Expr, left: Stmt) = this(test, left, Group.empty)
}

case class While(test: Expr, body: Stmt) extends Stmt

case class DoWhile(body: Stmt, test: Expr) extends Stmt

case class For(vars: List[VarDef], init: List[Expr], test: List[Expr], inc: List[Expr], body: Stmt)
    extends Stmt {

  def this(init: Array[Expr], test: Array[Expr], inc: Array[Expr], body: Stmt) = {
    this(Nil, init.toList, test.toList, inc.toList, body)
  }

  def this(vars: Array[VarDef], test: Array[Expr], inc: Array[Expr], body: Stmt) = {
    this(vars.toList, Nil, test.toList, inc.toList, body)
  }
}

case class TypeDef(typ: Type, name: String) extends Stmt {}

case class StructDef(name: String, fields: List[Field]) extends Stmt {
  def this(name: String, fields: Array[Field]) = this(name, fields.toList)
}

case class UnionDef(name: String, fields: List[Field]) extends Stmt {
  def this(name: String, fields: Array[Field]) = this(name, fields.toList)
}

case class EnumDef(name: Option[String], consts: List[String]) extends Stmt {
  def this(consts: Array[String]) = this(None, consts.toList)
  def this(name: String, consts: Array[String]) = this(Some(name), consts.toList)
}

case class StructDecl(name: String) extends Stmt
case class UnionDecl(name: String) extends Stmt
case class EnumDecl(name: String) extends Stmt

case class Switch(expr: Expr, body: Stmt) extends Stmt {}

case class VarDef(formal: Formal, init: Option[Expr]) extends Stmt {
  def this(formal: Formal) = this(formal, None)
  def this(formal: Formal, init: Expr) = this(formal, Some(init))
}

case class FunDecl(ret: Type, name: String, types: List[Type]) extends Stmt {
  def this(ret: Type, name: String) = {
    this(ret, name, Nil)
  }

  def this(ret: Type, name: String, params: Array[Type]) = {
    this(ret, name, params.toList)
  }
}

case class FunDef(ret: Type, name: String, formals: List[Formal], body: Stmt) extends Stmt {
  def this(ret: Type, name: String, body: Stmt) = {
    this(ret, name, Nil, body)
  }

  def this(ret: Type, name: String, formals: Array[Formal], body: Stmt) = {
    this(ret, name, formals.toList, body)
  }
}
