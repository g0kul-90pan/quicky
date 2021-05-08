# !/bin/bash

case=10
car="FERRARI"

# if statement

if [ "$case" -lt 5 ]
then
    echo "Case is less than 5"
fi

# if else statement

if [ "$case" -lt 5 ]
then
    echo "Case is less than 5"
else
    echo "Case is greater than 5"
fi

# if else statement

if [ "$case" -lt 5 ]
then
    echo "Case is less than 5"
elif [ "$case" -gt 8 ]
then
    if [ "$case" -eq 9 ]
    then
        echo "Case is equal to 9"
    elif [ "$case" -eq 10 ] 
    then    
        echo "Case is equal to 10"
    fi
fi


# Case statement

case $car in
    "BMW")
        echo "This is a BMW" ;;
    "MERCEDES")
        echo "This is a mercedes" ;;
    "HONDA")
        echo "This is a honda" ;;
    *)
        echo "Unknown car" ;;
esac
