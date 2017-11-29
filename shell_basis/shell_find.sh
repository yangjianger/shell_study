#!/bin/bash
#test.sh

#
#find ./ -name "*.txt"
#find ./ -name "*.doc"
#find ./ -name "[a-z]*.txt"
#find ./ -name "[a-z]*.txt"
#find ./ -name "file[1-5].txt"

#find /etc -name ifcfg-eth0

#查权限
#find ./ -perm 777 -type f

#查类型
#find ./ -type f 是目录
#find ./ -type d 是文件
#find ./ -type l 是链接

#查找root用户创建的文件
#find -user root

#5天以内修改的文件
#find /var -mtime -5
#5天以前修改的文件
#find /var -mtime +5

#stat /etc/passwd 查看文件相关信息

#大于1M的文件
#find ./ -size +1000000c
#小于1M的文件
#find ./ -size -1000000c

#xargs 将find找到的文件 经过后面的处理
#find  | xargs rm -rf

#正则表达式






















