#!/bin/bash


full_path=$(realpath ${0}) #${0}は実行しているシェル名

# シェル名を表示
echo "${0}"　　　　　　
# シェルの絶対パスを表示
# echo "${full_path}"　  

bin_path=$(dirname "${full_path}") #full_pathの親ディレクトリを取得

# echo "${bin_path}"

project_path=$(dirname "${bin_path}")

data_path="${project_path}/data"

# echo ${data_path}

cat "${data_path}/name.csv"
