#!/bin/bash

# -e输出语句里面的转义符 换行
#echo -e "ewewe\ndasdasd"
## -n 输出语句里面的转义符 不换行
#echo -n "请输入你的名字: "
#read name
#echo "欢迎您$name"

# 颜色
# \033[前景颜色;背景颜色m
# \033[0m 恢复系统颜色
#前景色 30黑色 31红色  32绿色 33棕色 34蓝色 35紫色 36青色 37白色
#背景色 40黑色 41红色  42绿色 43棕色 44蓝色 45紫色 46青色 47白色

time=`date '+%Y-%m-%d'`
echo -e "今天是\033[32;40m${time}\033[0m，天气很美好"

#./test.sh | tee menu.txt  有利于边输出边保存

#输出前10行并输出行号
#cat /etc/passwd|head|nl

#nl 输出行号
nl /etc/passwd

#文档原型输出
cat<<x
please input your name:
    1)aaaaaaaaa
    2)aaaaaaaaa
    3)aaaaaaaaa
    4)aaaaaaaaa
x