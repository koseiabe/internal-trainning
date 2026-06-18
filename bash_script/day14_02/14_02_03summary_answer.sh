#!/bin/bash

#実行ファイルの絶対パス
file_path="$(realpath ${0})"

#実行ファイルの親ディレクトリとoutputディレクトリのパス
base_dir="$(dirname ${file_path})"
output_dir="${base_dir}/output_2"


# ファイル作成(2-1)
#for i in $(seq 60 -1 0)
#do
#	DAY=$(date -d "${i} days ago" "+%Y%m%d")
#	output_file="${output_dir}/tmpfile_${DAY}.txt"
#	touch -t "${DAY}" "${output_file}"
#done
#
#echo "無事完了です"


# (2-3)
file_count="$(ls ${output_dir}/tmpfile* | wc -l)"
remove_count="$(( ${file_count} - 50))"

ls -1t "${output_dir}" | tail -n "${remove_count}" | while read file_name
do
	echo ${file_name}
	rm "${output_dir}/${file_name}"
done


