# Korn - C Verification with Loop Invariants and Summaries

Korn is a software verifier that infers correctness certificates
automatically using state-of-the-art [Horn-clause solvers](https://chc-comp.github.io/),
such as [Z3](https://github.com/Z3Prover/z3)
and [Eldarica](https://github.com/uuverifiers/eldarica).

The novel aspect is that it uses not only invariants but also summaries,
which are a fundamental and principled technique, complementary to invariants.

The theory, examples, and an evaluation with
[standard benchmarks](https://github.com/sosy-lab/sv-benchmarks)
is described in Gidon Ernst: *A Complete Approach to Loop Verification with Invariants and Summaries*,
[Preprint on arXiv](https://arxiv.org/abs/2010.05812).

File `Summaries.thy` contains an [Isabelle 2020](https://isabelle.in.tum.de/index.html) theory
that mechanizes the main definitions and proofs.
The file annotates each definition and result with a reference the paper (see Sec 3 and 4).
To validate, simply open the file, scroll down, and place the cursor at the very end.

## Compilation

You need Java 11. Simply type

    make

which builds `korn.jar` and `korn.sh`.

## Usage

    ./korn.sh [options] [files] [solver]

You can specify multiple C files, which will be verified in order.
Note that 

The following options are supported

- `-w` write verification task to file instead of stdout
- `-s` use summaries and invariants (default: only invariants)
- `-s0` force correctness proof via summaries
- `-m` generate `(get-model)` in the task (resp. specify `-ssol` for Eldarica)
- `-p` parse only
- `-d` print some debug output
- `-q` output only one of `sat`, `unsat`, `error`, `unknown` and suppress all other output to stdout/stderr
- `-t n` specify timeout in seconds (for directly supported solvers, default: 900)
- `-32` and `-64`: size constraints for numeric types (affects `long`)
- `-u` unbounded arithmetic, omit size constraints for `__VERIFIER_nondet_*`

The following solvers have first-class support and can be specified with options

- `-z3` call `z3 -in -t:<timeout>` resp `z3 -t:timeout <file>` if `-w` is set
   (binary must be on `$PATH`)
- `-eld` call `eld -t:<timeout> <file>` resp `eld -t:<timeout> -ssol <file>` if `-m` is set
   (implies `-w`, binary must be on `$PATH`)

Both solvers are in the git repository and can be used by setting `export
$PATH=.:$PATH` for example, or with options `-- ./z3 -in` and `-- ./eld`.

Alternatively, the full command line for any solver can be specified after `--`
for example

    korn.sh examples/loop0.c -- hoice

Note that the rest of the command line is passed directly to the solver,
thus all other options and tasks must occur before `--`.

The expected answer is `sat` if there is a solution to the Horn clause system,
which means that the program is safe.
Other possible answers are `unsat` (meaning the program is unsafe),
`unknown` (e.g. by timeout),
and `error` (the verification task is not supported currently, or the
translation has a bug and generates an invalid SMT-LIB file).


## Program Specification

Korn will deem a program incorrect if function `__VERIFIER_error` or `reach_error`
can be called on any path, and if an `assert`-ion can possibly fail.

Other specification features are:
- `__VERIFIER_nondet_*` for a number of types (see <https://sv-comp.sosy-lab.org/2021/rules.php>)
- `assume` to constraint values
- `abort` is not an error but treated as `assume(0)`, causing the path to be disregarded

## Implementation

The main entry point is in `korn/src/Main.scala`.
It runs the translation, passes it through the solver (via a stdin or a file
depending on the options), and simply dumps the stdout and stderr of the solver,
unless `-q` is specified, in which case only the first line of the stdout is
dumped and nothing else (this is used for the evaluation).

The entry point for the translation is in `korn/src/Unit.scala`,
which deals with a unit (C file) at a time and handles global declarations.
Each function (procedure) is processed by `korn/src/Proc.scala`,
which handles local statements.

The translation is parameterized by the different classes in
`korn/src/Horn.scala`, differing e.g. in the use of invariants vs summaries,
and consequentially possibly using relational predicates to summarise join-points.
See object `Config` on how these are assembled into a stategy.

The implementation currently suffers from a few limitations:.
Arrays are treated as value types without bounds, and there is no model of the
heap currently, which is unsound but sufficient as a work-around in some cases.

Other unsupported features of C (not exhaustive):

- global variables
- array initializers
- dynamic memory allocation (malloc/free)
- floating point types
- structs and unions
- pointers (mostly)

Notable supported features

- `goto`, `break`, `return`
- `if`, `for`, `while`, `do`-`while`
- function declarations

but beware that if your task requires a recursive model as summary for e.g. a recursive function,
then the solver will not be able to infer it (timeout, or `unsat` even if the program is correct)

If you want to hack the code, VS Code with [Scala Metals](docs/build-tools/bloop.html)
should work out of the box. Simply open the folder in VS Code and follow the
suggestion to install the Scala Metals extension.

## Evaluation

See the files in `xml` for [benchmark
definitions](https://github.com/sosy-lab/benchexec).
For the paper, the we used `xml/<solver>-*-900.xml`.

Instructions for repeatability will follow.
