
# 素数かチェック
# 1,2,3,5,7,11,13

function is_prime(){
		local number=${1}
		for i in $(seq 2 ${number});
		do
			if (( ${number} % ${i} == 0 ))
		done
}

function main(){
		
}

main "${@}"
