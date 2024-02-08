.PHONY: all test clean mrproper parser check-dependencies

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

KORN_JAR = korn.jar

KORN_SH  = ./korn.sh
KORN_FLAGS ?=

ARCHIVES = ../svcomp-archives-2024/2024
KORN_DIST = run korn.jar golem z3 eld eld.jar README.md $(wildcard LICENSE*) __VERIFIER.c __VERIFIER_random.c

all: $(KORN_JAR) $(KORN_SH)

examples: $(KORN_SMT)

parser: $(KORN_JAVA)

archives-2023: $(ARCHIVES)/korn.zip
archives-2024: dist/korn.zip

$(ARCHIVES)/korn.zip: $(KORN_DIST)
	@echo $@
	@mkdir -p $(ARCHIVES)/korn
	@cp $(KORN_DIST) $(ARCHIVES)/korn
	@(cd $(ARCHIVES); zip korn.zip -r korn)

dist/korn.zip: $(KORN_DIST)
	@echo $@
	@mkdir -p ./dist/korn
	@cp $(KORN_DIST) ./dist/korn
	@(cd dist; zip korn.zip -r korn)

clean:
	$(MILL) clean
	@rm -f $(KORN_SH)

check-dependencies:
	$(MILL) mill.scalalib.Dependency/updates

$(KORN_JAR): $(KORN_JAVA) $(KORN_SCALA)
	@echo $@
	$(MILL) korn.assembly
	@cp out/korn/assembly.dest/out.jar $(KORN_JAR)

%.java: %.grammar
	$(BEAVER) -t $^

%.java: %.flex
	$(JFLEX) -nobak $^

%.smt2: %.c $(KORN_JAR) $(KORN_SH)
	@echo $@
	$(KORN_SH) $(KORN_FLAGS) $< > $@
