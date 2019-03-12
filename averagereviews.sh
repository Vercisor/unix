#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[-1]}")" ; pwd -P )
dir= cd "$parent_path/$1"
for file in "$dir"*.dat
do
	hotelName=${file%.*}
	hotelName=${hotelName##*/}
	average=$(awk -F '>' '/<Overall>/ {count+= $2; total += 1} END{print count/total}' $file)
	echo -n $hotelName 
       	printf " %0.2f\n" $average
done|sort -k2 -nr
