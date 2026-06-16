#!/bin/bash

counter=1

until (( "${counter}" > 10 ))
do
	echo "counter: ${counter}"
	(( counter++ ))
	if (( "${counter}" > 6)); then
		break
	fi
done


name=""
until [[ "${name}" == "Taro" ]]
do
	read -p "nameを入力: " name  #標準入力
	echo "name: ${name}"
done

