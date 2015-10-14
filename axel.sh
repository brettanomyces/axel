#!/usr/bin/env bash

# data is expected to be output to serial as CSV in the following order
# frSetTemp, frTemp, fzSetTemp, fzTemp, baffelOpen, compOn, compWait, fanOn, heaterOn, heaterWait

source axel.properties

function log {
  while read line; do
    day=$(date "+%F")
    time=$(date "+%T")
    echo "$time","$line" >> log/"$day"_"$log_name".log
  done
}

while true; do
  cat < $serial_port | sed -u '/^\s*$/d' | log
  echo "serial connection broken, reconnecting.." | ts >&2
  sleep 1
done
