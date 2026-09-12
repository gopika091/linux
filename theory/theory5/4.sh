#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Error: Please provide a filename."
    exit 1
fi

file=$1

if [ -e "$file" ]
then
    echo "File exists."
else
    echo "Error: File does not exist."
    exit 1
fi

if [ -f "$file" ]
then
    echo "It is a regular file."
else
    echo "It is not a regular file."
    exit 1
fi

if [ -s "$file" ]
then
    echo "File is non-empty."
    echo "First 5 lines:"
    head -n 5 "$file"
else
    echo "File is empty."
fi
