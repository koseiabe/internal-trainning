#!/bin/bash

#実行ファイルの絶対パス
file_path="$(realpath ${0})"

#実行ファイルの親ディレクトリとoutputディレクトリのパス
base_dir="$(dirname ${file_path})"
output_dir="${base_dir}/output_2"


# (2-4)

ls -1t "${output_dir}"/tmpfile_*.txt | tail -n +51 | xargs -I @ rm "@"


echo "無事完了しました"


