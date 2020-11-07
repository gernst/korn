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
  def const(int: Int): Val = ???
  
  def to(arg: Val): Pure = ???
  def to(args: List[Val]): List[Pure] = ???
  def from(pure: Pure): Val = ???
  def from(pures: List[Pure]): List[Val] = pures map Val.from

  case class question(test: Pure, left: Val, right: Val) extends Val
  case class bool(arg: Pure) extends Val
  case class truth(arg: Val) extends Val

  case class unbounded(pure: Pure) extends Val
  case class signed(pure: Pure, bytes: Int) extends Val
  case class unsigned(pure: Pure, bytes: Int) extends Val

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

  case class Var(name: String, sort: Sort) extends Val
  case class Const(value: Int, sort: Sort) extends Val

  case class App(fun: Fun, args: List[Val])

  sealed trait Heap {
    def from(that: Heap): Heap = ??? // subst that for emp and reduce, possibly introduce case splits
  }
  case object Emp extends Heap
  case class Load(loc: Loc, heap: Heap) extends Heap
  case class Store(loc: Loc, value: Val, heap: Heap) extends Heap */
}
