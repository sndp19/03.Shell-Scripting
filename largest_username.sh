#!/bin/bash

#Assignment) Display the longest and shortest user-names on the system

<<Documentation
Name :Sandeep Varma Geddada
Description:To display the longest and shortest user-names on the system
Sample Input:
Sample output:
 
Documentation

#START of Program


#to get only the list and delete any lines that are commented into tempFile2
cat /etc/passwd > tempFile
sed '/^#/d' tempFile > tempFile2

#to get the user name list and the Total username count
totlUsrNames=`cat tempFile2 | cut -d":" -f1`
totlUsrCount=`cat tempFile2 | cut -d":" -f1 | wc -l`

#-------------------------------------

#initialization
longlettercount=0

# letter count of first username 
shortlettercount=$((`echo $totlUsrNames | cut -d" " -f1 | wc -m`-1))


#to get the longest and shortest usernames
for (( i=1; i<=$totlUsrCount; i++ ))
do
	username=`echo $totlUsrNames | cut -d" " -f$i`

	#username letter count is stored

	namecount=$((`echo $totlUsrNames | cut -d" " -f$i | wc -m`-1))

	if [ $namecount -ge $longlettercount ]
	then
#when the  namecount is greater than previously saved longlettercount,
#update the longest word to be the current username and longlettercount to c    urrent namecount

		longestword=$username
		longlettercount=$namecount
	elif [ $namecount -le $shortlettercount ]
	then
		#if the namecount is smaller than previously saved shortlettercount, update the shortestword to be the current username and shortlettercount to current namecount
		shortestword=$username
		shortlettercount=$namecount
	fi
done

echo " shortest username: $shortestword "
echo " longest username: $longestword "

#clean the tempFiles
rm -f tempFile
rm -f tempFile2
