#!/bin/bash


time_stamp=$(date "+%Y%m%d %H:M:%S")
day=$(date "+%Y%m%d")


# CPU使用率のファイル
cpu_log_file="/tmp/cpu_${day}.log"

# メモリ使用率のファイル
memory_log_file="/tmp/memory_${day}.log"

disk_log_file="/tmp/disk_${day}.log"




line_no=$( iostat -xd | wc -l )

# iostat -xd | sed -e '1,3d' -e '$d' | while read line

# tailで行末から２行(5-3)を残したい、headで行頭から１行(5-4)残したい。
# headの処理はtailから受け取った行がもととなっているため、１行しか残らない

iostat -xd | tail -n $((line_no - 3)) | head -n $(( line_no - 4)) | while read line
do
			disk_busy=$(echo ${line} | cut -d " " -f "1,14" | sed -e "s/ /,/g")
			echo "${time_stamp},${disk_busy}" >> "${disk_log_file}"
done
