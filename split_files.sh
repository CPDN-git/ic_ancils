#!/bin/bash

mon=("jan" "feb" "mar" "apr" "may" "jun" "jul" "aug" "sep" "oct" "nov" "dec")

echo $mon

for i in `seq 00 11`; 
do 
	if [ $i -eq 11 ]; then
		year=2
	else
		year=3
	fi
	echo $year
	echo $i
	echo ${mon[${i}]}
	j=` printf %02d $(( $i + 1 )) `
	cdo -splitsel,1 xnwfxa.pfk${year}${mon[${i}]}.theta_diff.nc ic_N144_200${year}${j}_

done
