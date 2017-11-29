#!/bin/bash
#test.sh
# 信号捕获

#SIGHUP 挂起进程 1
#SIGING 来自键盘终端 ctrl+c/2
#SIGQUiT 从键盘退出 ctrl+\/2
#SIGKILL 无条件终止

#重载配置文件
#kill -1/-HUP 进程id
#重载配置文件
#pkill -HUP httpd

# 捕捉到一个信号后
#trap 命令使用
#捕捉到一个信号后做什么
#trap "function" signal

# trap 信号捕捉 捕捉信号
trap 'myfunc' 2

function myfunc(){

    echo '你正在按ctrl+c,程序无法终止'
}

i=0
while :
do
    let i++
    echo $i
    sleep 1
done































