#!/bin/bash
#disk.sh
#链接三秒关闭服务器的请求
#nc -w 3  127.0.0.1 10000
#nc -w 3 localhost 3306 &>/dev/null

space=`free -m|awk '{if(NR==2){print int($3/$2 * 100)}}'`

if [ $space -lt 19 ];then
	str="mem space less than 10%!!!"
else
	str="mem space greater than 10%!!!"
fi

echo $str|mail -s 'mem space' admin@pandanote.cn