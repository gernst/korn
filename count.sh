#!/bin/sh

~/tools/benchexec/contrib/plots/quantile-generator.py --correct-only "$1" | ./filter.py ReachSafety-Korn.nodirs.set | wc -l
