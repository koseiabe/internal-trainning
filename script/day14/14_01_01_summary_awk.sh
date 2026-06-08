#!/bin/bash

# 実行ファイルのパス取得
file_path="$(realpath "${0}")"

# 実行ファイルの親ディレクトリを取得
base_dir="$(dirname "${file_path}")"

# ディレクトリ・ファイルの指定 
input_dir="${base_dir}/input"
output_dir="${base_dir}/output"
input_file="${input_dir}/input.csv"
output_file="${output_dir}/output_20260605.csv"

# awkによる一括集集計＆出力処理
awk -F',' '
BEGIN {
    # 合計値の初期化
    total_cost = 0
    total_earning = 0
}
{
    # CSVの各列を変数に格納 ($1=1列目, $2=2列目...)
    day = $1
    type = $2
    product = $3
    price = $5

    # 全ての日付と品目名をマスターとして保持（売上・費用どちらか片方しかない場合に対応するため）
    if (day != "") days[day] = 1
    if (product != "") products[product] = 1

    # 区分（費用 or 売上）に応じて集計
    if (type == "費用") {
        total_cost += price             #合計に加算
        daily_costs[day] += price				#日付ごとに加算
        product_costs[product] += price #品目ごとに加算
    } else if (type == "売上") {
        total_earning += price
        daily_earnings[day] += price
        product_earnings[product] += price
    }
}
END {
	# 1. 総合計の出力（表示）
    print "合計:"
    print "費用: " total_cost
    print "売上: " total_earning
    print ""

    # 2. 日付ごとの合計を出力（外部コマンドのsort -nにパイプで渡して並び替え）
    print "日付ごとの合計"
    print "日付,売上,費用"
    for (d in days) {
        # 「+0」をすることで、値が空（データなし）の場合でも自動的に「0」に変換されます
        print d "," (daily_earnings[d]+0) "," (daily_costs[d]+0) | "sort -n"
    }
    close("sort -n") # 日付の出力をここで確定させる

    print ""

    # 3. 品目ごとの合計を出力（外部コマンドのsortにパイプで渡して名前順に並び替え）
    print "品目ごとの合計"
    print "品目,売上,費用"
    for (p in products) {
        print p "," (product_earnings[p]+0) "," (product_costs[p]+0) | "sort"
    }
    close("sort") # 品目の出力をここで確定させる

}' "${input_file}" >> "${output_file}"

