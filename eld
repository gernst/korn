#!/bin/sh

exec java -Xmx3g -Xss20m -cp eld.jar lazabs.Main $@
