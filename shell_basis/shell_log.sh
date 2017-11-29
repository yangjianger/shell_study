#!/bin/bash
#test.sh

# 日志
# 日志文件
#cat /var/log/nginx/access.log
#cat /var/log/nginx/error.log-20171125

#查看二进制文件
#strings /usr/sbin/nginx
#字符查看网站
#elinks http://www.taobao.com

#循环查看文件变化
#tail -f /var/log/nginx/access.log

#以时间为标准的日志

#cat /var/log/messages 系统日志

#today=`date '+%Y-%m-%d'`
#filelog="${today}.log"
#
#if [ ! -e $filelog ];then
#    touch $filelog
#fi
#
#echo "`date '+%Y-%m-%d %T'` log input start" >> $filelog
#
#sleep 5
#
#echo "`date '+%Y-%m-%d %T'` log input end" >> $filelog
#
#echo "日志记录完毕"

# logger生成日志系统
# -p 优先级  -i消息
#logger -p 10 -i 'hello world!'






























