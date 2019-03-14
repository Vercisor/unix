#!/bin/bash
cd $1
for file in *.dat
do
	hotelName=${file%.*}
	hotelName=${hotelName##*/}
	average=$(awk -F '>' '/<Overall>/ {count+= $2; total += 1} END{print count/total}' $file)
	echo -n $hotelName 
       	printf " %0.2f\n" $average
done|sort -k2 -nr
