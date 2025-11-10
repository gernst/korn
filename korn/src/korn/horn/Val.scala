package korn.horn

import korn.c._
import korn.smt._

case class Val(pure: Pure, typ: Type)

// class Ptr(val typ: Type) extends Val

object Val {
  val unit = Val(null, Type._void)

  def to(v: Val) = v.pure
  def to(v: Option[Val]) = v map (_.pure)
  def to(v: List[Val]) = v map (_.pure)

  def truth(arg: Val): Pure = {
    val Val(pure, typ) = arg
    truth(pure)
  }

  def truth(pure: Pure): Pure = {
    pure match {
      case Pure.ite(test, Pure.one, Pure.zero) =>
        test
      case Pure.ite(test, Pure.zero, Pure.one) =>
        !test
      case _ =>
        pure !== Pure.zero
    }
  }

  def bit(arg: Val): Pure = {
    arg match {
      case Val(pure, Type._Bool) =>
        truth(pure)
      case Val(Pure.one, _) =>
        True
      case Val(Pure.zero, _) =>
        False
      case _ =>
        korn.error("bit-precise reasoning unsupported: " + arg)
    }
  }

  def bool(arg: Pure): Val = {
    arg match {
      case Pure.not(arg) =>
        Val(Pure.ite(arg, Pure.zero, Pure.one), Type._Bool)
      case _ =>
        Val(Pure.ite(arg, Pure.one, Pure.zero), Type._Bool)
    }
  }

  def preop(op: String, arg: Val): Val = {
    (op, arg) match {
      case ("+", Val(arg, typ)) =>
        Val(arg, typ)
      case ("-", Val(arg, typ)) =>
        Val(-arg, typ)
      case ("!", _) =>
        bool(!truth(arg))
      case _ =>
        korn.error("unknown unary operator: " + op)
    }
  }

  def question(test: Pure, arg1: Val, arg2: Val): Val = {
    val Val(pure1, typ1) = arg1
    val Val(pure2, typ2) = arg2
    Val(Pure.ite(test, pure1, pure2), typ1 | typ2)
  }

  def relop(op: String, arg1: Val, arg2: Val): Pure = {
    (op, arg1, arg2) match {
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
        bit(arg1) and bit(arg2)
      case ("|", _, _) =>
        bit(arg1) or bit(arg2)
      case _ =>
        korn.error("unknown binary operator: " + op)
    }
  }

  def binop(op: String, arg1: Val, arg2: Val): Val = {
    (op, arg1, arg2) match {
      case ("+", Val(arg1, typ1), Val(arg2, typ2)) =>
        Val(arg1 + arg2, typ1 | typ2)
      case ("-", Val(arg1, typ1), Val(arg2, typ2)) =>
        Val(arg1 - arg2, typ1 | typ2)
      case ("*", Val(arg1, typ1), Val(arg2, typ2)) =>
        Val(arg1 * arg2, typ1 | typ2)
      case ("/", Val(arg1, typ1), Val(arg2, typ2)) =>
        Val(arg1 / arg2, typ1 | typ2)
      case ("%", Val(arg1, typ1), Val(arg2, typ2)) =>
        Val(arg1 % arg2, typ1 | typ2)
      case _ =>
        bool(relop(op, arg1, arg2))
    }
  }

  def select(base: Val, index: Val): Val = {
    (base, index) match {
      case (Val(base, ArrayType(elem, dim)), Val(index, _)) =>
        /// XXX: ensure that typ is cast to int?
        Val(base select index, elem)
      case _ =>
        korn.error("invalid array lookup: " + base + " at " + index)
    }
  }

  def store(base: Val, index: Val, value: Val): Val = {
    (base, index, value) match {
      case (Val(base, typ @ ArrayType(elem, dim)), Val(index, _), Val(value, _)) =>
        Val(base store (index, value), typ)
      case _ =>
        korn.error("invalid array update: " + base + " at " + index + " = " + value)
    }
  }
}
