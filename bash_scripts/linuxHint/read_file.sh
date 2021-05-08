#! /usr/bin/bash

echo "Enter file from which you want to read"
read file_name

if [ -f "$file_name" ]
then 
    while IFS="\n" read -r line
    do
      echo "$line"
    done < "$file_name"
else
    echo "$file_name doesnt exist"
fi

