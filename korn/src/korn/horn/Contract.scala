package korn.horn

import korn.smt._

sealed trait Contract {
  def enter(st: State, proc: Proc): State
  def leave(st: State, proc: Proc)
  def leave(st: State, res: Pure, proc: Proc)
}

object Contract {
  def apply(name: String) =
    name match {
      case "main" => main
      case _      => relational
    }

  object main extends Contract {
    def enter(st: State, proc: Proc): State = { st }
    def leave(st: State, proc: Proc) {}
    def leave(st: State, res: Pure, proc: Proc) {}
  }

  object relational extends Contract {
    def enter(st0: State, proc: Proc): State = {
      import proc._
      import proc.unit._
      val pre = pres(name)
      val prop = proc.apply(pre, external.names, st0)
      st0 and prop
    }

    def leave(st: State, proc: Proc) {
      import proc._
      import proc.unit._

      val (post, ret) = posts(name)

      val prop = if (ret.isEmpty) {
        proc.apply(post, external.names, st)
      } else {
        // implicitly return 0
        proc.apply(post, external.names, Pure.zero, st)
      }

      clause(st, prop, "post " + name)
    }

    def leave(st: State, res: Pure, proc: Proc) {
      import proc._
      import proc.unit._

      val (post, ret) = posts(name)

      val prop = if (ret.isEmpty) {
        // discard return, warning only in gcc
        proc.apply(post, external.names, st)
      } else {
        proc.apply(post, external.names, res, st)
      }

      clause(st, prop, "post " + name)
    }
  }
}
