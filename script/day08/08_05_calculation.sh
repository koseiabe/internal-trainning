#!/bin/bash

echo "1 + 3" #これは計算できない

# 和
echo "$(expr 2 + 3 )"

echo "$(( 2 + 3 ))" #これが推奨

result="$(( 4 * 5 ))"
echo "${result}"


# 差
echo "$(( 2 - 5 ))"


# 積
echo "$(( 2 * 4 ))"


# 商
echo "$(( 9 / 4 ))" #切り捨てで表示

echo "$(( 9 % 4 ))" #余りが表示される

