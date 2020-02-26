#!/bin/bash -x

echo "Sorting arithmatic computation"

#READING THREE INPUTS FROM USER
read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c
echo "$a ,$b ,$c "

#EXPRESSION FIRST
value1=$(($a+$b*$c))
printf "$value1"

#EXPRESSION SECOND
value2=$(($a*$b+$c))
printf "$value2"

#EXPRESSION THIRD
value3=$(($c+$a/$b))
printf "$value3"

#EXPRESSION FOURTH
value4=$(($a%$b+$c))
printf "$value4"

#STORES THE RESULTS IN A DICTIONARY
declare -A arithmaticOperations
arithmaticOperations[1]=$value1
arithmaticOperations[2]=$value2
arithmaticOperations[3]=$value3
arithmaticOperations[4]=$value4
echo "${arithmaticOperations[@]}"
