#!/bin/bash

color="${1}"
echo "${color}"

# [[]]
if [[ "${color}" == "Blue" || "${color}" == "Gray" ]]; then
				echo "COLORはBlue or Grayです"
fi


# []
#if [ "${color}" == "Blue" ] || [ "${color}" == "Gray" ]; then　#||の時
if [ "${color}" == "Blue" -o "${color}" == "Gray" ]; then #-oの時
				echo "COLORはBlue or Grayです"
fi


year=$(date "+%Y")
# 2021

if (( "${year}" > 2000 || "${year}" <= 2100 )); then
 echo "21世紀です"
fi

