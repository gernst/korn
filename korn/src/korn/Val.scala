package korn

object Val {
  sealed trait Val
  sealed trait Sort
  sealed trait Fun

  case class Signed(name: String, min: Int, max: Int) extends Sort
  case class Unsigned(name: String, min: Int, max: Int) extends Sort

  case class Struct() extends Sort

  case class Arr(value: Pure, length: Pure) extends Val
  case class Arr2(values: List[Pure]) extends Val

  sealed trait Loc extends Val
  case class Ptr(index: Int, sort: Sort) extends Loc
  case class Index(arr: Pure, index: Pure) extends Loc
  case class Member(base: Pure, field: String) extends Loc

  case class Var(name: String, sort: Sort) extends Val
  case class Const(value: Int, sort: Sort) extends Val

  case class App(fun: Fun, args: List[Val])

  sealed trait Heap {
    def from(that: Heap): Heap = ??? // subst that for emp and reduce, possibly introduce case splits
  }
  case object Emp extends Heap
  case class Load(loc: Loc, heap: Heap) extends Heap
  case class Store(loc: Loc, value: Val, heap: Heap) extends Heap
}
