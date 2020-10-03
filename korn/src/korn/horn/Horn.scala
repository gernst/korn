package korn.horn

import korn.smt._

case class Config(branch: Branch, loop: Loop)

object Config {
  def apply(which: String): Config = {
    which match {
      case "default" =>
        Config(Branch.default, Loop.default)
      case "summaries" =>
        Config(Branch.relational, Loop.summaries(only = false))
      case "summaries-only" =>
        Config(Branch.relational, Loop.summaries(only = true))
    }
  }
}

sealed trait Contract {
  def enter(st: State, proc: Proc): State
  def leave(st: State, proc: Proc)
  def leave(st: State, res: Pure, proc: Proc)
}

sealed trait Branch {
  def join(st0: State, st1: State, reason1: String, st2: State, reason2: String, proc: Proc): State
  def label(label: String, st0: State, st1: State, proc: Proc): State
  def goto(label: String, st0: State, st1: State, proc: Proc)
}

sealed trait Loop {
  def enter(st0: State, st1: State, proc: Proc): (Pred, Pred, State)
  def term(hyp: Hyp, proc: Proc)
  def iter(si2: State, hyp: Hyp, proc: Proc)
  def leave(st0: State, hyp: Hyp, proc: Proc): State

  def break(st0: State, st1: State, hyp: Hyp, proc: Proc)
  def return_(st0: State, st1: State, hyps: List[Hyp], proc: Proc): State
  def goto(label: String, st0: State, st1: State, hyps: List[Hyp], proc: Proc): State
}

object Contract {
  def apply(name: String) = {
    name match {
      case "main" => main
      case _      => default
    }
  }

  object main extends Contract {
    def enter(st: State, proc: Proc): State = { st }
    def leave(st: State, proc: Proc) {}
    def leave(st: State, res: Pure, proc: Proc) {}
  }

  object default extends Contract {
    def enter(st0: State, proc: Proc): State = {
      import proc._
      import proc.unit._

      val pre = pres(name)
      val prop = external.apply(pre, st0)
      st0 and prop
    }

    def leave(st: State, proc: Proc) {
      import proc._
      import proc.unit._

      val (post, ret) = posts(name)

      val prop = if (ret.isEmpty) {
        external.apply(post, st)
      } else {
        // implicitly return 0
        external.apply(post, Pure.zero, st)
      }

      clause(st, prop, "post " + name)
    }

    def leave(st: State, res: Pure, proc: Proc) {
      import proc._
      import proc.unit._

      val (post, ret) = posts(name)

      val prop = if (ret.isEmpty) {
        // discard return, warning only in gcc
        external.apply(post, st)
      } else {
        external.apply(post, res, st)
      }

      clause(st, prop, "post " + name)
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

  object default extends Branch {
    def join(st0: State, st1: State, reason1: String, st2: State, reason2: String, proc: Proc): State = {
      import proc._
      val pred = internal.here($if newLabel name)
      now(pred, st1, reason1)
      now(pred, st2, reason2)
      from(pred, internal.arbitrary)
    }

    def label(label: String, st0: State, st1: State, proc: Proc): State = {
      import proc._
      val pred = internal.here($label newLabel (name, label))
      now(pred, st1, "label " + label)
      from(pred, internal.arbitrary)
    }

    def goto(label: String, st0: State, st1: State, proc: Proc) {
      import proc._
      val pred = internal.here($label newLabel (name, label))
      now(pred, st1, "goto " + label)
    }
  }

  object relational extends Branch {
    def join(st0: State, st1: State, reason1: String, st2: State, reason2: String, proc: Proc): State = {
      import proc._
      val pred = internal.rel($if newLabel name)
      now(pred, st0, st1, reason1)
      now(pred, st0, st2, reason2)
      from(pred, st0, internal.arbitrary)
    }

    def label(label: String, st0: State, st1: State, proc: Proc): State = {
      import proc._
      val pred = internal.rel($label newLabel (name, label))
      now(pred, st0, st1, "label " + label)
      from(pred, st0, internal.arbitrary)
    }

    def goto(label: String, st0: State, st1: State, proc: Proc) {
      import proc._
      val pred = internal.rel($label newLabel (name, label))
      // Note: using st0 here bridges the correct origin
      //       wrt. labels for non-local forward control-flow inside a loop,
      //       alternatively fix the origin here as st2
      //       (would that be better for non-local loop entries?)
      now(pred, st0, st1, "goto " + label)
    }
  }
}

object Loop {
  def apply(config: String) = {
    config match {
      // case "default" => default
      // case "relational" => relational
      case "summaries" => summaries
    }
  }

  object $inv extends korn.Counter {
    def newLabel(prefix: String) = "$" + prefix + "_inv" + next
  }

  object $sum extends korn.Counter {
    def newLabel(prefix: String) = "$" + prefix + "_sum" + next
  }

  /** non-relational invariants and loop final states */
  object default extends Loop {
    def enter(st0: State, st1: State, proc: Proc): (Pred, Pred, State) = {
      import proc._
      val inv = internal.here($inv newLabel name)
      val sum = internal.here($sum newLabel name)
      now(inv, st1, "loop entry " + inv.name)
      val si = from(inv, internal.arbitrary)
      (inv, sum, si)
    }

    def term(hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, si0, sin, _, _) = hyp
      now(sum, sin, "loop term " + sum.name)
    }

    def iter(si2: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      now(inv, si2, "forwards " + inv.name)
    }

    def leave(st0: State, hyp: Hyp, proc: Proc): State = {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      from(sum, internal.arbitrary)
    }

    def break(st0: State, st1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      now(sum, st1, "break " + sum.name)
    }

    def return_(st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      st1
    }

    def goto(label: String, st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      st1
    }
  }

  /** non-relational invariants and relational loop summaries */
  case class summaries(only: Boolean) extends Loop {
    def enter(st0: State, st1: State, proc: Proc): (Pred, Pred, State) = {
      import proc._
      val inv = internal.here($inv newLabel name)
      val sum = internal.rel($sum newLabel name)
      now(inv, st1, "loop entry " + inv.name)
      val si0 = from(inv, internal.arbitrary)
      (inv, sum, si0)
    }

    def term(hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, sin, _, _) = hyp

      val st = sin maybePrune (inv, keep = !only)
      now(sum, st, st, "loop term " + sum.name)
    }

    def iter(si2: State, hyp: Hyp, proc: Proc) {
      import proc._
      import proc.unit._
      val Hyp(inv, sum, _, _, sty, _) = hyp
      now(inv, si2, "forwards " + inv.name)

      val st = sty maybePrune (inv, keep = !only)
      val stn = internal.arbitrary
      val prem = internal.apply(sum, si2, stn)
      val concl = internal.apply(sum, sty, stn)
      clause(st and prem, concl, "backwards " + sum.name)
    }

    def leave(st0: State, hyp: Hyp, proc: Proc): State = {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      from(sum, st0, internal.arbitrary)
    }

    def break(st0: State, st1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, siy, _) = hyp
      now(sum, siy, st1, "break " + sum.name)
    }

    def return_(st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      import proc._
      var st2 = st1

      //* collect all inductive hypotheses */
      for (hyp <- hyps) {
        val Hyp(inv, sum, si0, _, siy, _) = hyp
        now(sum, siy, st2, "return " + sum.name)
        val concl = internal.apply(sum, si0, st2)
        st2 = st2 and concl
      }

      st2
    }

    def goto(label: String, st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      import proc._
      import scala.util.control.Breaks
      var st2 = st1

      Breaks.breakable {
        //* collect all inductive hypotheses of loops that are left */
        for (hyp <- hyps) {
          val Hyp(inv, sum, si0, _, siy, dont) = hyp
          if (dont contains label)
            Breaks.break

          now(sum, siy, st2, "return " + sum.name)
          val concl = internal.apply(sum, si0, st2)
          st2 = st2 and concl
        }
      }

      st2
    }
  }
}
