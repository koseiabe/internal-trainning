#!/bin/bash

# ""で囲う
name="Taro"

# 数字は""を使わない
age=18

sentence="He said \"Hi,name is ${name}. I'm ${age} year's old\""

echo "${sentence}"

sentence='He is ${age}'

echo "${sentence}"



#定数
#大文字+_
readonly CONSTANT_VAR="constant"

echo "${CONSTANT_VAR}"

var="constant ${CONASTANT_VAR}"

#定数を書き換えるとエラー

