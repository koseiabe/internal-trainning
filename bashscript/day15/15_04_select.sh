#!/bin/bash


select brand in "Samusung" "Iphone" "Xperia"
do
	echo "あなたが選んだのは${REPLY}番目の${brand}です"
	case "${brand}" in
		"Samusung")
			echo "10000円"
			;;
		"Iphone")
			echo "30000円"
			;;
		*)
			echo "不明"
	esac
	#2番目を選択したときに終了する
	if [ ${REPLY} -eq 2 ]; then
		break
	fi
done
