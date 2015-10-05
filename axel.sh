#!/usr/bin/env bash

function log {
  while read line; do
    day=$(date "+%F")
    time=$(date "+%T")
    echo "$time","$line" >> log/"$day"_hermes.log
  done
}

while true; do
  cat /dev/ttyACM0 | sed -u '/^\s*$/d' | log
  echo "serial connection broken, reconnecting.." | ts >&2
  sleep 1
done
