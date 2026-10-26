package korn.witness

import korn.now
import korn.Loc
import korn.Main
import korn.Util
import korn.smt.*
import korn.c.*
import korn.horn.*
import java.io.PrintStream
import java.text.SimpleDateFormat
import java.util.UUID

object Yaml:
  import Witness.c

  def proof(file: String, df: Def, unit: TranslationUnit): List[String] =
    val Def(name, args, ret, body) = df

    if unit.witness.contains(name) then
      val (proc, loc, pred, names, msg) = unit.witness(name)

      val old = if names.length < args.length then
        // likely relational predicate, add old
        names.map("\\old(" + _ + ")")
      else Nil

      val from = args.map(_.x.toString)
      val to = old ++ names
      // val to = pred.names

      korn.ensure(from.length == to.length, "parameter length mismatch for " + proc.name + ": " + from + " and " + to)
      val env = Map(from.zip(to)*)

      if Main.debug then
        Witness.quant = true
        Witness.escape = false
        val inv = c(body, env, neg = false)

        println(msg + " for " + proc.name + " at " + loc.line + ":" + loc.column)
        println("  " + inv)
        println()

      msg match
        case "invariant" =>
          Witness.quant = Main.witness_quant
          Witness.escape = false
          val inv = c(body, env, neg = false)

          val text = loop(file, proc.name, loc, inv)
          List(text)

        case "summary" =>
          // ignore
          Nil

        case "transition invariant" =>
          Nil

        case "precondition" =>
          Nil

        case "postcondition" =>
          Nil
    else Nil

  def proof(file: String, model: Model, unit: TranslationUnit, out: PrintStream): Unit =
    try
      val uuid = UUID.randomUUID();
      val time = now()

      val arch = bits match
        case 32 => "ILP32"
        case 64 => "LP64"

      out.println(header(file, time, uuid, Util.hash(unit.file), arch))

      val content =
        for
          df <- model.defs
          entry <- proof(unit.file, df, unit)
        yield entry

      if content.nonEmpty then
        out.println("  content:")
        for entry <- content do out.println(entry)
      else out.println("  content: []")

      if Main.debug then println("finished writing correctness witness for " + file)
    finally {}

  def format_version = "2.0"

  def loop(file: String, function: String, loc: Loc, invariant: String) =
    s"""  - invariant:
      type: "loop_invariant"
      location:
        file_name: "${file}"
        line: ${loc.line}
        column: ${loc.column}
        function: "${function}"
      value: "${invariant}"
      format: "c_expression""""

  def header(file: String, time: String, uuid: UUID, hash: String, arch: String) =
    s"""- entry_type: "invariant_set"
  metadata:
    format_version: "${format_version}"
    uuid: "${uuid}"
    creation_time: "${time}"
    producer:
      name: "Korn"
      version: "${Main.version}"
      configuration: "default"
    task:
      input_files:
      - "${file}"
      input_file_hashes:
        "${file}": "${hash}"
      specification: "G ! call(reach_error())"
      data_model: "${arch}"
      language: "C""""
