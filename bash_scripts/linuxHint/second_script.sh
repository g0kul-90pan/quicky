# !/usr/bin/bash
echo $MESSAGE
echo "Enter the first string: "
read st1
echo "Enter the second string: "
read st2

if [ "$st1" == "$st2" ]
then
    echo "The strings match"
else
    echo "The strings dont match"
fi

echo "Now will join the strings"
combine="$st1 $st2"
echo $combine

echo "Upper case specifically"
echo "${st1^i}" #uppercase first instance of i if it is the firstletter of the word
echo "${st2^^}" #uppercase everything
