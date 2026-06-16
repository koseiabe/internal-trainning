#!/bin/bash

# DEBUG
set -x

name="Taro"
age="18"

echo "name: ${name}, age: ${age}"

set +x

for i in {0..10}
do
	echo "${i}"
done
