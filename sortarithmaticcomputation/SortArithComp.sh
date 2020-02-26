#!/bin/bash -x

echo "Sorting arithmatic computation"

#READING THREE INPUTS FROM USER
read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c

echo "$a ,$b ,$c "

#Expression first
value1=$(($a+$b*$c))
printf "$value1"
