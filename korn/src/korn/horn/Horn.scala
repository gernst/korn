package korn.horn

import korn.smt._

sealed trait Contract {
  def enter(st: State, proc: Proc): State
  def leave(st: State, proc: Proc)
  def leave(st: State, res: Pure, proc: Proc)
}

sealed trait Branch {
  def join(st0: State, sa1: State, ra: String, sb1: State, rb: String, proc: Proc): State
  def join(sa0: State, sa1: State, ra: String, sb0: State, sb1: State, rb: String, proc: Proc): (State, State)

  def label(label: String, st0: State, st1: State, proc: Proc): (State, State)
  def goto(label: String, st0: State, st1: State, proc: Proc)
}

sealed trait Loop {
  def enter(st0: State, st1: State, proc: Proc): (Pred, Pred, State, State)
  def term(hyp: Hyp, proc: Proc)
  def iter(sb0: State, sb1: State, hyp: Hyp, proc: Proc)
  def leave(hyp: Hyp, proc: Proc): (State, State)

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
    def join(st0: State, sa1: State, ra: String, sb1: State, rb: String, proc: Proc): State = {
      import proc._
      val pred = internal.here($if newLabel name)
      now(pred, sa1, ra)
      now(pred, sb1, rb)
      from(pred, internal.arbitrary)
    }

    def join(sa0: State, sa1: State, ra: String, sb0: State, sb1: State, rb: String, proc: Proc): (State, State) = {
      import proc._
      val pred = internal.here(($if newLabel name))
      now(pred, sa1, ra)
      now(pred, sb1, rb)
      val st0 = internal.arbitrary
      (st0, from(pred, internal.arbitrary))
    }

    def label(label: String, st0: State, st1: State, proc: Proc): (State, State) = {
      import proc._
      val pred = internal.here($label newLabel (name, label))
      now(pred, st1, "label " + label)
      val sr0 = internal.arbitrary
      val sr1 = from(pred, internal.arbitrary)
      (sr0, sr1)
    }

    def goto(label: String, st0: State, st1: State, proc: Proc) {
      import proc._
      val pred = internal.here($label newLabel (name, label))
      now(pred, st1, "goto " + label)
    }
  }

  object relational extends Branch {
    def join(st0: State, sa1: State, ra: String, sb1: State, rb: String, proc: Proc): State = {
      import proc._
      val pred = internal.rel($if newLabel name)
      now(pred, st0, sa1, ra)
      now(pred, st0, sb1, rb)
      from(pred, st0, internal.arbitrary)
    }

    def join(sa0: State, sa1: State, ra: String, sb0: State, sb1: State, rb: String, proc: Proc): (State, State) = {
      import proc._
      val pred = internal.rel($if newLabel name)
      now(pred, sa0, sa1, ra)
      now(pred, sb0, sb1, rb)
      val st0 = internal.arbitrary
      (st0, from(pred, st0, internal.arbitrary))
    }

    def label(label: String, st0: State, st1: State, proc: Proc): (State, State) = {
      import proc._
      val pred = internal.rel($label newLabel (name, label))
      now(pred, st0, st1, "label " + label)
      // ensure the path comes from some arbitrary origin sr0
      // such that pred(sr0, sr1)
      val sr0 = internal.arbitrary
      val sr1 = from(pred, sr0, internal.arbitrary)
      (sr0, sr1)
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
      case "default" => default
      case "relational" => relational
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
    def enter(st0: State, st1: State, proc: Proc): (Pred, Pred, State, State) = {
      import proc._
      val inv = internal.here($inv newLabel name)
      val sum = internal.here($sum newLabel name)
      now(inv, st1, "loop entry " + inv.name)
      val si0 = internal.arbitrary
      val si1 = from(inv, internal.arbitrary)
      (inv, sum, si0, si1)
    }

    def term(hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, si0, sin, _, _) = hyp
      now(sum, sin, "loop term " + sum.name)
    }

    def iter(sb0: State, sb1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      now(inv, sb1, "forwards " + inv.name)
    }

    def leave(hyp: Hyp, proc: Proc): (State, State) = {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      val sw0 = internal.arbitrary
      val sw1 = from(sum, internal.arbitrary)
      (sw0, sw1)
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

  /** relational invariants and relational loop postconditions (no backwards rule) */
  object relational extends Loop {
    def enter(st0: State, st1: State, proc: Proc): (Pred, Pred, State, State) = {
      import proc._
      val inv = internal.rel($inv newLabel name)
      val sum = internal.rel($sum newLabel name)
      now(inv, st1, st1, "loop entry " + inv.name)
      val si0 = internal.arbitrary
      val si1 = from(inv, si0, internal.arbitrary)
      (inv, sum, si0, si1)
    }

    def term(hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, si0, sin, _, _) = hyp
      now(sum, si0, sin, "loop term " + sum.name)
    }

    def iter(sb0: State, sb1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      now(inv, sb0, sb1, "forwards " + inv.name)
    }

    def leave(hyp: Hyp, proc: Proc): (State, State) = {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      val sw0 = internal.arbitrary
      val sw1 = from(sum, sw0, internal.arbitrary)
      (sw0, sw1)
    }

    def break(st0: State, st1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      now(sum, st0, st1, "break " + sum.name)
    }

    def return_(st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      st1
    }

    def goto(label: String, st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      st1
    }
  }

  /** non-relational invariants and relational loop summaries */
  object summaries extends Loop {
    def enter(st0: State, st1: State, proc: Proc): (Pred, Pred, State, State) = {
      import proc._
      val inv = internal.here($inv newLabel name)
      val sum = internal.rel($sum newLabel name)
      now(inv, st1, "loop entry " + inv.name)
      val si0 = internal.arbitrary
      val si1 = from(inv, internal.arbitrary)
      (inv, sum, si0, si1)
    }

    def term(hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, si0, sin, _, _) = hyp
      now(sum, si0, sin, "loop term " + sum.name)
    }

    def iter(sb0: State, sb1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      now(inv, sb1, "forwards " + inv.name)
    }

    def leave(hyp: Hyp, proc: Proc): (State, State) = {
      import proc._
      val Hyp(inv, sum, _, _, _, _) = hyp
      val sw0 = internal.arbitrary
      val sw1 = from(sum, sw0, internal.arbitrary)
      (sw0, sw1)
    }

    def break(st0: State, st1: State, hyp: Hyp, proc: Proc) {
      import proc._
      val Hyp(inv, sum, _, _, sty, _) = hyp
      now(sum, sty, st1, "break " + sum.name)
    }

    def return_(st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      st1
    }

    def goto(label: String, st0: State, st1: State, hyps: List[Hyp], proc: Proc): State = {
      st1
    }
  }

  /* case class sum(inv: Pred, sum: Pred, stz: State, sty: State, dont: Set[String], min: Boolean)
      extends Loop {

    def enter(st0: State, st1: State, proc: Proc) = {
      ???
    }

    def leave(st1: State, proc: Proc) = {
      ???
    }

    def term(st1: State, proc: Proc) {
      import proc._

      if (min) {
        val st2 = st1 without inv
        now(sum, st2, st2, "loop term " + sum.name)
      } else {
        now(sum, st1, st1, "loop term " + sum.name)
      }
    }

    def iter(st1: State, proc: Proc) {
      import proc._

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

    def break(st1: State, proc: Proc) = {
      import proc._

      now(sum, sty, st1, "break " + sum.name)
    }

    def return_(st1: State, proc: Proc) = {
      import proc._

      now(sum, sty, st1, "return " + sum.name)
      val concl = apply(sum, internal.names, stz, st1)
      st1 and concl
    }

    def goto(label: String, st1: State, proc: Proc) = {
      import proc._

      if (dont contains label) {
        st1
      } else {
        now(sum, sty, st1, "goto " + sum.name)
        val concl = apply(sum, internal.names, stz, st1)
        st1 and concl
      }
    }
  } */
}

/*

        val inv = here($inv.newLabel)
        val sum = here($sum.newLabel)

        // generalize state to come from the invariant
        // stz is the new origin at the loop head
        // sti is an arbitrary state that satisfies the invariant wrt. stz
        val (stz, sti) = generalize(inv, st1, "loop entry " + inv.name)

        // evaluate test, and branch into states sty, stn
        val (_test, st) = rval_test(test, stz, sti)
        val sty = st and _test
        val stn = st and !_test

        // step case (iterate once):
        // execute body to state st_ and re-establish invariant wrt. loop origin stz
        val hyp = Hyp(inv, sum, stz, sty, dont)

        withinLoop(hyp) {
          // base case (terminate loop):
          // establish summary for going round the loop
          // from negated test and invariant in stn
          // now(sum, stz, stn, "loop term " + sum.name)
          loop.term(stn, this)

          val (sb0, sb1) = local(body, stz, sty)
          val st_ = ???
          loop.iter(st_, this)

          // the result after the loop is another arbitrary state
          // that satisfies the sumary wrt. st1
          val st2 = st1 ++ havoc
          val prop = apply(sum, internal.names, st1, st2)
          val st3 = st2 and prop
          st3

          loop.leave(st1, this)

          ???
        }
 */
