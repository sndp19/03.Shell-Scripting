#!/bin/bash

#Assignment.4)Write a script to print chess board
<<Documentation
Name :Sandeep Varma Geddada
Description: Script to print chess board
Sample Input:
Sample output: Layout of Chessboard
Documentation



for row  in `seq 8`                           	#For loop for row
do
	for col in `seq 8 `			#For loop for column
	do
		i=$(((row+col)%2))	
	        if [ $i -eq 0  ]
		then
			
			echo -en "\e[47m" ""    #White
			
		else

			echo -e -n "\e[40m" ""  #Black

		fi

	done

	echo -e -n "\e[0m" ""			#Normalizing
	echo                 			#newline
done


