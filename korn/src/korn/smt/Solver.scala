package korn.smt

sealed trait Status
case object Sat extends Status
case object Unsat extends Status
case object Unknown extends Status

case class Def(args: List[Param], body: Pure)
case class Model(defs: Map[String, Def])

object Model extends (List[(String, Def)] => Model) {
  def apply(defs: List[(String, Def)]): Model = {
    Model(defs.toMap)
  }
}

trait Solver {
    def declare(fun: Fun)
    def declare(pred: Pred)
    def assert(bound: List[(String, Sort)], prems: List[Pure], head: Pure)
    def solve: Status
    def model: Option[Model]
}

object Solver {
  def process(args: String*) {
    
  }
}