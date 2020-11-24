package korn

import java.io.InputStream

case class Loc(line: Int, column: Int)

case class Error(msg: String) extends RuntimeException {
  override def toString = msg
}

class Counter {
  var _index = 0

  def next = {
    _index += 1
    _index
  }
}

object Digraph {
  /* Frank DeRemer and Thomas Pennello:
   * Efficient computation of LALR (1) look-ahead sets.
   * ACM Transactions on Programming Languages and Systems (TOPLAS), 4(4), pp.615-649, 1982.
   *
   * solve
   *   F(x) = I(x) u U { F(y) | (x, y) in R }
   * for
   *   F(x)
   */
  import scala.collection.mutable

  def digraph[X, A](states: Iterable[X], init: X => Iterable[A], succ: X => Iterable[X]): (X => mutable.Set[A]) = {
    val stack = mutable.Stack[X]()
    val depth = mutable.Map[X, Int]()
    val result = mutable.Map[X, mutable.Set[A]]()

    for (x <- states) {
      start(x)
    }

    def start(x: X) {
      if (!(depth contains x))
        traverse(x)
    }

    def traverse(x: X) {
      stack push x
      val d = stack.length

      depth(x) = d
      result(x) = mutable.Set()
      result(x) ++= init(x)

      for (y <- succ(x)) {
        start(y)

        depth(x) = Math.min(depth(x), depth(y))
        result(x) = result(x) union result(y)
      }

      if (depth(x) == d) {
        do {
          val y = stack.top
          depth(y) = Int.MaxValue
          result(y) = result(x)
        } while (stack.pop() != x)
      }
    }

    result
  }
}
