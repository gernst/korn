package korn.c

case class Field(typ: Type, name: String) {
  override def toString = typ + " " + name
}

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
