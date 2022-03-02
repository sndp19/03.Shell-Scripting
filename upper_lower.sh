#!/bin/bash

#Assignment)Shell script to convert string lower to upper and upper to lower

<<Documentation
Name :Sandeep Varma Geddada
Description: Shell script to convert string lower to upper and upper to lower
Sample Input:bash upper_lower.sh  converting lower case to upper 
Sample output:
1 - Lower to upper
2 - Upper to lower
Please select option : 1
CONVERTING LOWER CASE TO UPPER
 
Documentation

#START of Program

if [ $# -eq 0 ]
then
	echo Error : Please pass the file name through command line.

# Checking if file passed  as CLA and checking if contents exist

elif ! [ -s "$1" ] 
then
	echo Error : No contents inside the file.

				
elif [ -s "$1" ]					#If file contents exist
then
	text=( $@ )					#storing CLA in array
	echo 1 - Lower to upper				#printing options
	echo 2 - Upper to lower	
	read -p "Please select option : " op		#reading options
	
	case $op in
		1)
		  cat $1 | tr [:lower:] [:upper:]	#Translating lower case to upper case
		  ;;
		2)
		   cat $1 | tr [:upper:] [:lower:]	#Translating upper case to lower case
		  ;;
		*)
		  echo "Error: Invalid option"
		  ;;
	esac
fi
