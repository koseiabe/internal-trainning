#!/bin/bash

# 2 割り込み:SIGIN
trap "echo 'ctrl+c 実行'" 2

# 15 kill停止:SIGTERM
trap "echo '停止しました' > tmp.log" 15

# 1 端末切断:SIGHUP
trap "echo '端末が切断されました' > sigup.log" 1



sleep 100
