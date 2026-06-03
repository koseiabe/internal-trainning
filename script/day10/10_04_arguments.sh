#!/bin/bash


i=1
for user in ${@}
do
	echo "User - ${i}: ${user}"
	(( i++ ))
done
