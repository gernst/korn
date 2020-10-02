package korn.horn

import korn.smt._

sealed trait Contract {
  def enter(st: State, proc: Proc): State
  def leave(st: State, proc: Proc)
  def leave(st: State, res: Pure, proc: Proc)
}

object Contract {
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
      val prop = apply(pre, external.names, st0)
      st0 and prop
    }

    def leave(st: State, proc: Proc) {
      import proc._
      import proc.unit._
      
      val (post, ret) = posts(name)

      val prop = if (ret.isEmpty) {
        apply(post, external.names, st)
      } else {
        // implicitly return 0
        apply(post, external.names, Pure.zero, st)
      }

      clause(st, prop, "post " + name)
    }

    def leave(st: State, res: Pure, proc: Proc) {
      import proc._
      import proc.unit._

      val (post, ret) = posts(name)
      korn.ensure(ret.nonEmpty, "return value given for " + name)
      val prop = apply(post, external.names, res, st)
      clause(st, prop, "post " + name)
    }
  }
}
