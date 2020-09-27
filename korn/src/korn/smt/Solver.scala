package korn.smt

sealed trait Status
case object Sat extends Status
case object Unsat extends Status
case object Unknown extends Status

case class Model(defs: Map[String, (List[(Var, Sort)], Pure)])

object Model extends (List[(String, (List[(Var, Sort)], Pure))] => Model) {
  def apply(args: List[(String, (List[(Var, Sort)], Pure))]): Model = {
    Model(args.toMap)
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