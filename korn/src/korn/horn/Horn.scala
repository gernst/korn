package korn.horn

import korn.smt._
import korn.Loc

case class Config(branch: Branch, loop: Loop)

object Config {
  def apply(which: String): Config = {
    which match {
      case "default" =>
        Config(Branch.relational, Loop.invariants(rel = false))
      case "relational" =>
        Config(Branch.relational, Loop.invariants(rel = true))
      case "summaries" =>
        Config(Branch.relational, Loop.summaries(rel = false, only = false, strong = false))
      case "summaries-only" =>
        Config(Branch.relational, Loop.summaries(rel = false, only = true, strong = false))
    }
  }
}

sealed trait Contract {
  def enter(st0: State, proc: Proc): State
  def leave(st0: State, st1: State, res: Option[Val], proc: Proc)
}

sealed trait Branch {
  def join(st0: State, st1: State, reason1: String, st2: State, reason2: String, proc: Proc): State
  def label(label: String, st0: State, st1: State, proc: Proc): State
  def goto(label: String, st0: State, st1: State, proc: Proc)
}

sealed trait Loop {
  def enter(st0: State, st1: State, loc: Loc, proc: Proc): (Step, Step, State)
  def term(hyp: Hyp, loc: Loc, proc: Proc)
  def iter(si1: State, hyp: Hyp, loc: Loc, proc: Proc)
  def leave(hyp: Hyp, proc: Proc): State

  def break(si1: State, hyp: Hyp, proc: Proc)
  def return_(si1: State, hyps: List[Hyp], proc: Proc): State
  def goto(label: String, si1: State, hyps: List[Hyp], proc: Proc): State
}

object Contract {
  def apply(name: String) = {
    name match {
      case "main" => main
      case _      => default
    }
  }

  object main extends Contract {
    def enter(st0: State, proc: Proc) = {
      import proc._
      st0 ++ internal.havoc // preserve global state
    }

    def leave(st0: State, st1: State, res: Option[Val], proc: Proc) = {
      
    }
  }

  object default extends Contract {
    def enter(st0: State, proc: Proc) = {
      import proc._
      import proc.unit._

      val st1 = st0 ++ toplevel.havoc ++ internal.havoc
      val pre = pres(name)
      val prop = pre.eval(st1, toplevel.names, external.names)
      st1 and prop
    }

    def leave(st0: State, st1: State, res: Option[Val], proc: Proc) = {
      import proc._
      import proc.unit._

      val post = posts(name)
      val prop = post.eval(st0, st1, toplevel.names, external.names, res)
      clause(st1, prop, "post " + name)
    }
  }
}

object Branch {
  object $if extends korn.Counter {
    def newLabel(prefix: String) = "$" + prefix + "_if" + next
  }

  object $label {
    def newLabel(prefix: String, label: String) = "$" + prefix + "_" + label
  }

  object relational extends Branch {
    def join(st0: State, st1: State, reason1: String, st2: State, reason2: String, proc: Proc): State = {
      import proc._
      val pred = combined.step($if newLabel name)
      now(pred, st0, st1, reason1)
      now(pred, st0, st2, reason2)
      from(pred, st0, combined.arbitrary)
    }

    def label(label: String, st0: State, st1: State, proc: Proc): State = {
      import proc._
      val pred = combined.step($label.newLabel(name, label))
      now(pred, st0, st1, "label " + label)
      from(pred, st0, combined.arbitrary)
    }

    def goto(label: String, st0: State, st1: State, proc: Proc) {
      import proc._
      val pred = combined.step($label.newLabel(name, label))
      // Note: using st0 here bridges the correct origin
      //       wrt. labels for non-local forward control-flow inside a loop,
      //       alternatively fix the origin here as st2
      //       (would that be better for non-local loop entries?)
      now(pred, st0, st1, "goto " + label)
    }
  }
}

object Loop {
  object $inv extends korn.Counter {
    def newLabel(prefix: String) = "$" + prefix + "_inv" + next
  }

  object $sum extends korn.Counter {
    def newLabel(prefix: String) = "$" + prefix + "_sum" + next
  }

  /** non-relational invariants and loop final states */
  case class invariants(rel: Boolean) extends Loop {
    def enter(st0: State, st1: State, loc: Loc, proc: Proc): (Step, Step, State) = {
      import proc._
      val inv =
        if (!rel) combined.state($inv newLabel name)
        else combined.step($inv newLabel name)
      val sum =
        if (!rel) combined.state($sum newLabel name)
        else combined.step($sum newLabel name)
      now(inv, st1, st1, "loop entry " + inv + " (line " + loc.line + ")")
      val si0 = from(inv, st1, combined.arbitrary)
      (inv, sum, si0)
    }

    def term(hyp: Hyp, loc: Loc, proc: Proc) {
      import proc._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      now(sum, st1, sin, "loop term " + sum + " (line " + loc.line + ")")
    }

    def iter(si1: State, hyp: Hyp, loc: Loc, proc: Proc) {
      import proc._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      now(inv, st1, si1, "forwards " + inv + " (line " + loc.line + ")")
    }

    def leave(hyp: Hyp, proc: Proc): State = {
      import proc._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      from(sum, st1, combined.arbitrary)
    }

    def break(si1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      now(sum, st1, si1, "break " + sum)
    }

    def return_(si1: State, hyps: List[Hyp], proc: Proc): State = {
      si1
    }

    def goto(label: String, si1: State, hyps: List[Hyp], proc: Proc): State = {
      si1
    }
  }

  /** non-relational invariants and relational loop summaries */
  case class summaries(rel: Boolean, only: Boolean, strong: Boolean = false) extends Loop {
    def enter(st0: State, st1: State, loc: Loc, proc: Proc): (Step, Step, State) = {
      import proc._
      val inv =
        if (!rel) combined.state($inv newLabel name)
        else combined.step($inv newLabel name)
      val sum = combined.step($sum newLabel name)
      now(inv, st1, st1, "loop entry " + inv + " (line " + loc.line + ")")
      val si0 = from(inv, st1, combined.arbitrary)
      (inv, sum, si0)
    }

    def term(hyp: Hyp, loc: Loc, proc: Proc) {
      import proc._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      val st = sin.maybePrune(inv, keep = !only)
      now(sum, st, st, "loop term " + sum + " (line " + loc.line + ")")
    }

    def iter(si1: State, hyp: Hyp, loc: Loc, proc: Proc) {
      import proc._
      import proc.unit._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      now(inv, si0, si1, "forwards " + inv + " (line " + loc.line + ")")

      val st = si1.maybePrune(inv, keep = !only)
      val stz = combined.arbitrary
      val prem = sum(si1, stz)
      val concl = sum(siy, stz)
      clause(st and prem, concl, "backwards " + sum + " (line " + loc.line + ")")
    }

    def leave(hyp: Hyp, proc: Proc): State = {
      import proc._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      from(sum, st1, st1 ++ combined.havoc)
    }

    def break(si1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
      now(sum, siy, st1, "break " + sum)
    }

    def return_(si1: State, hyps: List[Hyp], proc: Proc): State = {
      if (strong) {
        import proc._
        var st2 = si1

        //* collect all inductive hypotheses */
        for (hyp <- hyps) {
          val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
          now(sum, siy, st2, "return " + sum)
          val concl = sum(si0, st2)
          st2 = st2 and concl
        }

        st2
      } else {
        si1
      }
    }

    def goto(label: String, si1: State, hyps: List[Hyp], proc: Proc): State = {
      if (strong) {
        import proc._
        import scala.util.control.Breaks
        var st2 = si1

        Breaks.breakable {
          //* collect all inductive hypotheses of loops that are left */
          for (hyp <- hyps) {
            val Hyp(inv, sum, st1, si0, sin, siy, dont) = hyp
            if (dont contains label)
              Breaks.break

            now(sum, siy, st2, "return " + sum)
            val concl = sum(si0, st2)
            st2 = st2 and concl
          }
        }
        st2
      } else {
        si1
      }
    }
  }
}
