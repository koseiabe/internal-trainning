#!/bin/bash

#実行ファイルの絶対パス
file_path="$(realpath ${0})"

#実行ファイルの親ディレクトリとoutputディレクトリのパス
base_dir="$(dirname ${file_path})"
output_dir="${base_dir}/output_2"

seq 60 -1 0 | \
xargs -I @ date -d "@ days ago" "+%Y%m%d" | \
xargs -I @ touch -d "@" "${output_dir}/tmpfile_@.txt"

echo "無事完了です"


