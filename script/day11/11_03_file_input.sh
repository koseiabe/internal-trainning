#!/bin/bash

file=$(cat file.txt)

echo "${file}"



var="before"
#while <
while read p #readは1行ずつ順番に読み込む処理
do
	if [[ "${p}" == "osaka" ]]; then
		continue
	fi
	var="After"
	echo "${p}" #ファイルの1行1行を取り出す
done < file.txt

echo "var: ${var}"



var2="before"
#catを｜でwhileに送った場合は内部で変更した値が反映されない
cat file.txt | while read p
do
	var2="After"
	echo "${p}"
done 

echo "var2: ${var2}"
