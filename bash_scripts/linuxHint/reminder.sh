#! /usr/bin/bash

echo "Press any key to continue"

while [ true ]
do
    read -t 3 -n 1 # after three seconds (-t 3), give once warning (-n1)
    if [ $? = 0 ]
    then
        echo "You have terminated the program"
        exit;
    else
        echo -e "Waiting for you to press the key sir!\n"
    fi
done

