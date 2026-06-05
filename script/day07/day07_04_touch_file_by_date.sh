#!/bin/bash

# 変数の存在チェック
if [ -z "$SETTING_DATE" ]; then
	echo "変数が設定されていません"
	exit 1
fi

if [ -z "$FILE_NAME" ]; then
	echo "変数が設定されていません"
	exit 1
fi

# 日付を何日後かで設定する
FILE_DATE=$(date -d "$SETTING_DATE" "+%Y/%m/%d %H:%M:%S" )

# ファイル作成
touch -d "$FILE_DATE" $FILE_NAME
