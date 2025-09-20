#!/bin/bash

echo "This is your calculator how may i help you"
echo "enter the first number:"
read num1

echo "enter your next number:"
read num2


echo "Which operation you want to perform +,-,%,/ & etc:"
read op


if [ "$op" == "+" ]; then
	echo "The addtion of 2 numbers is $((num1 + num2))"
elif  [ "$op" == "-" ]; then
	echo "The sub of 2 numbers is $((num1 - num2))"

elif  [ "$op" == "*" ]; then
	echo "The mul of 2 numbers is $((num1 * num2))"

else 
	echo "You do not want to perform mathmatical operation" 
fi	
