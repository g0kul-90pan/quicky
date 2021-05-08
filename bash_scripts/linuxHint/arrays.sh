#! /usr/bin/bash

car=( 'BMW' 'Honda' 'Toyota' )

car[2]='Mercedes' # replacing Honda with mercerdes
echo "${car[@]}" # outputing all contents of array
echo "${car[0]}" # outputting 0th index
echo "${car[1]}" # outputting 1th index
echo "${car[2]}" # outputting 2th index

echo "${!car[@]}" #listing the index
echo "${#car[@]}" # the number of elements

