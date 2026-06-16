#!/bin/bash


trap "remove_files" 1 2 15

remove_files(){
rm ./tmp_*
exit
}

for i in {0..100}
do
	echo "${i}" > tmp_${i}.log
	sleep 1
done
