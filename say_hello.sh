#!/bin/bash

#Assignment)Write script called say_hello, which will print greetings based on time

<<Documentation
Name :Sandeep Varma Geddada
Description:To write script called say_hello, which will print greetings based on time
Sample Input:
Sample output:
Good Night sandeep, Have nice day!
This is Friday 25 in February of 2022 11:39:16 PM
 
Documentation

#START of Program

#Storing day,date,month,year,time,hour,AP in variables
				
day=`date | cut -d " " -f1`          		
date=`date | cut -d " " -f2`				
month=`date | cut -d " " -f3`				
year=`date | cut -d " " -f4`
time=`date | cut -d " " -f5-6`
hour=`date | cut -d  " " -f5 |cut -c1-2`
AP=`date | cut -d  " " -f6`

#Segragiting time to AP and PM with Case statements

case $AP in
	AM) if [[ $hour -ge 5 && $hour -le 11 ]]
	    then
		echo Good Morning $USER, Have nice day!
	    
	   elif [[ $hour -ge 12 &&  $hour -le 5 ]]
	   then
		echo Good Night $USER, Have nice day!
	   fi
           ;;
	PM) if [[ $hour -ge 12 && $hour -le 1 ]] 
             then
                 echo Good Noon $USER, Have nice day!
           elif [[ $hour -ge 2 && $hour -le 5 ]]
           then
                 echo Good Afternoon $USER, Have nice day!
           
	    elif [[ $hour -ge 5 && $hour -le 9 ]]
            then
                 echo Good Evening  $USER, Have nice day! 

	    elif [[  $hour -ge 9 && $hour -le 11 ]]
	    then
                echo Good Night  $USER, Have nice day!
            fi
        ;;
	*) echo none
esac
echo This is $day $date in $month of $year $time


