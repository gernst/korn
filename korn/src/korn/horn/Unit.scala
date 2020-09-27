package korn.horn

import scala.collection.mutable

import korn.c._
import korn.smt._

class Unit(stmts: List[Stmt]) {

  /** global data types */
  val typedefs = mutable.Map[String, Type]()
  val structs = mutable.Map[String, Option[List[Field]]]()
  val unions = mutable.Map[String, Option[List[Field]]]()
  val enums = mutable.Map[String, Option[List[String]]]()

  /** global C variables and functions */
  val vars = mutable.Map[String, Type]()
  val funs = mutable.Map[String, (Type, List[Type])]()

  /** numeric constants defined by enums */
  val consts = mutable.Map[String, Pure]()

  /** collected predicates and clauses */
  val pres = mutable.Map[String, Pred]()
  val posts = mutable.Map[String, (Pred, Option[Sort])]()

  var preds = mutable.Set[Pred]()
  val clauses = mutable.Buffer[Clause]()

  /** types of additional logical variables */
  var typing = mutable.Map[String, Sort]()

  /** symbolic state with global variables */
  var state: State = State.empty

  object sig extends Sig(this)
  object eval extends Eval(this)
  object exec extends Exec(this)
  object horn extends Horn(this)
}
