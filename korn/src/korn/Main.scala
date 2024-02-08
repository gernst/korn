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

import korn.horn.Eval
import korn.tool._
import scala.concurrent.duration._

object Main {
  val version = "0.5"

  var dry = false
  var config = "default"
  var debug = false
  var quiet = false
  var model = false
  var float = false
  var pointers = false
  var expect = None: Option[String]
  var witness = false
  var confirm = false
  var witness_graphml = None: Option[String]
  var witness_quant = false
  var write_smt2 = None: Option[String]
  var write = false
  var timeout: Duration = 900.seconds // SV-COMP default
  var tools = mutable.Buffer[Tool]()

  var files = mutable.Buffer[String]()
  var out = System.out
  var err = System.err

  def note(line: String) {
    if (quiet) {
      out.println(line)
      out.flush()
    }
  }

  def info(line: String) {
    if (!quiet) {
      out.println(line)
      out.flush()
    }
  }

  def debug(line: String) {
    if (debug) {
      err.println(line)
      err.flush()
    }
  }

  def add(tool: Tool) {
    if (confirm)
      tools += Confirm(tool)
    else
      tools += tool
  }

  @tailrec
  def configure(args: List[String]) {
    args match {
      case Nil =>

      case ("-ir" | "-invariants-prepost") :: rest =>
        config = "relational"
        configure(rest)

      case ("-s" | "-summaries") :: rest =>
        config = "summaries"
        configure(rest)

      case ("-s0" | "-summaries-only") :: rest =>
        config = "summaries-only"
        configure(rest)

      case "-use:VERIFIER_assert" :: rest =>
        Eval.useVerifierAssert = true
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

      case ("-z" | "-zero") :: rest =>
        add(Fuzz)
        configure(rest)

      // kept for compatibility with explicit timeout argument
      case ("-r" | "-random") :: n :: rest =>
        timeout = n.toInt.seconds
        add(Fuzz(timeout))
        configure(rest)

      case ("-d" | "-debug") :: rest =>
        debug = true
        configure(rest)

      case ("-q" | "-quiet") :: rest =>
        quiet = true
        configure(rest)

      case ("-t" | "-timeout") :: arg :: rest =>
        timeout = arg.toInt.seconds
        configure(rest)

      case "-z3" :: rest =>
        add(Z3(timeout, model, write, expect))
        configure(rest)

      case "-eld" :: rest =>
        add(Eldarica(timeout, model, write, expect))
        configure(rest)

      case "-eld:portfolio" :: rest =>
        add(Eldarica(timeout, model, write, expect, Seq("-portfolio")))
        configure(rest)

      case "-golem" :: rest =>
        add(Golem(timeout, model, write, expect))
        configure(rest)

      case first :: rest if first.startsWith("-golem:") =>
        val engine = first drop "-golem:".length
        add(Golem(timeout, model, write, expect, engine))
        configure(rest)

      case "-pointers" :: rest =>
        pointers = true
        configure(rest)

      case "-float" :: rest =>
        float = true
        configure(rest)

      case "-witness" :: file :: rest =>
        witness_graphml = Some(file)
        configure(rest)

      case "-smt2" :: file :: rest =>
        write_smt2 = Some(file)
        configure(rest)

      case ("-c" | "-confirm") :: rest =>
        confirm = true
        configure(rest)

      case "-status" :: status :: rest =>
        expect = Some(status)
        configure(rest)

      case "-32" :: rest =>
        c.bits = 32
        configure(rest)

      case "-64" :: rest =>
        c.bits = 64
        configure(rest)

      case "--" :: rest =>
        add(Tool.generic(timeout, model, write, expect, rest))

      case file :: rest =>
        files += file
        configure(rest)
    }
  }

  def smt2(path: String) = {
    ensure((path endsWith ".c") || (path endsWith ".i"), "unrecognized file ending: " + path)
    (path dropRight 2) + ".smt2"
  }

  def graphml(path: String) = {
    ensure((path endsWith ".c") || (path endsWith ".i"), "unrecognized file ending: " + path)
    (path dropRight 2) + ".graphml"
  }

  def run(file: String) {
    info("program:      " + file)
    val stmts = Tool.parse(file)

    if (dry) {
      // do nothing
    } else if (tools.isEmpty) {
      val unit = Tool.translate(file, stmts)

      if (write) {
        val to = write_smt2 getOrElse smt2(file)
        val out = new PrintStream(new File(to))
        info("clauses:      " + to)
        info("linear:       " + unit.isLinear)
        Backend.write(unit, model, expect, out)
      } else {
        Backend.write(unit, model, expect, out)
      }
    } else {
      import scala.util.control.Breaks._
      val unit = Tool.translate(file, stmts)

      breakable {
        for (tool <- tools) {
          // Note: local variables shadow class attribute
          // val Tool(timeout, model, write, cmd @ _*) = tool

          info("running:      " + tool.how)

          val to = write_smt2 getOrElse smt2(file)
          if (tool.write)
            info("clauses:      " + to)

          val result = tool.check(unit, to)

          try {
            result match {
              case Unknown(message) =>
                note("unknown")
                info("status:       " + message)

              case Correct(_model) =>
                note("sat")

                info("status:       correct")
                info("backend:      " + tool.backend)

                if (_model.defs.nonEmpty)
                  debug("model:")
                for (df <- _model.defs)
                  debug("  " + df)
                if (_model.defs.nonEmpty)
                  debug("")

                if (witness) {
                  val dest = witness_graphml getOrElse graphml(file)
                  val out = new PrintStream(new File(dest))
                  Witness.proof(file, _model, unit, out)
                  info("witness:      " + dest)
                }

                break

              case Incorrect(trace) =>
                note("unsat")

                info("status:       incorrect")
                info("backend:      " + tool.backend)
                debug("trace:")
                for ((fun, arg) <- trace)
                  debug("  " + fun + "() = " + arg)

                if (witness) {
                  val dest = witness_graphml getOrElse graphml(file)
                  val out = new PrintStream(new File(dest))
                  Witness.cex(file, trace, out)
                  info("witness:      " + dest)
                }

                break
            }
          } catch {
            case err: Error =>
              if (Main.debug)
                throw err
            // witness cannot be translated
          }
        }
      }
    }
  }

  def run(files: List[String]) {
    for (path <- files) {
      try {
        run(path)
      } catch {
        case e: beaver.Parser.Exception =>
          note("error")
          info("error:        " + e.getMessage())
          if (debug) e.printStackTrace()
        case e: NotImplementedError =>
          note("error")
          val st = e.getStackTrace()(1)
          val file = st.getFileName + ":" + st.getLineNumber
          val code = st.getClassName + "." + st.getMethodName
          val where = code + " (" + file + ")"
          info("error:        not implemented " + where)
          if (debug) e.printStackTrace()
        case e: Error =>
          note("error")
          info("error:        " + e.msg)
          if (debug) e.printStackTrace()
        case e: Throwable =>
          note("error")
          info("error:        " + e.getMessage())
          if (debug) e.printStackTrace()
      }
    }
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
