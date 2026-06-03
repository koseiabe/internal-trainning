#!/bin/bash


declare -A salaries

salaries['Taro']=1000000
salaries['Hanako']=1500000
salaries['Yoshiko']=1250000

#echo ${salaries['Taro']}

for i in "${!salaries[@]}"
do
	echo "${i}: ${salaries[${i}]}"
done

