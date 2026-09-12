#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Error: Please provide a log file."
    exit 1
fi

file=$1

if [ ! -e "$file" ]
then
    echo "Error: File does not exist."
    exit 1
fi

if [ ! -r "$file" ]
then
    echo "Error: File is not readable."
    exit 1
fi

read -p "Enter search term: " term

echo "First 5 matching records:"
grep -i "$term" "$file" | head -n 5

count=$(grep -ic "$term" "$file")

echo "Total matching records: $count"
