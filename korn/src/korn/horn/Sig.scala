package korn.horn

import korn.c._
import korn.smt._

sealed trait Pred {
  def name: String = ???
  def apply(args: List[Pure]): Pure = ???
}

class Sig(unit: Unit) {
  import unit._
  import unit.sig._

  case class Scope(formals: List[Formal]) {
    val names = formals map (_.name)
    val types = formals map (_.typ)
    val sorts = types map (resolve(_))
    val sig = names zip sorts

    def havoc: Store = {
      val vars = Val.from(fresh(sig))
      Map(names zip vars: _*)
    }

    def arbitrary = {
      State(Nil, havoc)
    }

    def here(label: String): Pred = {
      newPred(label, sorts)
    }

    def rel(label: String): Pred = {
      newPred(label, sorts ++ sorts)
    }

    def apply(pred: Pred, st0: State): Pure = {
      // pred(st0(names))
      ???
    }

    def apply(pred: Pred, res: Pure, st0: State): Pure = {
      // pred(st0(names) ++ List(res))
      ???
    }

    def apply(pred: Pred, st0: State, st1: State): Pure = {
      // pred(st0(names) ++ st1(names))
      ???
    }
  }

  def resolve(types: List[Type]): List[Sort] = {
    types map resolve
  }

  def resolve(typ: Type): Sort = {
    typ match {
      case Type._void            => null
      case Type._Bool            => Sort.int
      case _: Signed             => Sort.int
      case _: Unsigned           => Sort.int
      case PtrType(elem)         => pointers = true; Sort.pointer(resolve(elem))
      case ArrayType(typ, dim)   => Sort.array(Sort.int, resolve(typ))
      case TypedefName("size_t") => Sort.int
      case _                     => korn.error("cannot resolve: " + typ)
    }
  }

  def newPred(name: String, args: List[Sort]): Pred = {
    /* val res = Pred(name, args)
    preds += res
    res */
    ???
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
    // x
    ???
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
