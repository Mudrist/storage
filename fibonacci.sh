#!/bin/bash

echo "please provide the end number for which you want the fibonacci series:"
read n

a=0
b=1

echo "the fibonacci series will be :"

for ((i=0; i<n; i++))
do
	echo -n "$a"
	fn=$((a+b))
	a=$b
	b=$fn
done


