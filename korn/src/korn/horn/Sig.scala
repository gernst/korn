package korn.horn

import korn.c._
import korn.smt._

class Sig(unit: Unit) {
  import unit._
  import unit.sig._

  case class Scope(formals: List[Formal]) {
    val names = formals map (_.name)
    val types = formals map (_.typ)
    val sorts = types map (resolve(_))
    val sig = names zip sorts

    def havoc: Store = {
      val vars = fresh(sig)
      Map(names zip vars: _*)
    }

    def arbitrary = {
      State(Nil, havoc)
    }

    def newRel(name: String, in: List[String], out: List[String], args: List[Sort]): Rel = {
      val pred = newPred(name, args)
      Rel(pred, in, out)
    }

    def here(label: String): Rel = {
      newRel(label, names, Nil, sorts)
    }

    def rel(label: String): Rel = {
      newRel(label, names, names, sorts ++ sorts)
    }
  }

  def newPred(name: String, args: List[Sort]): Pred = {
    val pred = Pred(name, args)
    preds += pred
    pred
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
