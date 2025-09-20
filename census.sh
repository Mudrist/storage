#!/bin/bash
declare -A census
census[delhi]="10001  10002 110002"
census[mum]="10003 1005"
census[chen]="10006 1003"
census[bengi]=1000
census[kolkatai]=10001


echo "The census data is like this"
echo "city polulation area"
for city in "${census[@]};do
	read -r area <<< "${census[$city]}"
	printf "%-10s" "$city"
done
