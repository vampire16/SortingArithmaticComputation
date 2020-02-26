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

#STORES THE RESULTS IN A ARRAY
declare -a arithOperation
for (( index=0; index<${#arithmaticOperations[@]}; index++ ))
do
	temp=$(($index+1))
	value="${arithmaticOperations[$temp]}"
	arithOperation[$index]=$value
done
echo "${arithOperation[@]}"

#FUNCTION FOR SORTING ARRAY IN DESCENDING ORDER
function sortDescending(){
	arr=("$@")
	for (( index1=0; index1<${#arithOperation[@]}; index1++ ))
	do
		for (( index2=0; index2<${#arithOperation[@]}-1-$index1; index2++ ))
		do
			tempIndex=$(($index2+1))
			if (( arr[$index2]<arr[$tempIndex] ))
			then
				temp=${arr[index2]}
				arr[index2]=${arr[tempIndex]}
				arr[tempIndex]=$temp
			fi
		done
	done
	echo "${arr[@]}"
}
result=$( sortDescending ${arithOperation[@]} )
echo "Result in descending oredr : $result"
