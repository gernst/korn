package korn.horn

import korn.c._
import korn.smt._

sealed trait Val {}

// class Ptr(val typ: Type) extends Val

object Val {
  case object unit extends Val {
    def typ = Type._void
  }

  def to(arg: Option[Val]): Option[Pure] = arg map to
  def to(args: List[Val]): List[Pure] = args map to

  def to(arg: Val): Pure = {
    arg match {
      case number(pure) =>
        pure
      case array(pure, _) =>
        pure
      case bool(arg: Pure) =>
        Pure.ite(arg, Pure.one, Pure.zero)
      case question(test, left, right) =>
        Pure.ite(test, to(left), to(right))
    }
  }

  def from(pure: Pure, typ: Type): Val = {
    typ match {
      case Type._Bool =>
        bool(pure)
      case _: Unsigned | _: Signed =>
        number(pure)
      case ArrayType(elem, dim) =>
        array(pure, elem)
    }
  }

  case class number(pure: Pure) extends Val
  case class array(pure: Pure, elem: Type) extends Val
  // case class array(content: Pure, length: Pure, elem: Type) extends Val

  case class bool(arg: Pure) extends Val {
    def typ = Type._Bool
  }

  case class question(test: Pure, left: Val, right: Val) extends Val {}

  def truth(arg: Val): Pure = {
    arg match {
      case Val.number(arg) =>
        arg !== Pure.zero
      case Val.bool(arg) =>
        arg
    }
  }

  def preop(op: String, arg: Val): Val = {
    (op, arg) match {
      case ("+", Val.number(arg)) =>
        (Val.number(arg))
      case ("-", Val.number(arg)) =>
        (Val.number(-arg))
      case ("!", _) =>
        bool(!truth(arg))
    }
  }

  def relop(op: String, arg1: Val, arg2: Val): Pure = {
    (op, arg1, arg2) match {
      case ("==", Val.number(arg1), Val.number(arg2)) =>
        arg1 === arg2
      case ("!=", Val.number(arg1), Val.number(arg2)) =>
        arg1 !== arg2
      case ("<=", Val.number(arg1), Val.number(arg2)) =>
        arg1 <= arg2
      case ("<", Val.number(arg1), Val.number(arg2)) =>
        arg1 < arg2
      case (">", Val.number(arg1), Val.number(arg2)) =>
        arg1 > arg2
      case (">=", Val.number(arg1), Val.number(arg2)) =>
        arg1 >= arg2
    }
  }

  def binop(op: String, arg1: Val, arg2: Val): Val = {
    (op, arg1, arg2) match {
      case ("+", Val.number(arg1), Val.number(arg2)) =>
        Val.number(arg1 + arg2)
      case ("-", Val.number(arg1), Val.number(arg2)) =>
        Val.number(arg1 - arg2)
      case ("*", Val.number(arg1), Val.number(arg2)) =>
        Val.number(arg1 * arg2)
      case ("/", Val.number(arg1), Val.number(arg2)) =>
        Val.number(arg1 / arg2)
      case ("%", Val.number(arg1), Val.number(arg2)) =>
        Val.number(arg1 % arg2)
      case _ =>
        bool(relop(op, arg1, arg2))
    }
  }

  def select(base: Val, index: Val): Val = {
    (base, index) match {
      case (array(base, typ), number(index)) =>
        Val.from(base select index, typ)
    }
  }

  def store(base: Val, index: Val, value: Val): Val = {
    (base, index) match {
      case (array(base, typ), number(index)) =>
        array(base.store(index, Val.to(value)), typ)
    }
  }

  /* case class struct(fields: Map[String, Val]) extends Val

  case class index(base: Ptr, index: Pure) extends Val
  case class member(base: Ptr, field: String) extends Val */

  /* case class Struct() extends Sort

  case class Arr(value: Val, length: Val) extends Val
  case class Arr2(values: List[Val]) extends Val

  sealed trait Loc extends Val
  case class Ptr(index: Int, sort: Sort) extends Loc
  case class Index(arr: Val, index: Val) extends Loc
  case class Member(base: Val, field: String) extends Loc

  case class Const(value: Int, sort: Sort) extends Val

  case class App(fun: Fun, args: List[Val])

  sealed trait Heap {
    def from(that: Heap): Heap = ??? // subst that for emp and reduce, possibly introduce case splits
  }
  case object Emp extends Heap
  case class Load(loc: Loc, heap: Heap) extends Heap
  case class Store(loc: Loc, value: Val, heap: Heap) extends Heap */
}
