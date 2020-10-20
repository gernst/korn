#!/usr/bin/python3

import sys
import os

DROP = len('svcomp20/sv-benchmarks/c/')

def dump(f):
    lines = f.readlines()
    index = 0

    for line in lines:
        line = line.strip()
        parts = line.split()
        path = parts[1][DROP:]
        name = os.path.basename(path)
        if name in yml:
            index += 1
            result = [str(index)] + parts[1:]
            print("\t".join(result))

with open(sys.argv[1]) as f:
    yml = { line.strip() for line in f.readlines() }

if len(sys.argv) > 2:
    with open(sys.argv[2]) as f:
        dump(f)
else:
    dump(sys.stdin)
