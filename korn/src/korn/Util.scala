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
