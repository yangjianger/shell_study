#!/bin/bash
#test.sh
#以进程号为文件名 测试临时文件

#获取所有httpd应用程序的进程号，然后把进程号存入到临时文件中。从临时文件中取出所有的nginx的进程号。是有for循环用kill杀掉所有的httpd进程。删除之前生成的临时文件。输出关闭进程后的消息

#ps -e | grep nginx  查看进程运行的次数

# $$ 获取当前运行程序进程号
tmpfild=$$.txt

ps -e | grep nginx | awk '{print $1}'>>$tmpfild

for pid in `cat $tmpfild`; do
    echo "nginx $pid 进程号被杀死"
    # kill -9 $pid
    sleep 1
done

rm -rf $tmpfild
echo "nginx 被成功关闭"

































