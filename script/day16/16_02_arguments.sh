#!/bin/bash


# 引数の使い方
function print_something(){
	echo "your argument is: ${1}, ${2}"
	echo "引数の数: ${#}"
		echo "引数の一覧: ${@}"
}

print_something "apple" "lemon"

print_something "orange"
