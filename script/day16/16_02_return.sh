#!/bin/bash

function sum(){
				retval=0
				for num in "${@}"
				do
					(( retval+="${num}" ))
				done
				echo "${retval}"
				return ${retval}
}

sum 1 2 3 4
value=${?} #sum 1 2 3 4　のreturnの値を取得
echo "返り値は、${value}です"

# この処理は１５行目と同じ
echo "返り値は、${?}です"
