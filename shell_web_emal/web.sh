#!/bin/bash
#web.sh
#链接三秒关闭服务器的请求
#nc -w 3  127.0.0.1 10000

#nc -w 3  localhost 80 &>/dev/null
pstree | grep 80
if [ $? -eq 0 ]; then
    str="nginx web服务器运行正常"
else
    str="nginx web服务器关闭或无响应状态！！！"
fi

echo $str | mail -s "apache web server" admin@pandanote.cn

#nc -w 3  127.0.0.1 3306&>/dev/null
