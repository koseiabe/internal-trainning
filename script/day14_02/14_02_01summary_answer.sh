#!/bin/bash

#実行ファイルの絶対パス
file_path="$(realpath ${0})"

#実行ファイルの親ディレクトリとoutputディレクトリのパス
base_dir="$(dirname ${file_path})"
output_dir="${base_dir}/output_2"



# 解説動画用
output_file="${output_dir}/tmpfile_"

for i in {60..0}
do
	DAY=$(date -d "${i} days ago" "+%Y%m%d")
	touch -t "${DAY}" "${output_file}${DAY}.txt"
done

echo "無事完了です"


