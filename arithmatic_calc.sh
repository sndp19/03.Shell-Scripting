#!/bin/bash

#Assignment.3)Write a script for arithmetic calculator using command line arguments
<<Documentation
Name :Sandeep Varma Geddada
Description:Write a script for arithmetic calculator using command line arguments
Sample Input:10 / 3
Sample output: 3.33
Documentation


#START of Program

if [ $# -eq  3 ]
then	

	echo -n $1 $2 $3
	echo -n " = " 
	case $2 in                               #Operand is $2 of CLA
    		+)echo "scale=2;$1 + $3"|bc      #Addition operation
       		 ;;

       		-)echo "scale=2;$1 - $3 "|bc     #Substraction operation
       		;;

		x)echo "scale=2;$1 * $3 " | bc   #Multiplication operation
        	;;

     		/)echo "scale=2;$1 / $3 " | bc   #Division operation
        	;;
    
       		*)echo "Wrong operator"
        	;;

	esac

elif [ $# -eq 0 ]
then
	echo Error : Please pass the arguments through command line.
	echo"Usage:./arithmatic_calc.sh 2.3 + 6.7"

else 
	echo Error:Please pass 3 arguments.
	echo "Usage:./arithmatic_calc.sh 2.3 + 6.7 "

fi







