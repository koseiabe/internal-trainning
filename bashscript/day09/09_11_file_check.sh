#!/bin/bash

#ファイル、ディレクトリが存在する
if [[ -e "file" ]]; then
	echo "ファイルが存在"
fi


# -f:ファイルが存在
if [[ -f "test" ]]; then
	echo "testファイルが存在する"
fi

# -d:ディレクトリが存在
if [[ -d "test" ]]; then
	echo "testディレクトリが存在"
fi

# -w:書き込み権限があるか
if [[ -w "file" ]]; then
	echo "書き込み権限有"
fi

# -x:実行権限があるか
if [[ -x "file" ]]; then
	echo "実行あり"
fi

