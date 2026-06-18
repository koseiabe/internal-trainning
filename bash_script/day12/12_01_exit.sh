#!/bin/bash

file_path=$(realpath $0)
dir_path=$(dirname "${file_path}")


#外部ファイルを実行
${dir_path}/12_01_external.sh

status="${?}"
echo "status: ${status}"


#ech "aaa"
# エラー

if (( ${?} != 0 )); then
				exit 15
fi

echo "aaa"　
# 正常

#exit 0
