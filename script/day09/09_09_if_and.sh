#!/bin/bash

name="${1}"
age="${2}"

#if [[ "${name}" == "Taro" && "${age}" -gt "20" ]]; then
#if [ "${name}" == "Taro" && "${age}" -gt "20" ]; then
#if test "${name}" == "Taro" && "${age}" -gt "20" test; then
if (( "${name}" == "Taro" && "${age}" > "20" )); then
echo "あなたの名前はTaro,年齢は２０より大きい"
fi


year=$(date "+%Y" )
#2026
year=2000
#4で割り切れて、100で割り切れない
if (( "${year}" % 4 == 0 && "${year}" % 100 != 0 )); then
	echo "うるう年です"
else
	echo "うるう年ではないです"
fi

