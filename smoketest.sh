#!/usr/bin/bash


./run unsat.c -status unsat -d -w -m -c -r 2
./run unsat.c -status unsat -d -w -m -c -z3
./run unsat.c -status unsat -d -w -m -c -golem
./run unsat.c -status unsat -d -w -m -c -eld

./run sat.c   -status sat   -d -w -m -z3
./run sat.c   -status sat   -d -w -m -golem
./run sat.c   -status sat   -d -w -m -eld