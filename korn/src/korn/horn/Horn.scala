package korn.horn

import korn.smt._

class Horn(unit: Unit) {
  import unit._

  def clause(st: State, phi: Prop, reason: String) {
    val f = (st.path contains False)
    val t = (st.path contains phi) || (phi == True)

    if (!t && !f)
      clauses += Clause(st.path, phi, reason)
  }

  def goal(st: State, phi: Prop, reason: String) {
    clause(st and !phi, False, reason)
  }

  def join(st1: State, reason1: String, st2: State, reason2: String): State = {
    /* val pred = here($if.newLabel)
    now(pred, st1, reason1)
    now(pred, st2, reason2)
    from(pred) */
    ???
  }
}
