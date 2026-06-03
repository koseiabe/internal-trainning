#!/bin/bash

# 標準入力を行う
read name

echo "${name}"

read -p "メッセージを入力してください: " message

echo "${message}"

# 文字を画面に表示させない
read -sp "パスワードを入力してください:" password

echo "${password}"

# 配列
read -a sports
echo "${sport[@]}"
