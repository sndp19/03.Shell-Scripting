#!/bin/bash

#Assignment) Use pipes or redirection to create an infinite feedback loop

<<Documentation
Name :Sandeep Varma Geddada
Description:To write script to use pipes or redirection to create an infinite feedback loop
Sample Input:
Sample output:
 
Documentation

#START of Program

echo "Hai hello" >> new_file.txt                       			#Append text to file

tail -f new_file.txt >> new_file.txt | tail -f new_file.txt		 #Using pipe to create infinite loop of text
