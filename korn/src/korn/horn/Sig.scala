package korn.horn

import korn.c._
import korn.smt._

sealed trait Pred {
  def fun: Fun
  def name = fun.name
  override def toString = name
}

sealed trait Step extends Pred {
  def names: List[String]
  def apply(st0: State, st1: State): Pure
}

case class CEX(fun: Fun) extends Pred {
  def apply(arg: Pure) = {
    Pure.app(fun, List(arg))
  }
}

case class Pre(fun: Fun) extends Pred {
  def eval(st: State, globals: List[String], names: List[String]): Pure = {
    apply(st(globals ++ names))
  }

  def apply(st: State, globals: List[String], args: List[Val]): Pure = {
    apply(st(globals) ++ args)
  }

  def apply(args: List[Val]): Pure = {
    Pure.app(fun, Val.to(args))
  }
}

case class Post(fun: Fun, ret: Option[Sort]) extends Pred {
  def eval(st0: State, st1: State, globals: List[String], names: List[String], res: Option[Val]): Pure = {
    apply(st0(globals) ++ st0(names) ++ st1(globals), res)
  }

  def apply(st0: State, st1: State, globals: List[String], args: List[Val], res: Option[Val]): Pure = {
    apply(st0(globals) ++ args ++ st1(globals), res)
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
        val (_, _, v) = nondet(name, typ)
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
      case TypedefName("size_t") => Sort.int

      case TypedefName(name) if unit.typedefs contains name =>
        resolve(unit.typedefs(name))

      case PtrType(elem) if korn.Main.pointers =>
        pointers = true; Sort.pointer(resolve(elem))

      case PtrType(elem) =>
        Sort.int

      case ArrayType(elem, dim) =>
        Sort.array(Sort.int, resolve(elem))

      case Type._float if korn.Main.float =>
        Sort.real
      case Type._double if korn.Main.float =>
        Sort.real

      case _ =>
        korn.error("cannot resolve: " + typ)
    }
  }

  def bounds(pure: Pure, typ: Type): Pure = {
    typ match {
      case Type._Bool =>
        (pure === Pure.zero) or (pure === Pure.one)

      case Type._float | Type._double =>
        True

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

      case TypedefName(name) if unit.typedefs contains name =>
        bounds(pure, unit.typedefs(name))

      case _ =>
        korn.error("unsupported type: " + typ + " " + pure)
    }
  }

  def zero(typ: Type): Val = {
    typ match {
      case Type._Bool =>
        Val(Pure.zero, typ)

      case Signed(_, bytes) =>
        Val(Pure.zero, typ)

      case Unsigned(_, bytes) =>
        Val(Pure.zero, typ)

      case PtrType(elem) if korn.Main.pointers =>
        ???

      case PtrType(elem) =>
        Val(Pure.zero, typ)

      case ArrayType(elem, dim) =>
        val Val(x, _) = zero(elem)
        Val(Pure.constarray(x), typ)

      case TypedefName(that) if unit.typedefs contains that =>
        zero(unit.typedefs(that))

      case _ =>
        korn.error("unsupported type: " + typ)
    }
  }

  def nondet(name: String, typ: Type): (Var, Sort, Val) = {
    typ match {
      case Type._Bool =>
        val s = Sort.int
        val x = fresh(name, Sort.int)
        (x, s, Val(x, typ))

      case Signed(_, bytes) =>
        val s = Sort.int
        val x = fresh(name, Sort.int)
        (x, s, Val(x, typ))

      case Unsigned(_, bytes) =>
        val s = Sort.int
        val x = fresh(name, s)
        (x, s, Val(x, typ))

      case Type._float | Type._double =>
        val s = Sort.real
        val x = fresh(name, s)
        (x, s, Val(x, typ))

      case PtrType(elem) if korn.Main.pointers =>
        val s = Sort.pointer(resolve(typ))
        val x = fresh(name, s)
        (x, s, Val(x, typ))

      case PtrType(elem) =>
        val s = Sort.int
        val x = fresh(name, s)
        (x, s, Val(x, typ))

      case ArrayType(elem, dim) =>
        val s = Sort.array(Sort.int, resolve(elem))
        val x = fresh(name, s)
        (x, s, Val(x, typ))

      case TypedefName(that) if unit.typedefs contains that =>
        nondet(name, unit.typedefs(that))

      case _ =>
        korn.error("unsupported type: " + typ + " " + name)
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

  object $nondet extends korn.Counter {
    def newLabel(typ: String) = "$nondet_" + typ
  }

  def declare(name: String, ret: Type, args: List[Type]) {
    funs += (name -> (ret, args))

    val pre = "$" + name + "_pre"
    val post = "%" + name

    val _globals = resolve(globals map (_.typ))
    val _args = resolve(args)
    val _ret = resolve(ret)

    // println("function: " + name + " " + _args + " " + _ret)

    if (!known(name)) {
      if (_ret != null) {
        pres += (name -> Pre(Fun(pre, _globals ++ _args, Sort.bool)))
        posts += (name -> Post(Fun(post, _globals ++ _args ++ _globals ++ List(_ret), Sort.bool), Some(_ret)))
      } else {
        pres += (name -> Pre(Fun(pre, _globals ++ _args, Sort.bool)))
        posts += (name -> Post(Fun(post, _globals ++ _args ++ _globals, Sort.bool), None))
      }
    }
  }
}
