.PHONY: all test clean mrproper parser check-dependencies archives-2021 archives-2022 archives-2023

MILL = ./mill

KORN_JAVA 	= korn/src/korn/c/Parser.java   \
              korn/src/korn/c/Scanner.java  \
			  korn/src/korn/smt/Parser.java \
              korn/src/korn/smt/Scanner.java
KORN_SCALA	= $(shell find korn/src -iname "*.scala")

KORN_C      = $(shell find examples -iname "*.c")
KORN_SMT    = $(KORN_C:.c=.smt2)

BEAVER = ./beaver
JFLEX  = ./jflex

KORN_JAR = out/korn/jar/dest/out.jar
KORN_ASSEMBLY = korn.jar

KORN_LAUNCHER = out/korn/launcher/dest/run
KORN_SH  = ./korn.sh
KORN_FLAGS ?=

ARCHIVES = ../svcomp-archives-2023/2023
KORN_DIST = run korn.jar z3 eld eld.jar README.md $(wildcard LICENSE*) __VERIFIER.c __VERIFIER_random.c

all: $(KORN_JAR) $(KORN_ASSEMBLY) $(KORN_SH)

examples: $(KORN_SMT)

plots: quantile.gp.pdf

parser: $(KORN_JAVA)

archives-2023: $(ARCHIVES)/korn.zip

$(ARCHIVES)/korn.zip: $(KORN_DIST)
	@echo $@
	@mkdir -p $(ARCHIVES)/korn
	@cp $(KORN_DIST) $(ARCHIVES)/korn
	@(cd $(ARCHIVES); zip korn.zip -r korn)

clean:
	$(MILL) clean
	@rm -f $(KORN_SH)

check-dependencies:
	$(MILL) mill.scalalib.Dependency/updates

$(KORN_LAUNCHER):
	@echo $@
	$(MILL) korn.launcher

$(KORN_JAR): $(KORN_JAVA) $(KORN_SCALA)
	@echo $@
	$(MILL) korn.jar

$(KORN_ASSEMBLY): $(KORN_JAVA) $(KORN_SCALA)
	@echo $@
	$(MILL) korn.assembly
	@cp out/korn/assembly.dest/out.jar $(KORN_ASSEMBLY)

$(KORN_SH): $(KORN_LAUNCHER)
	@echo "[echo]  $@"
	@echo "#!/usr/bin/env bash" > $@
	# @echo "export PATH=\".:\$$PATH\"" >> $@
	@echo "export JAVA_OPTS=\"\$$JAVA_OPTS -Xss4M\"" >> $@
	@echo "source $(PWD)/$(KORN_LAUNCHER)" >> $@
	@echo "[chmod] $@"; chmod +x $@

%.java: %.grammar
	$(BEAVER) -t $^

%.java: %.flex
	$(JFLEX) -nobak $^

%.smt2: %.c $(KORN_JAR) $(KORN_SH)
	@echo $@
	$(KORN_SH) $(KORN_FLAGS) $< > $@

RESULTS  = test/2020-10-10.results
SVCOMP20 = svcomp20/results-verified

BZ2     = $(wildcard $(RESULTS)/*.results.sv-comp20_prop-reachsafety.xml.bz2)
CSV     = $(BZ2:.results.sv-comp20_prop-reachsafety.xml.bz2=.csv) \
          $(SVCOMP20)/cpa-seq.filtered.csv \
		  $(SVCOMP20)/uautomizer.filtered.csv \
		  $(SVCOMP20)/veriabs.filtered.csv

QUANTILE_GENERATOR = ~/tools/benchexec/contrib/plots/quantile-generator.py

$(RESULTS)/%.csv: $(RESULTS)/%.results.sv-comp20_prop-reachsafety.xml.bz2
	$(QUANTILE_GENERATOR) --correct $< > $@

quantile.gp.pdf: $(CSV) quantile.gp
	gnuplot quantile.gp

%.filtered.csv: %.csv
	./filter.py ReachSafety-Korn.nodirs.set $< > $@

$(SVCOMP20)/cpa-seq.csv: \
	$(SVCOMP20)/cpa-seq.2019-11-29_1400.results.sv-comp20_prop-reachsafety.ReachSafety-Arrays.xml.bz2 \
	$(SVCOMP20)/cpa-seq.2019-11-29_1400.results.sv-comp20_prop-reachsafety.ReachSafety-ControlFlow.xml.bz2 \
	$(SVCOMP20)/cpa-seq.2019-11-29_1400.results.sv-comp20_prop-reachsafety.ReachSafety-Loops.xml.bz2 \
	$(SVCOMP20)/cpa-seq.2019-11-29_1400.results.sv-comp20_prop-reachsafety.ReachSafety-Recursive.xml.bz2
	$(QUANTILE_GENERATOR) --correct $^ > $@

$(SVCOMP20)/uautomizer.csv: \
	$(SVCOMP20)/uautomizer.2019-12-07_1005.results.sv-comp20_prop-reachsafety.ReachSafety-Arrays.xml.bz2 \
	$(SVCOMP20)/uautomizer.2019-12-07_1005.results.sv-comp20_prop-reachsafety.ReachSafety-ControlFlow.xml.bz2 \
	$(SVCOMP20)/uautomizer.2019-12-07_1005.results.sv-comp20_prop-reachsafety.ReachSafety-Loops.xml.bz2 \
	$(SVCOMP20)/uautomizer.2019-12-07_1005.results.sv-comp20_prop-reachsafety.ReachSafety-Recursive.xml.bz2
	$(QUANTILE_GENERATOR) --correct $^ > $@

$(SVCOMP20)/veriabs.csv: \
	$(SVCOMP20)/veriabs.2019-12-07_1015.results.sv-comp20_prop-reachsafety.ReachSafety-Arrays.xml.bz2 \
	$(SVCOMP20)/veriabs.2019-12-07_1015.results.sv-comp20_prop-reachsafety.ReachSafety-ControlFlow.xml.bz2 \
	$(SVCOMP20)/veriabs.2019-12-07_1015.results.sv-comp20_prop-reachsafety.ReachSafety-Loops.xml.bz2 \
	$(SVCOMP20)/veriabs.2019-12-07_1015.results.sv-comp20_prop-reachsafety.ReachSafety-Recursive.xml.bz2
	$(QUANTILE_GENERATOR) --correct $^ > $@
