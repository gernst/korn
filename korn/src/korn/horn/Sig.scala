package korn.horn

import korn.c._
import korn.smt._

class Sig(unit: Unit) {
  import unit._
  import unit.sig._

  def resolve(types: List[Type]): List[Sort] = {
    types map resolve
  }

  def resolve(typ: Type): Sort = {
    typ match {
      case Type._void          => null
      case Type._Bool          => Sort.int
      case _: Signed           => Sort.int
      case _: Unsigned         => Sort.int
      case PtrType(elem)       => pointers = true; Sort.pointer(resolve(elem))
      case ArrayType(typ, dim) => Sort.array(Sort.int, resolve(typ))
      case _                   => korn.error("cannot resolve: " + typ)
    }
  }

  def newPred(name: String, args: List[Sort]): Pred = {
    val res = Pred(name, args)
    preds += res
    res
  }

  def vr(name: String, typ: Sort): Var = {
    var x = Var(name)
    typing += (x.toString -> typ)
    x
  }

  def vrs(pairs: Iterable[(String, Sort)]): List[Var] = {
    val vars = pairs map { case (name, typ) => vr(name, typ) }
    vars.toList
  }

  def fresh(name: String, typ: Sort): Var = {
    var x = Var(name, Some(Pure.next))
    typing += (x.toString -> typ)
    x
  }

  def fresh(pairs: Iterable[(String, Sort)]): List[Var] = {
    val vars = pairs map { case (name, typ) => fresh(name, typ) }
    vars.toList
  }

  def declare(name: String, ret: Type, args: List[Type]) {
    funs += (name -> (ret, args))

    val pre = "$" + name + "_pre"
    val post = name

    val _args = resolve(args)
    val _ret = resolve(ret)

    if (!known(name)) {
      if (_ret != null) {
        pres += (name -> newPred(pre, _args))
        posts += (name -> (newPred(post, _args ++ List(_ret)), Some(_ret)))
      } else {
        pres += (name -> newPred(pre, _args))
        posts += (name -> (newPred(post, _args), None))
      }
    }
  }
}
