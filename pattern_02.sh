#!/bin/bash

#Assignment.2)Read 'n' and generate a pattern given below (number increasing from Top to bottom)
<<Documentation
Name :Sandeep Varma Geddada
Description:Read 'n' and generate a pattern given below (number increments from Top to bottom)
Sample Input:4
Sample output:
1
23
456
78910

Documentation

#START of Program
read -p "Enter the  number: " n		 #Reading input from user 

k=1

for i in `seq $n`  			#for loop on input n from 1
do 
	
	for j in `seq $i`		#for loop on every incremental value of input 
	do
		echo -n  "$k"
		echo -en  " "		

		k=$((k + 1))

	done
	

	echo

done       
