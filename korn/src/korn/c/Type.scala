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

  def <=(that: Type): Boolean = {
    (this, that) match {
      case (Signed(name1, bytes1), Signed(name2, bytes2)) =>
        bytes1 <= bytes2
      case (Unsigned(name1, bytes1), Unsigned(name2, bytes2)) =>
        bytes1 <= bytes2
    }
  }

  def |(that: Type): Type = {
    (this, that) match {
      // If both operands have the same type, then no further conversion is needed.
      case _ if this == that =>
        this

      // Otherwise, if both operands have signed integer types or both have unsigned integer types,
      // the operand with the type of lesser integer conversion rank
      // is converted to the type of the operand with greater rank.
      case (Signed(name1, bytes1), Signed(name2, bytes2)) =>
        if (bytes1 >= bytes2) this else that
      case (Unsigned(name1, bytes1), Unsigned(name2, bytes2)) =>
        if (bytes1 >= bytes2) this else that

      // Otherwise, if the operand that has unsigned integer type has rank
      // greater or equal to the rank of the type of the other operand,
      // then the operand with signed integer type is converted to the type
      // of the operand with unsigned integer type.
      case (Signed(name1, bytes1), Unsigned(name2, bytes2)) if bytes1 <= bytes2 =>
        that
      case (Unsigned(name1, bytes1), Signed(name2, bytes2)) if bytes1 >= bytes2 =>
        this

      // Otherwise, if the type of the operand with signed integer type can represent
      // all of the values of the type of the operand with unsigned integer type,
      /// then the operand with unsigned integer type is converted to the type of the operand with signed integer type.
      case (Signed(name1, bytes1), Unsigned(name2, bytes2)) if bytes1 >= 2 * bytes2 =>
        this
      case (Unsigned(name1, bytes1), Signed(name2, bytes2)) if 2 * bytes1 <= bytes2 =>
        that

      // Otherwise, both operands are converted to the unsigned integer type
      // corresponding to the type of the operand with signed integer type.
      case (Signed(name1, bytes1), Unsigned(name2, bytes2)) =>
        Unsigned(name1, bytes1)
      case (Unsigned(name1, bytes1), Signed(name2, bytes2)) =>
        Unsigned(name2, bytes2)

      case (Type._float, Type._double) =>
        Type._double
      case (Type._double, Type._float) =>
        Type._double

      case (Type._float, Type._Bool | _: Signed | _: Unsigned) =>
        Type._float
      case (Type._double, Type._Bool | _: Signed | _: Unsigned) =>
        Type._double

      case (Type._Bool | _: Signed | _: Unsigned, Type._float) =>
        Type._float
      case (Type._Bool | _: Signed | _: Unsigned, Type._double) =>
        Type._double

      case _ =>
        korn.error("incompatible types: " + this + " and " + that)
    }
  }
}

sealed trait CompoundType extends Type
sealed trait TypeName extends Type { def name: String }
case class BaseType(name: String) extends Type
case class Signed(name: String, bytes: Int) extends Type
case class Unsigned(name: String, bytes: Int) extends Type

object Type {
  val _void = BaseType("void")
  val _Bool = BaseType("_Bool")
  val _float = BaseType("float")
  val _double = BaseType("double")

  def sizeof(typ: Type): Long = {
    typ match {
      case `_Bool` =>
        1
      case `_float` =>
        4
      case `_double` =>
        8
      case Signed(_, bytes) =>
        bytes
      case Unsigned(_, bytes) =>
        bytes
      case _ =>
        korn.error("unknown size: " + typ)
    }
  }

}

object Signed {
  val _char = Signed("char", 1)
  val _short = Signed("short", 2)
  val _int = Signed("int", 4)
  val _long = Signed("long", bits / 8)
  val _long_long = Signed("long long", 8)
}

object Unsigned {
  val _char = Unsigned("char", 1)
  val _short = Unsigned("short", 2)
  val _int = Unsigned("int", 4)
  val _long = Unsigned("long", bits / 8)
  val _long_long = Unsigned("long long", 8)
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
