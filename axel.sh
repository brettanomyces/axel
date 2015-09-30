#!/usr/bin/env bash

while true
do
    ./dumas.sh
    echo "dumas stopped with exit code $?.  Respawning.." >&2 
    sleep 1
done
