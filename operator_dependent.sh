#!/bin/bash
#Assignment)Write a script to perform arithmetic operation on digits of a given number

<<Documentation
Name :Sandeep Varma Geddada
Description:To write a script to perform arithmetic operation on digits of a given number
Sample Input: bash operator_dependent.sh 8312+
Sample output:
Sum of digits =14
 
Documentation

#START of Program

#checking for argument count
if [ $# -lt 1 ]
then
	echo "Error: Invalid argument count"
	echo "Usuage: ./assignment10.sh 1234+"
	exit 1
fi

digit=$1
							#Getting  the string count that also includes null
count=`echo $digit | wc -c`

							#Getting the digit count
digitCount=$(($count-2))

							#Getting  the givenNuber
givenNumber=${digit: 0: $digitCount}

							#Getting  the operator
operator=${digit: $digitCount: $count}


							#Getting first digit initially
result=${digit: 0: 1}

#operating on each digit
for (( i=1; i<digitCount; i++))
do
    nextDigit=${digit:$i:1}
    result=$(($result$operator$nextDigit))
done

case $operator in
	+)echo -n  Sum of digits =
	 ;;
	-)echo -n  Subtraction of digits = 
	 ;;
	x)echo -n Multiplication of digits = 
	 ;;
	/)echo -n Division of digits = 
	 ;;
esac
echo "$result"

   
