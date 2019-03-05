#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
dir= cd "$parent_path/$1"
for file in "$dir"*.dat 
do
	basename -z $file .dat
	echo -n " " 
       	fgrep -c "<Author>" $file
done|sort -k 2 -nr
