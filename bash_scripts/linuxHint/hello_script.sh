#!/usr/bin/bash
# this is a hello world script

cat << welcome
this is a hello world
type script thingy
enjoy

welcome

echo "hello bash scripting" > file.txt
echo "You may start editing the file.txt now"
cat >> file.txt

: '
this is  a multi 
line comment
'
echo "hola"
