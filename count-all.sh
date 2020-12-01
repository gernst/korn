#!/bin/sh

export SVCOMP20=svcomp20/results-verified

echo CPA-seq
./count.sh svcomp20/results-verified/cpa-seq.*.results.sv-comp20_prop-reachsafety.ReachSafety-Arrays.xml.bz2
./count.sh svcomp20/results-verified/cpa-seq.*.results.sv-comp20_prop-reachsafety.ReachSafety-ControlFlow.xml.bz2
./count.sh svcomp20/results-verified/cpa-seq.*.results.sv-comp20_prop-reachsafety.ReachSafety-Loops.xml.bz2
./count.sh svcomp20/results-verified/cpa-seq.*.results.sv-comp20_prop-reachsafety.ReachSafety-Recursive.xml.bz2

echo UA
./count.sh svcomp20/results-verified/uautomizer.*.results.sv-comp20_prop-reachsafety.ReachSafety-Arrays.xml.bz2
./count.sh svcomp20/results-verified/uautomizer.*.results.sv-comp20_prop-reachsafety.ReachSafety-ControlFlow.xml.bz2
./count.sh svcomp20/results-verified/uautomizer.*.results.sv-comp20_prop-reachsafety.ReachSafety-Loops.xml.bz2
./count.sh svcomp20/results-verified/uautomizer.*.results.sv-comp20_prop-reachsafety.ReachSafety-Recursive.xml.bz2

echo VA
./count.sh svcomp20/results-verified/veriabs.*.results.sv-comp20_prop-reachsafety.ReachSafety-Arrays.xml.bz2
./count.sh svcomp20/results-verified/veriabs.*.results.sv-comp20_prop-reachsafety.ReachSafety-ControlFlow.xml.bz2
./count.sh svcomp20/results-verified/veriabs.*.results.sv-comp20_prop-reachsafety.ReachSafety-Loops.xml.bz2
./count.sh svcomp20/results-verified/veriabs.*.results.sv-comp20_prop-reachsafety.ReachSafety-Recursive.xml.bz2
