#!/bin/bash

# 実行ファイルのパス取得
file_path="$(realpath ${0})"

# 実行ファイルの親ディレクトリを取得
base_dir="$(dirname ${file_path})"

#inputディレクトリ、inputディレクトリの指定 
input_dir="${base_dir}/input"
output_dir="${base_dir}/output"

# 参照元ファイルのパス指定
input_file="${input_dir}/input.csv"



total_cost=0
total_earning=0

# 売上と費用の合計を計算
while read p
do
	day=$(echo "${p}" | cut -d "," -f 1)
	cost_or_earning=$(echo "${p}" | cut -d "," -f 2)
	product_name=$(echo "${p}" | cut -d "," -f 3)
	price=$(echo "${p}" | cut -d "," -f 5)

	if [[ "${cost_or_earning}" == "費用" ]];then #値が費用と一致
					(( total_cost+="${price}" ))				#足し
	elif [[ "${cost_or_earning}" == "売上" ]];then #値が売上と一致
					(( total_earning+="${price}" ))			#足し
	fi
done < "${input_file}"



output_file="${output_dir}/output_20260605.csv"

echo "合計:" > "${output_file}"

echo "費用: ${total_cost}" >> "${output_file}"

echo "売上: ${total_earning}" >> "${output_file}"


