package korn.horn

import korn.c._
import korn.smt._

sealed trait Val {
  def unary_-(): Val = ???

  def +(that: Val): Val = ???
  def -(that: Val): Val = ???
  def *(that: Val): Val = ???
  def /(that: Val): Val = ???
  def %(that: Val): Val = ???

  def ===(that: Val): Pure = ???
  def !==(that: Val): Pure = ???

  def <(that: Val): Pure = ???
  def <=(that: Val): Pure = ???
  def >(that: Val): Pure = ???
  def >=(that: Val): Pure = ???

  def select(key: Val): Val = ???
  def store(key: Val, arg: Val): Val = ???

  def prop: Pure = ???
}

class Ptr extends Val

object Val {
  case object unit extends Val

  def to(arg: Val): Pure = ???
  def to(args: Option[Val]): Option[Pure] = ???
  def to(args: List[Val]): List[Pure] = ???
  // def from(pure: Pure): Val = ???
  // def from(args: Option[Pure]): Option[Val] = ???
  // def from(pures: List[Pure]): List[Val] = pures map from

  case class const(value: Any, typ: Type) extends Val
  case class number(pure: Pure, typ: Type) extends Val

  case class question(test: Pure, left: Val, right: Val) extends Val
  case class bool(arg: Pure) extends Val
  case class truth(arg: Val) extends Val

  case class array(content: Pure, length: Pure, elem: Type) extends Val
  case class struct(fields: Map[String, Val]) extends Val

  case class index(base: Ptr, index: Pure) extends Val
  case class member(base: Ptr, field: String) extends Val

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
