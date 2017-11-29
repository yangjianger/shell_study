#!/bin/bash
#shell_var
name="yangjiang"

#单引号 双引号 反引号
#单引号不能解析变量 不能解析转义字符
#反引号 解析命令 并返回给变量

#位置变量 就是参数 最多9个
# $1 接收第一个变量   $2 接收第二个变量 最多9个
#echo $(( $1+$2 ))
expr $1 + $2

#预定义变量
#获取正在运行的文件名
echo $0

#获取参数个数
echo $#

#获取所有参数
echo $*

for i in $*; do
    echo $i
done

#$?如果是0证明上一条命令执行成功， 否则执行失败
if [ $? == 0 ]; then
    echo "执行成功"
else
    echo "执行失败"
fi