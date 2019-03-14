#!/bin/bash
cd $1
for file in *.dat 
do
	fileName=${file%.*}
	fileName=${fileName##*/} 
	echo $fileName $(grep -c "<Author>" $file) 
done | sort -k 2 -nr
