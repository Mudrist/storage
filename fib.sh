#!/bin/bash

echo "Enter the number"
read num1
if [  $(( num1 % 2 )) -eq 0   ];  then
        echo "$num1 is even number"
else
        echo "$num1 is odd number"
fi
