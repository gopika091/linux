#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Error: Please provide a log file."
    exit 1
fi

file=$1

if [ ! -f "$file" ]
then
    echo "Error: File does not exist."
    exit 1
fi

echo "Searching for words:"

grep -oiE "failed|denied|unauthorized|error" "$file"
