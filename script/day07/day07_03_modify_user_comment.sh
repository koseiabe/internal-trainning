#!/bin/bash

# $COMMENTがない場合
if [ -z "$COMMENT" ]; then
	COMMENT="No Comment"
fi

echo "Comment: $COMMENT"


# $USER_NAMEが存在しない場合
# idコマンドでユーザーが存在するか確認
id "$USER_NAME" &> /dev/null 

# 成功した場合０、失敗した場合０以外
# $?がne0の場合の処理
if [ $? -ne 0 ]; then
	echo "ユーザが存在しません"
	exit 1
fi


# ユーザ情報の更新
usermod -c "$COMMENT" $USER_NAME
