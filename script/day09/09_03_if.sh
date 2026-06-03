#!/bin/bash


name="${1}"
age="${2}"

if test "${age}" -ge 60; then #60以上か
	echo "60以上"
elif test "${age}" -gt 20; then #20より大きいか
	echo "21~59"
else
	echo "20以下"
fi



if test "${name}" == "Taro"; then
				echo "あなたの名前は太郎です"
elif test "${name}" != "Hanako"; then
				echo "あなたの名前花子ではないです"
else
				echo "あなたの名前は花子です"　
fi
