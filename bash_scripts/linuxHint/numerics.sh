#! /usr/bin/bash

n1=4
n2=20

echo "num1 + num2 = $(( n1 + n2 ))"
echo "num1 - num2 = $(( n1 - n2 ))"
echo "num1 * num2 = $(( n1 * n2 ))"
echo "num1 / num2 = $(( n1 / n2 ))"
echo "num1 % num2 = $(( n1 % n2 ))"

echo "Enter hex num of your choice"
read hexnum 

echo -n "The decimal value of $hexnum is : "
echo "obase=10; ibase=16; $hexnum " | bc -l
