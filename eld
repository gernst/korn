#!/bin/sh

exec java -Xmx14g -Xss200m -cp eld.jar lazabs.Main $@
