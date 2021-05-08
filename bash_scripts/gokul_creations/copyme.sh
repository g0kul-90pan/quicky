##
# usage: ./copyme.sh {nameofbinary)
# must run it as root
# i need a treat :)
#
# Copies all the lib files and bin executable into the appropriate place in jail automatically
##

#!/bin/bash

path='/home/jail/' # Replace this with your path to jail

prog=$(which $1)
echo "The following files copied to bin"
echo $prog
cp $prog $path/bin
echo

libs=$(ldd $prog| awk '/\/lib*/{print}' | cut -d '(' -f 1 | cut -d '>' -f 2 | sort)
cp $libs $path/lib	
echo "The following files copied to lib"
echo $libs
echo

