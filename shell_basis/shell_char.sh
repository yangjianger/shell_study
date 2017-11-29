#!/bin/bash
#shell_char.sh

#字符串比较
read -p "please your name: " name
read -p "please your age: " age
echo $name

## 字符串比较 = 不等于是!=  字符串是 -z
if [ $name = 'admin' ];then
    echo "欢迎登陆"
fi

#数字比较用 -eq -gt -lt
if [ $age -gt 10 ];then
    echo "成年了"
fi