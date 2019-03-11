#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
dir= cd "$parent_path/$1"

for file in "$dir"*.dat 
do
	hotelName="hello"
	#hotelName=$(basename -z $file .dat)
	average=$(awk -F '>' '/<Overall>/ {count+= $2; total += 1} END{print count/total}' $file)
	echo $hotelName $average	
done|sort -k 2 -nr
