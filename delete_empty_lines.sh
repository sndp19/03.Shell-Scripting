#!/bin/bash

#Assignment.4) Write a script to delete empty lines from a file
<<Documentation
Name :Sandeep Varma Geddada
Description:Writing a script to delete empty lines from a file
Sample Input:
Sample output: 
Documentation

#START of program


file=$1

#checking for file
if ! [ -e $file ]
then
	echo Error: Please pass the file name through command line.


elif [ -e $file ]
then
	echo Empty lines are deleted
	sed -i  '/^[[:blank:]]*$/d' $file
	cat $file
#check for argument count
elif [ $# -lt 1 ]
then
	echo Error: Please pass the file name through command line.
fi

