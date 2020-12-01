package korn
import korn.smt._

import java.io.BufferedReader
import java.io.PrintStream

object Backend {
  def read(in: BufferedReader, file: String) = {
    val status = in.readLine()

    status match {
      case "sat" =>
        val model = Backend.model(in)
        Correct(model)

      case "unsat" =>
        var trace = Backend.counterexample(in)
        Tool.confirm(file, trace)

      case _ =>
        Unknown(status)
    }
  }

  def model(in: BufferedReader): Model = {
    val scanner = new Scanner(in)
    val parser = new Parser()
    val res = parser.parse(scanner)
    val model = res.asInstanceOf[Model]
    model
  }

  def counterexample(in: BufferedReader): List[(String, BigInt)] = {
    var trace: List[(String, BigInt)] = Nil
    var line = in.readLine()
    while (line != null) {
      val pos = line indexOf "__VERIFIER_nondet_"
      if (pos >= 0) {
        line = line drop pos
        val lp = line indexOf "("
        val rp = line indexOf ")"
        val fun = line take lp
        val res = line drop (lp + 1) take (rp - lp - 1)
        trace = (fun, BigInt(res)) :: trace
      }
      line = in.readLine()
    }
    trace
  }

  def bind[V, T](vars: Iterable[V], typing: V => T): String = {
    import korn.smt.sexpr
    sexpr(vars map { x => sexpr(x, typing(x)) })
  }

  def write(unit: korn.horn.Unit, model: Boolean, out: PrintStream) {
    import korn.smt.sexpr
    out.println(sexpr("set-logic", "HORN"))

    if (model) {
      out.println(sexpr("set-option", ":produce-models", "true"))
    }

    out.println()

    if (unit.pointers) {
      out.println(sexpr("declare-sort", "Pointer", "1"))
      out.println()
    }

    for (pred <- unit.preds ++ unit.pres.values ++ unit.posts.values) {
      val korn.smt.Fun(name, args, _) = pred.fun
      val defn = sexpr("declare-fun", name, sexpr(args), "Bool")
      out.println(defn)
    }
    out.println()

    for (clause <- unit.clauses) {
      val korn.smt.Clause(path, head, reason) = clause
      val bound = clause.free map (_.toString)

      out.println("; " + reason)
      out.println("(assert")
      if (bound.nonEmpty)
        out.println("  (forall " + bind(bound, unit.typing))

      if (path.nonEmpty) {
        out.println(path.mkString("    (=> (and ", "\n             ", ")"))
      }

      out.print("        " + head)

      if (path.nonEmpty)
        out.print(")")

      if (bound.nonEmpty)
        out.print(")")

      out.println(")")
      out.println()
    }

    out.println(sexpr("check-sat"))

    if (model) {
      out.println(sexpr("get-model"))
    }

    out.flush()
  }

}
