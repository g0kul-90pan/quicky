#! /bin/bash

function func() # function declaration
{
    echo "Hello world"
}

func #function calling

function print_arg()
{
    echo $@ # print the first argument

}

print_arg this is an argument  # passing argument as Hello

function funcheck()
{
    returning_value="Using function right now"
    echo "Inside function"
    echo "$returning_value"
    echo -e "\n"
}

echo -e "Function with arguments\n"
returning_value="I love tacos"
echo -e "\n" 
echo "Outside function" 
echo "$returning_value" 
funcheck #returning_value updated from I love tacos to Using function right now
echo "Outside function" 
echo "$returning_value" 

