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

# 日付ごとの売上費用
declare -A daily_costs
declare -A daily_earnings

# 品目ごとの売上費用
declare -A product_costs
declare -A product_earnings
total_cost=0
total_earning=0

# 売上と費用の合計を計算
while read p
do
	day=$(echo "${p}" | cut -d "," -f 1)
	cost_or_earning=$(echo "${p}" | cut -d "," -f 2)
	product_name=$(echo "${p}" | cut -d "," -f 3)
	price=$(echo "${p}" | cut -d "," -f 5)

	if [[ "${cost_or_earning}" == "費用" ]];then 					#値が費用と一致
					(( daily_costs["${day}"]+="${price}" ))       #プライスを日付ごとに足す
					(( product_costs["${product_name}"]+="${price}" ))
					(( total_cost+="${price}" ))									#足し
	elif [[ "${cost_or_earning}" == "売上" ]];then 				#値が売上と一致
					(( daily_earnings["${day}"]+="${price}" ))		#プライスを日付ごとに足す
					(( product_earnings["${product_name}"]+="${price}" ))
					(( total_earning+="${price}" ))								#足し
	fi
done < "${input_file}"


# 実行結果を反映させるファイルを変数に格納
output_file="${output_dir}/output_20260605.csv"

echo "合計:" > "${output_file}"

# 費用合計を出力
echo "費用: ${total_cost}" >> "${output_file}"

# 売上合計を出力
echo "売上: ${total_earning}" >> "${output_file}"

# 日付ごとに出力
echo -e "\n日付ごとの合計" >> "${output_file}"
echo "日付,売上,費用" >> "${output_file}"

# 配列のキー（日付）一覧が出力される
echo "${!daily_costs[@]}" | sed "s/ /\n/g" | sort -n | while read key
do
	echo "${key},${daily_earnings[${key}]},${daily_costs[${key}]}"
	echo "${key},${daily_earnings[${key}]},${daily_costs[${key}]}" >> "${output_file}"
done

# 品目ごとに出力
echo -e "\n品目ごとの合計" >> "${output_file}"
echo "品目,売上,費用" >> "${output_file}"
echo "${!product_costs[@]}"
echo "${!product_earnings[@]}"

echo "${!product_costs[@]} ${!product_earnings[@]}" | sed "s/ /\n/g" | uniq | while read key
do
	echo "${key},${product_earnings[${key}]},${product_costs[${key}]}" >> "${output_file}"
done

