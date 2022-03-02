#!/bin/bash

#Assignment.5)Write a script to print the length of each and every string using arrays
<<Documentation
Name :Sandeep Varma Geddada
Description : script to print the length of each and every string using arrays
Sample Input: bash  string_length.sh hello hi how are you?
Sample output:
Length of string hello - 5
Length of string hi - 2
Length of string how - 3
Length of string are - 3
Length of string you? - 4

Documentation

#START of program
if [ $# -gt 0 ]
then
	array=($@)
	length=$(($#-1))
	for i in `seq 0 $length `
	do 
		 echo -e  Length of string  ${array[$i]} - ${#array[$i]}
	done 
	
else
	echo Error : Please pass the arguments through command-line.

fi



