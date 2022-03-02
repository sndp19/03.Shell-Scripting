#!/bin/bash

#Assignment.Write a script to sort a given number in ascending or descending order

<<Documentation
Name :Sandeep Varma Geddada
Description:Script to sort a given number in ascending or descending order
Sample Input:
Sample output:
 
Documentation

#START of Program


ch=$1
len=$# 			

len2=$(($len-1))
temp=0


if [ $len -ge 2 ] 
then

	arr=($@)
	arr=(${arr[@]:1})
	echo  ${arr[*]}
	case $ch in
		-a)for i in `seq 0 $len2`
	   	   do
       		 	for j in `seq $i $len2`
        	 	do
			if [ ${arr[$i]} -ge  ${arr[$j]} ] 
			then
				temp=${arr[$i]}
				arr[$i]=${arr[$j]}
				arr[$j]=$temp
		
			fi  	
			done
		
	  

  		   done
	echo Ascending order of array is ${arr[@]}
	;;

		-d)for i in `seq 0  $len2`
        	   do   
                	 for j in `seq $i  $len2`
                 	 do     
			 if [ ${arr[$i]} -le ${arr[$j]} ]
	                 then
                               temp=${arr[$i]}
                               arr[$i]=${arr[$j]}
                               arr[$j]=$temp
 
                         fi
                         done

	            done
		
	 	  echo Descending order of array is ${arr[@]}
	           ;;
	
		*)echo Error : Please pass the choice.
		  echo Usage : ./sorting.sh -a/-d 4 23 5 6 3
		  ;;
     esac

else       
	echo Error : Please pass the argument through command line.
	echo Usage : ./sorting.sh -a/-d 4 23 5 6 3
fi			


