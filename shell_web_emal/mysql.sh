#!/bin/bash
#web.sh
#链接三秒关闭服务器的请求
#nc -w 3  127.0.0.1 10000
#nc -w 3 localhost 3306 &>/dev/null
pstree | grep 3306


if [ $? -eq 0 ];then
	str="mysql status Running!!!"
else
	str="mysql status Shuting!!!"
fi

echo $str|mail -s 'mysql server' admin@pandanote.cn
