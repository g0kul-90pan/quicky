#! /usr/bin/bash

echo "Enter the filename to search from "
read filename

if [ -f "$filename" ]
then
    awk '/linux/ {print $3,$4}' $filename # prints out fourth field
else
    echo "$filename does not exist"
fi

