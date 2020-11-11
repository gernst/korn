package korn.horn

import korn.c._
import korn.smt._

sealed trait Pred {
  def fun: Fun
  override def toString = fun.name
}

sealed trait Step extends Pred {
  def apply(st0: State, st1: State): Pure
}

case class Pre(fun: Fun) extends Pred {
  def apply(args: List[Val]) = {
    Pure.app(fun, Val.to(args))
  }
}

case class Post(fun: Fun, ret: Option[Sort]) extends Pred {
  def apply(st: State, names: List[String], res: Option[Pure]): Pure = {
    apply(st(names), res)
  }

  def apply(args: List[Val], res: Option[Pure]): Pure = {
    (ret, res) match {
      case (None, None) =>
        Pure.app(fun, Val.to(args))
      case (Some(sort), None) =>
        Pure.app(fun, Val.to(args) ++ List(Pure.zero))
      case (None, Some(res)) =>
        // discard return, warning only in gcc
        Pure.app(fun, Val.to(args))
      case (Some(sort), Some(res)) =>
        Pure.app(fun, Val.to(args) ++ List(res))
    }
  }
}

object Pred {

  case class state(fun: Fun, names: List[String]) extends Step {
    def apply(st0: State, st1: State) = {
      Pure.app(fun, Val.to(st1(names)))
    }
  }

  case class step(fun: Fun, names: List[String]) extends Step {
    def apply(st0: State, st1: State) = {
      Pure.app(fun, Val.to(st0(names) ++ st1(names)))
    }
  }
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
      val fun = Fun(label, sorts, Sort.bool)
      val pred = Pred.state(fun, names)
      preds += pred
      pred
    }

    def rel(label: String): Pred = {
      val fun = Fun(label, sorts ++ sorts, Sort.bool)
      val pred = Pred.state(fun, names ++ names)
      preds += pred
      pred
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
        pres += (name -> Pre(Fun(pre, _args, Sort.bool)))
        posts += (name -> Post(Fun(post, _args ++ List(_ret), Sort.bool), Some(_ret)))
      } else {
        pres += (name -> Pre(Fun(pre, _args, Sort.bool)))
        posts += (name -> Post(Fun(post, _args, Sort.bool), None))
      }
    }
  }
}
