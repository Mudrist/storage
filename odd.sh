#!/bin/bash


echo "Please provide the number1:"
read num1

if [ $(( num1 % 2 )) -eq 0 ]; then
	echo "$num1 is a even number"
else
	 echo "$num1 is an odd number"
fi 
