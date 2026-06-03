#!/bin/bash

#シェル変数定義
currentdate=$(date '+%Y%m%d')

export FILE_NAME="my_files"

#テキストファイルを作成
touch ${FILE_NAME}_${currentdate}.txt

