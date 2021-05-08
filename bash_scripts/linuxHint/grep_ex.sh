#! /usr/bin/bash

echo "Enter the filename to search text from"
read file_name

if [ -f "$file_name" ]
then
    echo "Enter the text to search"
    read grepvar
    grep -iv "$grepvar" "$file_name"
else
    echo "File does not exist"
fi
