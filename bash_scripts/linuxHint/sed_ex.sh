#! /usr/bin/bash

echo "Enter the filename to substitute using sed"
read filename

if [ -f "$filename" ]
then
    sed -i 's/i/III/g' "$filename"
else
    echo "$filename does not exist"
fi
