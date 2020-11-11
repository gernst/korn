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
  def apply(st: State, names: List[String]): Pure = {
    apply(st(names))
  }

  def apply(args: List[Val]) = {
    Pure.app(fun, Val.to(args))
  }
}

case class Post(fun: Fun, ret: Option[Sort]) extends Pred {
  def apply(st: State, names: List[String], res: Option[Val]): Pure = {
    apply(st(names), res)
  }

  def apply(args: List[Val], res: Option[Val]): Pure = {
    (ret, res) match {
      case (None, None) =>
        Pure.app(fun, Val.to(args))
      case (Some(sort), None) =>
        Pure.app(fun, Val.to(args) ++ List(Pure.zero))
      case (None, Some(res)) =>
        // discard return, warning only in gcc
        Pure.app(fun, Val.to(args))
      case (Some(sort), Some(res)) =>
        Pure.app(fun, Val.to(args ++ List(res)))
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
    val sig = names zip types

    def havoc: Store = {
      val xs = for ((name, typ) <- sig) yield {
        val (_, v) = nondet(name, typ)
        name -> v
      }
      Map(xs: _*)
    }

    def arbitrary = {
      State(Nil, havoc)
    }

    def state(label: String): Step = {
      val fun = Fun(label, sorts, Sort.bool)
      val pred = Pred.state(fun, names)
      preds += pred
      pred
    }

    def step(label: String): Step = {
      val fun = Fun(label, sorts ++ sorts, Sort.bool)
      val pred = Pred.step(fun, names)
      preds += pred
      pred
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
      case ArrayType(elem, dim)  => Sort.array(Sort.int, resolve(elem))
      case TypedefName("size_t") => Sort.int
      case _                     => korn.error("cannot resolve: " + typ)
    }
  }

  def bounds(pure: Pure, typ: Type): Pure = {
    typ match {
      case Type._Bool =>
        (pure === Pure.zero) or (pure === Pure.one)

      case Signed(name, bytes) =>
        val bound = Pure.one << (bytes * 8 - 1)
        val min = -bound
        val max = bound - 1
        (min <= pure) and (pure <= max)

      case Unsigned(name, bytes) =>
        val bound = Pure.one << (bytes * 8)
        val min = Pure.zero
        val max = bound - 1
        (min <= pure) and (pure <= max)

      case _ =>
        korn.error("unsupported type: " + typ)
    }
  }

  def nondet(name: String, typ: Type): (Pure, Val) = {
    typ match {
      case Type._Bool =>
        val x = fresh(name, Sort.int)
        x -> Val.number(x)

      case Signed(_, bytes) =>
        val x = fresh(name, Sort.int)
        x -> Val.number(x)

      case Unsigned(_, bytes) =>
        val x = fresh(name, Sort.int)
        x -> Val.number(x)

      case ArrayType(elem, dim) =>
        val x = fresh(name, Sort.array(Sort.int, resolve(elem)))
        x -> Val.array(x, elem)

      case _ =>
        korn.error("unsupported type: " + typ)
    }
  }

  def fresh(name: String, sort: Sort): Var = {
    var x = Var(name, Some(Pure.next))
    typing += (x.toString -> sort)
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
        pres += (name -> Pre(Fun(pre, _args, Sort.bool)))
        posts += (name -> Post(Fun(post, _args ++ List(_ret), Sort.bool), Some(_ret)))
      } else {
        pres += (name -> Pre(Fun(pre, _args, Sort.bool)))
        posts += (name -> Post(Fun(post, _args, Sort.bool), None))
      }
    }
  }
}
