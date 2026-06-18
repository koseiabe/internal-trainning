#!/bin/bash

# 環境変数
VAR=12

# set文

#関数の定義
function print_hello(){
	echo "Hello"
}

print_goodbye(){
	echo "Good bye"
}


# 関数の呼び出し、これがないと実行されない
print_hello
print_goodbye
