#!/bin/bash


path=$(realpath ${0})
basedir=$(dirname ${path})

#関数が定義されているシェルスクリプトを呼び出し
source ${basedir}/libraries/calculation.sh

#合計値の計算
calculation::sum "${@}"
calculation::avg "${@}"
