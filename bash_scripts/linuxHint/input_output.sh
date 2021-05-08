#! /usr/bin/bash

args=("$@")

#echo "${args[0]}" "${args[1]}" "${args[2]}"

echo "$@"

echo "input and output stuff"

while read line # while we can read line
do
    echo "$line"
done < "${1:-/dev/stdin}" # get input from stdin and write to $1 ie argument


ls -al 1>file1.txt 2>file2.txt
