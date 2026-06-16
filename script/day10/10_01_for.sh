#!/bin/bash

names="Taro Jiro Saburo"
count=0

# namesの値がnameに格納される
# nameに格納された値が順次出力される

for name in ${names}
do
	echo "${count}"
	echo "name: ${name}"
	(( count++ ))
done

names=("hanako" "yoshiko" "asuka")
for name in ${names[@]}
do
				echo "name: ${name}"
done

