#!/bin/bash

#実行ファイルの絶対パス
file_path="$(realpath ${0})"

#実行ファイルの親ディレクトリとoutputディレクトリのパス
base_dir="$(dirname ${file_path})"
output_dir="${base_dir}/output_2"

for i in $(seq 60 -1 0)
do
	DAY=$(date -d "${i} days ago" "+%Y%m%d")
	DAYTIME=$(date -d "${i} days ago" "+%Y%m%d0000")
	output_file="${output_dir}/tmpfile_${DAY}.txt"
	touch -t "${DAYTIME}" "${output_file}"
done

echo "無事完了です"


