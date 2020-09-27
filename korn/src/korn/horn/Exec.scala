package korn.horn

import korn.c._
import korn.smt._

class Exec(unit: Unit) {
    import unit._
    import unit.sig._
    import unit.horn._
    import unit.eval._

    def enum(cases: List[String]) = {
    for ((name, index) <- cases.zipWithIndex)
      consts += name -> Pure.const(index)
  }

  def global(stmts: List[Stmt]) {
    for (stmt <- stmts)
      global(stmt)
  }

  def global(stmt: Stmt) {
    stmt match {
      case Group(stmts) =>
        global(stmts)
      // Declarations
      case StructDecl(name) =>
        structs += name -> None
      case UnionDecl(name) =>
        unions += name -> None
      case EnumDecl(name) =>
        enums += name -> None
      case TypeDef(typ, name) =>
        typedefs += name -> typ
      case StructDef(name, fields) =>
        structs += name -> Some(fields)
      case UnionDef(name, fields) =>
        unions += name -> Some(fields)
      case EnumDef(None, cases) =>
        enum(cases)
      case EnumDef(Some(name), cases) =>
        enum(cases)
        enums += name -> Some(cases)
      // Definitions
      case VarDef(Formal(typ, name), None) =>
        vars += name -> typ
        var x = fresh(name, resolve(typ))
        state += (name -> x)
      case VarDef(Formal(typ, name), Some(init)) =>
        vars += name -> typ
        var x = fresh(name, resolve(typ))
        state += (name -> x)
        val y = value(init, state)
        state += name -> y
      case FunDecl(ret, name, types) =>
        declare(name, ret, types)
      case FunDef(ret, name, formals, body) =>
        val types = formals map (_.typ)
        declare(name, ret, types)
        define(name, formals, body)
      case _ =>
        korn.error("unsupported global statement: " + stmt)
    }
  }

  def define(name: String, params: List[Formal], body: Stmt) {
      ???
  }
}