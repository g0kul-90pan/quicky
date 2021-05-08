#! /usr/bin/bash

mkdir -p random_folder

echo "Enter the directory name to check"
read dir_name

if [ -d "$dir_name" ] #check if folder exists
then
    echo "$dir_name exists"
else
    echo "$dir_name does not exists"
fi


echo "Enter the file name to create"
read file_name
touch $file_name 

echo "Enter the file name to check"
read file_check

if [ -f "$file_check" ]
then
    echo "$file_check exists and you can append now"
    echo "Enter the text: "
    read file_text
    echo "$file_text" >> "$file_check"
else
    echo "$file_check does not exists"
fi
