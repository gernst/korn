package korn.horn

import korn.smt._

sealed trait Loop {
  def term(st1: State)
  def iter(st1: State)
  def break(st1: State)
  def return_(st1: State): State
  def goto(label: String, st1: State): State
}

class Loops(proc: Proc) {
  import proc.unit._
  import proc._

  case object default extends Loop {
    def term(st1: State) {}
    def iter(st1: State) {}
    def break(st1: State) {}
    def return_(st1: State): State = st1
    def goto(label: String, st1: State): State = st1
  }

  case class inv(inv: Pred, sum: Pred, stz: State) extends Loop {
    def term(st1: State) {
      now(sum, stz, st1, "loop term " + sum.name)
    }

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

  case class sum(inv: Pred, sum: Pred, stz: State, sty: State, dont: Set[String], min: Boolean)
      extends Loop {
    def term(st1: State) {
      if (min) {
        val st2 = st1 without inv
        now(sum, st2, st2, "loop term " + sum.name)
      } else {
        now(sum, st1, st1, "loop term " + sum.name)
      }
    }

    def iter(st1: State) {
      now(inv, stz, st1, "forwards " + inv.name)

      val stn = st1 ++ havoc
      val prem = apply(sum, internal.names, st1, stn)
      val concl = apply(sum, internal.names, sty, stn)

      if (min) {
        val st2 = st1 without inv
        clause(st2 and prem, concl, "backwards " + sum.name)
      } else {
        clause(st1 and prem, concl, "backwards " + sum.name)
      }
    }

    def break(st1: State) = {
      now(sum, sty, st1, "break " + sum.name)
    }

    def return_(st1: State) = {
      now(sum, sty, st1, "return " + sum.name)
      val concl = apply(sum, internal.names, stz, st1)
      st1 and concl
    }

    def goto(label: String, st1: State) = {
      if (dont contains label) {
        st1
      } else {
        now(sum, sty, st1, "goto " + sum.name)
        val concl = apply(sum, internal.names, stz, st1)
        st1 and concl
      }
    }
  }
}
