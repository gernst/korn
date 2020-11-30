package korn

import scala.collection.mutable
import scala.annotation.tailrec

import java.io.Reader
import java.io.File
import java.io.FileReader
import java.io.PrintStream
import java.io.InputStream
import java.io.OutputStream
import java.io.FileOutputStream
import java.io.InputStreamReader
import java.io.BufferedReader
import java.io.FileWriter

object Main {
  val version = "0.2"

  var dry = false
  var config = "default"
  var debug = false
  var quiet = false
  var model = false
  var float = false
  var witness = false
  var witness_graphml = None: Option[String]
  var witness_quant = false
  var write = false
  var cex = false // only Eldarica currently
  var timeout = 900 // SV-COMP default
  var prove: Seq[String] = Seq()

  var files = mutable.Buffer[String]()
  var out = System.out

  def pipe(cmd: String*) = {
    val builder = new ProcessBuilder(cmd: _*)
    val proc = builder.start()
    val in = new PrintStream(proc.getOutputStream())
    val out = proc.getInputStream()
    val err = proc.getErrorStream()
    (in, out, err)
  }

  def dump(path: String) = {
    val out = new PrintStream(new FileOutputStream(path))
    out
  }

  def cat(in: InputStream, out: OutputStream) {
    in.transferTo(out)
    out.flush()
  }

  def read(in: InputStream, out: PrintStream, file: String, unit: horn.Unit) {
    val reader = new BufferedReader(new InputStreamReader(in))
    val status = reader.readLine()

    status match {
      case "sat" =>
        val scanner = new korn.smt.Scanner(reader)
        val parser = new korn.smt.Parser()
        val res = parser.parse(scanner)
        val model = res.asInstanceOf[korn.smt.Model]

        if (debug) {
          for (df <- model.defs)
            System.err.println(df)
        }

        val graphml = witness_graphml getOrElse file + ".graphml"
        val witness = new PrintStream(new File(graphml))
        Witness.proof(file, model, unit, witness)

        out.println("sat")

      case "unsat" =>
        var trace: List[(String, BigInt)] = Nil
        var line = reader.readLine()
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
          line = reader.readLine()
        }

        if (debug) {
          for ((fun, res) <- trace)
            System.err.println(fun + "() = " + res)
        }

        val harness = "__VERIFIER_counterexample.c"
        val cex = new PrintStream(new File(harness))
        Witness.harness(file, trace, cex)
        val ok = Witness.confirm(file, harness, trace)

        if (ok) {
          if (Main.debug)
            System.err.println("counterexample confirmed")

          val graphml = witness_graphml getOrElse file + ".graphml"
          val witness = new PrintStream(new File(graphml))
          Witness.cex(file, trace, unit, witness)
          out.println("unsat")
        } else {
          if (Main.debug)
            System.err.println("counterexample spurious")
          out.println("unknown")
        }

      case _ =>
    }
  }

  @tailrec
  def configure(args: List[String]) {
    args match {
      case Nil =>

      case ("-s" | "-summaries") :: rest =>
        config = "summaries"
        configure(rest)

      case ("-s0" | "-summaries-only") :: rest =>
        config = "summaries-only"
        configure(rest)

      case ("-m" | "-model") :: rest =>
        model = true
        witness = true
        configure(rest)

      case ("-p" | "-parse") :: rest =>
        dry = true
        configure(rest)

      case ("-w" | "-write") :: rest =>
        write = true
        configure(rest)

      case ("-d" | "-debug") :: rest =>
        debug = true
        configure(rest)

      case ("-q" | "-quiet") :: rest =>
        quiet = true
        configure(rest)

      case ("-t" | "-timeout") :: arg :: rest =>
        timeout = arg.toInt
        configure(rest)

      case "-z3" :: rest =>
        prove = Seq("z3", "-t:" + (timeout * 1000))
        write = true
        configure(rest)

      case "-eld" :: rest if model =>
        prove = Seq("eld", "-t:" + timeout, "-ssol", "-cex")
        model = false
        write = true
        configure(rest)

      case "-eld" :: rest =>
        prove = Seq("eld", "-t:" + timeout)
        write = true
        configure(rest)

      case "-float" :: rest =>
        float = true
        configure(rest)

      case "-witness" :: file :: rest =>
        witness_graphml = Some(file)
        configure(rest)

      case "-32" :: rest =>
        c.bits = 32
        configure(rest)

      case "-64" :: rest =>
        c.bits = 64
        configure(rest)

      case "--" :: rest =>
        prove = rest

      case file :: rest =>
        files += file
        configure(rest)
    }
  }

  def smt(path: String) = {
    ensure((path endsWith ".c") || (path endsWith ".i"), "unrecognized file ending: " + path)
    (path dropRight 2) + ".smt2"
  }

  def run(files: List[String]) {
    for (path <- files) {
      try {
        System.out.flush()
        System.err.flush()

        if (debug) System.err.println(path)
        val stmts = korn.c.parse(path)

        if (!dry) {
          object unit extends horn.Unit(stmts)
          unit.run()

          if (prove.isEmpty) {
            if (write) {
              val to = smt(path)
              if (debug) System.err.println(to)
              print(unit, dump(to))
            } else {
              print(unit, System.out)
            }
          } else {
            if (write) {
              if (debug) System.err.println(smt(path))
              val to = smt(path)
              print(unit, dump(to))
              val (_, out, err) = pipe(prove ++ List(to): _*)
              if (!quiet) System.out.print(path + ":")
              if (witness) read(out, System.out, path, unit) else cat(out, System.out)
              if (!quiet) cat(err, System.err)
            } else {
              val (in, out, err) = pipe(prove: _*)
              print(unit, in)
              in.println("(exit)")
              in.flush()
              if (!quiet) System.out.print(path + ":")
              if (witness) read(out, System.out, path, unit) else cat(out, System.out)
              if (!quiet) cat(err, System.err)
              in.close()
            }
          }
        }
      } catch {
        case e: beaver.Parser.Exception =>
          if (!quiet) System.err.println("parser error")
          if (!quiet) System.out.print(path + ":")
          System.out.println("error")
        case e: NotImplementedError =>
          val st = e.getStackTrace()(1)
          val file = st.getFileName + ":" + st.getLineNumber
          val code = st.getClassName + "." + st.getMethodName
          val where = code + " (" + file + ")"
          if (!quiet) System.err.println("not implemented: " + where)
          if (!quiet) System.out.print(path + ":")
          System.out.println("error")
        case e: Error =>
          if (!quiet) System.err.println(e.msg)
          if (!quiet) System.out.print(path + ":")
          System.out.println("error")
        case e: Throwable =>
          if (!quiet) System.err.println("error: " + e.getMessage)
          if (!quiet) e.printStackTrace()
          if (!quiet) System.out.print(path + ":")
          System.out.println("error")
      }
    }
  }

  def print(unit: horn.Unit, out: PrintStream) {
    import korn.smt.sexpr
    out.println(sexpr("set-logic", "HORN"))

    if (model) {
      out.println(sexpr("set-option", ":produce-models", "true"))
      // out.println(sexpr("set-option", ":produce-unsat-cores", "true"))
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
      // out.println(sexpr("get-unsat-core"))
    }

    out.flush()
  }

  def bind[V, T](vars: Iterable[V], typing: V => T): String = {
    import korn.smt.sexpr
    sexpr(vars map { x => sexpr(x, typing(x)) })
  }

  def main(args: Array[String]) {
    args.toList match {
      case List("-v") | List("-version") | List("--version") =>
        System.out.println(version)
        System.out.flush()
      case args =>
        configure(args)
        run(files.toList)
    }
  }
}
