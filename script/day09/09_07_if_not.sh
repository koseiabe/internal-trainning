#!/bin/bash

day=$(date '+%d')
echo "${day}"

if (( "${day}" != 1 )); then
	echo "dayが１ではないです"
fi

if [[ ! "${day}" -eq 1 ]]; then
	echo "[]のif文の中の処理実行"
fi
	

if ! (( "${#}" == 0 )); then
	echo "引数が存在します"
fi
