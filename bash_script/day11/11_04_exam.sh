#!/bin/bash

# ファイルの中の数字の合計
sum=0

file_name=""
while [ ! -f "${file_name}" ] #存在しないファイルが入力される限りループする
do
		read -p "ファイル名を入力してください" file_name
		if [ ! -f  "${file_name}" ]; then
			echo "ファイルが存在しません"
		fi
done

#if [ ! -f "${file_name}" ]; then
#	echo "ファイルが存在しません"
#	exit 1
#fi

while read p
do
	(( sum += "${p}" )) 2> /dev/null
#参照ファイルに空白がある場合にエラーメッセージが出るので/dev/nullで出力しないようにしている
done < "${file_name}"

echo "合計:${sum} "

