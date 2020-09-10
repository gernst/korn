package korn

class Counter {
  var _index = 0

  def next = {
    _index += 1
    _index
  }
}
