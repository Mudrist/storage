#!/bin/bash

echo "please provide the zip code number :"
read num1

if [ $num1 -eq 120010 ]; then
	echo "your city is gurgaon"
else
 	echo "you belongs from any other city"
fi	
