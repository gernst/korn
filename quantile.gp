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
set xrange [0:250]
set yrange [0.1:100]

# use logscale
set logscale y 10

# legend (choose one of two positions)
set key left top Left reverse
#set key bottom right

set output "quantile.gp.pdf"
set terminal pdf

set style data linespoints

# plot with data points from prepared CSV files (more lines can be added here)
plot \
     "test/results/loops-eld-invariants-60.2020-10-06_19-02-22.csv"     using 1:5 title "Eldarica (invariants)" with linespoints pointinterval -500, \
     "test/results/loops-eld-summaries-only-60.2020-10-06_19-08-28.csv" using 1:5 title "Eldarica (summaries)" with linespoints pointinterval -500, \
     "test/results/loops-eld-summaries-60.2020-10-06_19-03-30.csv"      using 1:5 title "Eldarica (both)" with linespoints pointinterval -500, \
     "test/results/loops-z3-invariants-60.2020-10-06_19-07-39.csv"      using 1:5 title "Z3 (invariants)" with linespoints pointinterval -500, \
     "test/results/loops-z3-summaries-only-60.2020-10-06_19-10-05.csv"  using 1:5 title "Z3 (summaries)" with linespoints pointinterval -500, \
     "test/results/loops-z3-summaries-60.2020-10-06_19-08-47.csv"       using 1:5 title "Z3 (both)" with linespoints pointinterval -500
