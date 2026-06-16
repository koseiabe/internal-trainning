#!/bin/bash


name="${1}"
age="${2}"

if (( "${age}" >= 60 )); then #60以上か
echo "60以上"
elif (( "${age}" > 20 )); then #20より大きいか
echo "21~59"
else
echo "20以下"
fi



if [[ "${name}" == "Taro" ]]; then
				echo "あなたの名前は太郎です"
elif [[ "${name}" != "Hanako" ]]; then
				echo "あなたの名前花子ではないです"
else
				echo "あなたの名前は花子です"　
fi
