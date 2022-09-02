#!/bin/bash

#Assignment.1) Read 'n' and generate a pattern given below (number increments from left to right)

<<Documentation
Name :Sandeep Varma Geddada
Description:Read 'n' and generate a pattern given below (number increments from left to right)
Sample Input:9
Sample output:
1 
1 2 
1 2 3 
1 2 3 4 
1 2 3 4 5 
1 2 3 4 5 6 
1 2 3 4 5 6 7 
1 2 3 4 5 6 7 8 
1 2 3 4 5 6 7 8 9 
Documentation

#START of Program

read -p "Enter the number: " n      #Reading input from user

for i in `seq $n`                   #for loop on input n from 1
 
do

  for j in `seq $i`                  #for loop on every incremental value of input  

  do

     echo -n  $j
     echo -ne " "

  done

  echo

done
	


