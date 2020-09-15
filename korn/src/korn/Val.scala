package korn

object Val {
  /* sealed trait Sort
  sealed trait Fun

  case class Signed(name: String, min: Int, max: Int) extends Sort
  case class Unsigned(name: String, min: Int, max: Int) extends Sort

  case class Struct() extends Sort

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
