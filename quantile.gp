# This file is part of BenchExec, a framework for reliable benchmarking:
# https://github.com/sosy-lab/benchexec
#
# SPDX-FileCopyrightText: 2007-2020 Dirk Beyer <https://www.sosy-lab.org>
#
# SPDX-License-Identifier: Apache-2.0

# Gnuplot definition for a quantile plot

# set axis labels
set xlabel 'n-th fastest correct result'
set ylabel "CPU time (s)" offset 2

# set value range
set xrange [-10:410]
set yrange [0.1:1000]

# use logscale
set logscale y 10

# legend (choose one of two positions)
set key left top Left reverse
#set key bottom right

set output "quantile.gp.pdf"
set terminal pdf font "cmr10,12"

set style data linespoints

# plot with data points from prepared CSV files (more lines can be added here)
plot \
     "svcomp20/results-verified/cpa-seq.filtered.csv" \
        using 1:4 title "CPA-seq" \
        with linespoints lw 1.5 dt "-" lt rgb "black" pointinterval -500 ps 0.5, \
     "svcomp20/results-verified/uautomizer.filtered.csv" \
        using 1:4 title "UAutomizer" \
        with linespoints lw 2.5 dt "." lt rgb "black" pointinterval -190 ps 0.5, \
     "svcomp20/results-verified/veriabs.filtered.csv" \
        using 1:4 title "VeriAbs" \
        with linespoints lw 1.5 lt rgb "#999999" pointinterval -300 ps 0.5, \
     "test/2020-10-10.results/eld-invariants-900.2020-10-10_15-36-15.csv" \
        using 1:5 title "Eldarica (invariants)" \
        with linespoints lw 1.5 lt rgb "red" pointinterval -213 ps 0.5, \
     "test/2020-10-10.results/eld-summaries-only-900.2020-10-10_15-36-16.csv" \
        using 1:5 title "Eldarica (summaries)" \
        with linespoints lw 1.5 lt rgb "blue" pointinterval -205 ps 0.5, \
     "test/2020-10-10.results/eld-summaries-900.2020-10-10_15-36-15.csv" \
        using 1:5 title "Eldarica (both)" \
        with linespoints lw 1.5 lt rgb "black" pointinterval -200 ps 0.5, \
     "test/2020-10-10.results/z3-invariants-900.2020-10-10_15-36-17.csv" \
        using 1:5 title "Z3 (invariants)" \
        with linespoints lw 1.5 lt rgb "red" pointinterval -226 ps 0.5, \
     "test/2020-10-10.results/z3-summaries-only-900.2020-10-10_15-36-18.csv" \
        using 1:5 title "Z3 (summaries)" \
        with linespoints lw 1.5 lt rgb "blue" pointinterval -190 ps 0.5, \
     "test/2020-10-10.results/z3-summaries-900.2020-10-10_15-36-18.csv" \
        using 1:5 title "Z3 (both)" \
        with linespoints lw 1.5 lt rgb "black" pointinterval -194 ps 0.5
