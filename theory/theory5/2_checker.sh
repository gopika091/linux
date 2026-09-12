#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Error: Please provide a path."
    exit 1
fi

path=$1

if [ -f "$path" ]
then
    echo "$path is a regular file."
elif [ -d "$path" ]
then
    echo "$path is a directory."
else
    echo "$path is neither a regular file nor a directory."
fi

if [ -r "$path" ]
then
    echo "$path is readable."
else
    echo "$path is not readable."
fi

if [ -w "$path" ]
then
    echo "$path is writable."
else
    echo "$path is not writable."
fi

if [ -x "$path" ]
then
    echo "$path is executable."
else
    echo "$path is not executable."
fi
