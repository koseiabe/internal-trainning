#!/bin/bash


time_stamp=$(date "+%Y%m%d %H:M:%S")
day=$(date "+%Y%m%d")


# CPU使用率のファイル
cpu_log_file="/tmp/cpu_${day}.log"

# メモリ使用率のファイル
memory_log_file="/tmp/memory_${day}.log"

disk_log_file="/tmp/disk_${day}.log"


