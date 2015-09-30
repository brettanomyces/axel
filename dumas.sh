#!/usr/bin/env bash

# sed -u '/^\s*$/d': delete empty lines
# ts: add timestamp
cat /dev/ttyACM0 | sed -u '/^\s*$/d' | ts >> hermes.log
exit 1
