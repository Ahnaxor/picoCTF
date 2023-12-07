#!/bin/bash

file_path="flag.txt"
cmd="*"

while [ 1 -eq 1 ]
do 
    cat $cmd > "flag.txt"
    result=$(grep "pico" "$file_path")
    if [[ -n "$result" ]]; then
        strings "$file_path" | grep "pico"
        break
    else
        echo "end"
        cmd="**/"$cmd
    fi
done
