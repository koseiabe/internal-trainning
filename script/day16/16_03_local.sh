#!/bin/bash

function my_function(){
	echo "${name}"
	local name="Jiro"
	local age=18
	echo "${name}"
	echo "${age}"
}

main(){
				echo "第一引数は${1}です"
				name="Taro"

				my_function 
				echo "関数実行後: ${name}"
				echo "年齢: ${2}"
			}

main "${@}"
