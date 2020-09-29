#!/bin/sh

exec java -Xmx14g -Xss20m -cp eld.jar lazabs.Main $@
