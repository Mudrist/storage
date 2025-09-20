#!/bin/bash

count=1
until [ $count -ge 10 ]
do
	echo "the count of number is $count"
	count=$((count +1))
done	

