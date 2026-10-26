package korn.horn

import korn.c.*
import korn.smt.*

case class Val(pure: Pure, typ: Type)

// class Ptr(val typ: Type) extends Val

object Val:
  val unit = Val(null, Type._void)

  def to(v: Val) = v.pure
  def to(v: Option[Val]) = v.map(_.pure)
  def to(v: List[Val]) = v.map(_.pure)

  def truth(arg: Val): Pure =
    val Val(pure, typ) = arg
    truth(pure)

  def truth(pure: Pure): Pure =
    pure match
      case Pure.ite(test, Pure.one, Pure.zero) =>
        test
      case Pure.ite(test, Pure.zero, Pure.one) =>
        !test
      case _ =>
        pure !== Pure.zero

  def bit(arg: Val): Pure =
    arg match
      case Val(pure, Type._Bool) =>
        truth(pure)
      case Val(Pure.one, _) =>
        True
      case Val(Pure.zero, _) =>
        False
      case _ =>
        korn.error("bit-precise reasoning unsupported: " + arg)

  def bool(arg: Pure): Val =
    arg match
      case Pure.not(arg) =>
        Val(Pure.ite(arg, Pure.zero, Pure.one), Type._Bool)
      case _ =>
        Val(Pure.ite(arg, Pure.one, Pure.zero), Type._Bool)

  def isInteger(typ: Type) =
    typ match
      case Type._Bool | _: Signed | _: Unsigned => true
      case _                                    => false

  /** integer promotion: types narrower than int are converted to int */
  def promote(typ: Type): Type =
    typ match
      case Type._Bool                    => Signed._int
      case Signed(_, bytes) if bytes < 4 => Signed._int
      case Unsigned(_, bytes) if bytes < 4 => Signed._int
      case _                             => typ

  /** usual arithmetic conversions */
  def arith(typ1: Type, typ2: Type): Type =
    if isInteger(typ1) && isInteger(typ2) then promote(typ1) | promote(typ2)
    else typ1 | typ2

  /** reduce modulo 2^(8*bytes), unless arithmetic is unbounded */
  def wrap(pure: Pure, bytes: Int): Pure =
    val m = BigInt(1) << (8 * bytes)
    pure match
      case _ if Eval.unbounded => pure
      case Pure.const(n)       => Pure.const(((n % m) + m) % m)
      case _                   => pure % Pure.const(m)

  /** two's complement: reduce into [-2^(8*bytes-1), 2^(8*bytes-1)) */
  def wrapSigned(pure: Pure, bytes: Int): Pure =
    val h = BigInt(1) << (8 * bytes - 1)
    pure match
      case _ if Eval.unbounded => pure
      case Pure.const(n)       => Pure.const((((n + h) % (2 * h)) + 2 * h) % (2 * h) - h)
      case _                   => wrap(pure + Pure.const(h), bytes) - Pure.const(h)

  def wrap(arg: Val): Val =
    arg match
      case Val(pure, typ @ Unsigned(_, bytes)) => Val(wrap(pure, bytes), typ)
      case _                                   => arg

  /** whether all values of type from fit into type to */
  def fits(from: Type, to: Type): Boolean =
    (from, to) match
      case (Type._Bool, _)                    => true
      case (Signed(_, b1), Signed(_, b2))     => b1 <= b2
      case (Unsigned(_, b1), Unsigned(_, b2)) => b1 <= b2
      case (Unsigned(_, b1), Signed(_, b2))   => b1 < b2
      case _                                  => false

  /** convert a value to the given type, out of range values wrap around */
  def convert(arg: Val, typ: Type): Val =
    arg match
      case Val(_, `typ`) =>
        arg
      case Val(pure, from) if isInteger(from) =>
        typ match
          case Type._Bool                         => bool(truth(pure))
          case Signed(_, _) if fits(from, typ)    => Val(pure, typ)
          case Signed(_, bytes)                   => Val(wrapSigned(pure, bytes), typ)
          case Unsigned(_, _) if fits(from, typ)  => Val(pure, typ)
          case Unsigned(_, bytes)                 => Val(wrap(pure, bytes), typ)
          case _                                  => arg
      case _ =>
        arg

  def preop(op: String, arg: Val): Val =
    (op, arg) match
      case ("+", Val(arg, typ)) =>
        Val(arg, promote(typ))
      case ("-", Val(arg, typ)) =>
        wrap(Val(-arg, promote(typ)))
      case ("!", _) =>
        bool(!truth(arg))
      case _ =>
        korn.error("unknown unary operator: " + op)

  def question(test: Pure, arg1: Val, arg2: Val): Val =
    val Val(pure1, typ1) = arg1
    val Val(pure2, typ2) = arg2
    Val(Pure.ite(test, pure1, pure2), typ1 | typ2)

  def relop(op: String, arg1: Val, arg2: Val): Pure =
    // signed operands compared against unsigned ones are converted
    val (_arg1, _arg2) =
      if op != "&" && op != "|" && isInteger(arg1.typ) && isInteger(arg2.typ) then
        val typ = arith(arg1.typ, arg2.typ)
        (convert(arg1, typ), convert(arg2, typ))
      else (arg1, arg2)

    (op, _arg1, _arg2) match
      case ("==", Val(arg1, typ1), Val(arg2, typ2)) =>
        arg1 === arg2
      case ("!=", Val(arg1, typ1), Val(arg2, typ2)) =>
        arg1 !== arg2
      case ("<=", Val(arg1, typ1), Val(arg2, typ2)) =>
        arg1 <= arg2
      case ("<", Val(arg1, typ1), Val(arg2, typ2)) =>
        arg1 < arg2
      case (">", Val(arg1, typ1), Val(arg2, typ2)) =>
        arg1 > arg2
      case (">=", Val(arg1, typ1), Val(arg2, typ2)) =>
        arg1 >= arg2
      case ("&", _, _) =>
        bit(arg1).and(bit(arg2))
      case ("|", _, _) =>
        bit(arg1).or(bit(arg2))
      case _ =>
        korn.error("unknown binary operator: " + op)

  def binop(op: String, arg1: Val, arg2: Val): Val =
    (op, arg1, arg2) match
      case ("+", Val(arg1, typ1), Val(arg2, typ2)) =>
        wrap(Val(arg1 + arg2, arith(typ1, typ2)))
      case ("-", Val(arg1, typ1), Val(arg2, typ2)) =>
        wrap(Val(arg1 - arg2, arith(typ1, typ2)))
      case ("*", Val(arg1, typ1), Val(arg2, typ2)) =>
        wrap(Val(arg1 * arg2, arith(typ1, typ2)))
      case ("/" | "%", Val(_, typ1), Val(_, typ2)) =>
        val typ = arith(typ1, typ2)
        val Val(a, _) = convert(arg1, typ)
        val Val(b, _) = convert(arg2, typ)
        Val(divmod(op, a, b, typ), typ)
      case _ =>
        bool(relop(op, arg1, arg2))

  /** C division truncates towards zero, SMT div/mod are euclidean */
  def divmod(op: String, a: Pure, b: Pure, typ: Type): Pure =
    def euclid(a: Pure) = if op == "/" then a / b else a % b
    (a, typ) match
      case (Pure.const(n), _) if n >= 0 => euclid(a)
      case (_, _: Signed)               => Pure.ite(a >= Pure.zero, euclid(a), -euclid(-a))
      case _                            => euclid(a)

  def select(base: Val, index: Val): Val =
    (base, index) match
      case (Val(base, ArrayType(elem, dim)), Val(index, _)) =>
        /// XXX: ensure that typ is cast to int?
        Val(base.select(index), elem)
      case _ =>
        korn.error("invalid array lookup: " + base + " at " + index)

  def store(base: Val, index: Val, value: Val): Val =
    (base, index, value) match
      case (Val(base, typ @ ArrayType(elem, dim)), Val(index, _), Val(value, _)) =>
        Val(base.store(index, value), typ)
      case _ =>
        korn.error("invalid array update: " + base + " at " + index + " = " + value)
