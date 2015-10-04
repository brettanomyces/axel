#!/usr/bin/env bash

while read line; do
  day=$(date "+%F")
  time=$(date "+%T")
  echo "$time","$line" >> log/"$day"_hermes.log
done
