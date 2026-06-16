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

count=1

for i in $(ls -1t "${output_dir}"/tmpfile_*.txt 2>/dev/null)
do
	if [ ${count} -gt 50 ];then
		rm "${i}"
	fi
	((count++))
done

echo "無事完了しました"


