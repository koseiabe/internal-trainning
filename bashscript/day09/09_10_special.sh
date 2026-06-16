#!/bin/bash

# 変数がない場合に実行
if [[ -z "${my_var}" ]];then #推奨
#if [[ "${my_var}" == "" ]];then
	echo "my_varは存在しません"
fi


if [[ -n "${1}" ]]; then
# if [[ "${1}" != "" ]]; then
			echo "第一引数が存在する"
fi


name="${2}"
if [[ "${name}" == T* ]]; then
	echo "Tから始まる名前です"
fi
