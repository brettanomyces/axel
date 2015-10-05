#!/usr/bin/env bash

while true
do
    cat /dev/ttyACM0 | sed -u '/^\s*$/d' | ./log.sh
    echo "serial connection broken, reconnecting.." | ts >&2
    sleep 1
done
