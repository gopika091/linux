#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Error: Please provide a filename."
    exit 1
fi

file=$1

if [ -f "$file" ]
then
    echo "File exists: $file"
    echo "First 5 lines:"
    head -n 5 "$file"
else
    echo "Error: File does not exist."
fi
