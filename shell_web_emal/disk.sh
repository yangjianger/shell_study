#!/bin/bash
#disk.sh
#链接三秒关闭服务器的请求
#nc -w 3  127.0.0.1 10000
#nc -w 3 localhost 3306 &>/dev/null

space=`df|awk '{if(NR==2){print int($5)}}'`

if [ $space -lt 10 ];then
	str="disk space less than 10%!!!"
else
	str="disk space greater than 10%!!!"
fi

echo $str|mail -s 'disk space' admin@pandanote.cn