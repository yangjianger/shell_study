#!/bin/bash
#get.cgi
echo "content-type:text/html;charset=utf-8"
echo

#include html code
echo "<html>"
echo "<head>"
echo "<style>"

echo "</style>"
echo "</head>"

echo "<body>"

echo "<pre>"

# get 地址栏参数
qs=$QUERY_STRING
# 将&替换成空
line=`echo $qs | sed 's/&/ /g'`

for loop in $line
do
    name1=`echo $loop|sed 's/=/ /g'|awk '{print $1}'`

    #地址栏参数原理
    # 格式化值 将中文变成 accll
    value1=`echo $loop|sed 's/=/ /g'|awk '{print $2}'|sed 's/+/ /g'|sed -e 's/%\(\)/\\\x/g'`

    str=`printf "${name1}='${value1}'"`

    # 执行 id='id' username="小明"
    eval $str
done

echo $passwd
echo $username


# printf 格式化输出
#eval 将表达式直接执行


echo "</pre>"

echo "</body>"
echo "</html>"