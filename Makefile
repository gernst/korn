.PHONY: all test clean mrproper parser check-dependencies

MILL = ./mill

KORN_JAVA 	= korn/src/korn/Parser.java \
              korn/src/korn/Scanner.java
KORN_SCALA	= $(shell find korn/src -iname "*.scala")

KORN_C      = $(shell find examples -iname "*.c")
KORN_SMT    = $(KORN_C:.c=.smt2)

BEAVER = ./beaver
JFLEX  = ./jflex

KORN_JAR = out/korn/jar/dest/out.jar

KORN_LAUNCHER = out/korn/launcher/dest/run
KORN_SH  = ./korn.sh

all: $(KORN_JAR) $(KORN_SH) $(KORN_SMT)

parser: $(KORN_JAVA)

clean:
	$(MILL) clean
	rm -f $(KORN_SH)

check-dependencies:
	$(MILL) mill.scalalib.Dependency/updates

$(KORN_LAUNCHER):
	@echo $@
	$(MILL) korn.launcher

$(KORN_JAR): $(KORN_JAVA) $(KORN_SCALA)
	@echo $@
	$(MILL) korn.jar

$(KORN_SH): $(KORN_LAUNCHER)
	@echo "[echo]  $@"
	@echo "#!/usr/bin/env bash" > $@
	@echo "export LD_LIBRARY_PATH=\"$(PWD)/korn/lib\"" >> $@
	@echo "export PATH=\".:\$$PATH\"" >> $@
	@echo "export JAVA_OPTS=\"\$$JAVA_OPTS -Xss4M\"" >> $@
	@echo "source $(PWD)/$(KORN_LAUNCHER)" >> $@
	@echo "[chmod] $@"; chmod +x $@

%.java: %.grammar
	$(BEAVER) -t $^

%.java: %.flex
	$(JFLEX) -nobak $^

%.smt2: %.c $(KORN_JAR) $(KORN_SH)
	@echo $@
	$(KORN_SH) $< > $@