package korn.horn

import korn.smt._

sealed trait Loop {
  def iter(st1: State)
  def break(st1: State)
  def return_(st1: State): State
  def goto(label: String, st1: State): State
}

class Loops(proc: Proc) {
  import proc.unit._
  import proc._

  case object default extends Loop {
    def iter(st1: State) {}
    def break(st1: State) {}
    def return_(st1: State): State = st1
    def goto(label: String, st1: State): State = st1
  }

  case class inv(inv: Pred, sum: Pred, stz: Origin) extends Loop {
    def iter(st1: State) {
      now(inv, stz, st1, "forwards " + inv.name)
    }

    def break(st1: State) = {
      now(sum, stz, st1, "break " + sum.name)
    }

    def return_(st1: State) = {
      st1
    }

    def goto(label: String, st1: State) = {
      st1
    }
  }

  case class sum(inv: Pred, sum: Pred, stz: Origin, sty: State, dont: Set[String]) extends Loop {
    def iter(st1: State) {
      now(inv, stz, st1, "forwards " + inv.name)

      val stn = havoc
      val prem = apply(sum, internal.names, st1.store, stn)
      val concl = apply(sum, internal.names, sty.store, stn)
      clause(st1 and prem, concl, "backwards " + sum.name)
    }

    def break(st1: State) = {
      now(sum, sty.store, st1, "break " + sum.name)
    }

    def return_(st1: State) = {
      now(sum, sty.store, st1, "return " + sum.name)
      val concl = apply(sum, internal.names, stz, st1.store)
      st1 and concl
    }

    def goto(label: String, st1: State) = {
      if (dont contains label) {
        st1
      } else {
        now(sum, sty.store, st1, "goto " + sum.name)
        val concl = apply(sum, internal.names, stz, st1.store)
        st1 and concl
      }
    }
  }
}
