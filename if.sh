#!/bin/bash

echo "Please provide the number you have:"
read num1

if [ $num1 -gt 5 ]; then
	echo "My condition is getting matched and $num1 is greater than 5"
fi	
