.PHONY: all test clean mrproper parser check-dependencies archives-2021

MILL = ./mill

KORN_JAVA 	= korn/src/korn/c/Parser.java \
              korn/src/korn/c/Scanner.java
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

ARCHIVES = archives-2021/2021
KORN_DIST = run korn.jar z3 eld eld.jar LICENSE LICENSE.z3 LICENSE.Eldarica

all: $(KORN_JAR) $(KORN_ASSEMBLY) $(KORN_SH)

examples: $(KORN_SMT)

parser: $(KORN_JAVA)

archives-2021: $(ARCHIVES)/korn.zip

$(ARCHIVES)/korn.zip: $(ARCHIVES)/korn $(KORN_DIST)
	@echo $@
	@cp $(KORN_DIST) $(ARCHIVES)/korn
	@zip $(ARCHIVES)/korn.zip -r $(ARCHIVES)/korn

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
	@cp out/korn/assembly/dest/out-tmp.jar $(KORN_ASSEMBLY)

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

QUANTILE_GENERATOR = ~/tools/benchexec/contrib/plots/quantile-generator.py

test/results/%.csv: test/results/%.results.sv-comp20_prop-reachsafety.ReachSafety-Loops.xml.bz2
	$(QUANTILE_GENERATOR) $< > $@
