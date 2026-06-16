#!/bin/bash

months=("January" "February" "March")

#全要素
echo "${months[@]}"

echo "${months}"

#各要素にアクセス

var="1月: ${months[0]}, 2月:${months[1]}, 3月:${months[2]}"
echo "${var}"


#要素の追加と削除
months+=("April" "May")
echo "${months[@]}"

months=("${months[@]}" "June")

echo "${months[@]}"

unset months[1]

months[0]="1月"
echo "${months[@]}"

# 明示的に配列認知できる
declare -a array1=("A" "B" "C")
declare -a array2=("D" "E" "F")

# 配列をつなげる
array3=("${array1[@]}" "${array2[@]}")

echo "${array3[@]}"

# 配列の一部を取りだす
echo "${array3[@]:2:2}"

# 要素の一部
echo "${array3[2]:1:3}"


