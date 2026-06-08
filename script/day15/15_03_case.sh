#!/bin/bash

# case 文

case "${word}" in
	"hello" )
		echo "こんにちは"
		;;
	"bye" )
		echo "さようなら"
		;;
	*)
		echo "その他の処理"
esac

