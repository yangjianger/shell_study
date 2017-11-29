#!/bin/bash
#永久修改eth0的ip
vi /etc/sysconfig/network-scripts/ifcfg-eth0

#history 查看历史命令
history

#查看历史中的第五条命令
!5

#查看并执行历史中最后一次以ls开头的命令
!ls

#查看硬盘使用情况
df -Th

#查看内存
free -mh

#查看已有别名
alias

#定义别名
alias lsall="ls -a"

#删除别名
unalias lsall

#重定向输出到文件中  是追加
ls >>a.txt

#重定向输出到文件中  是添加
ls >a.txt

#把命令正确结果输出到文件中
ls 1>a.txt

#把命令错误输出到文件中
lss 2>b.txt

#解析脚本错误正确的都输出到文件中
bash for.sh &>1.txt

#解析脚本错误正确的都输出到文件中  追加
bash for.sh 1>>a.txt 2&>>1

#查看文件第一行
head -1 /etc/passwd

#查看文件最后一行
tail -1 /etc/passwd

#查看所有组
cat /etc/group

#用户管理
#添加用户
useradd user1

#删除用户
userdel -r user1

#查看用户
id user1
#查看当前用户
id

#设置密码
passwd user1

#设置不输出密码
echo "123"|sudo passwd --stdin user1 &>/dev/null

#查看用户的密码 !!表示没有密码
cat /etc/shadow

#用户和组信息
#把用户加入组 把user1加入到root组
gpasswd -a user1 root

#把用户删除组 把user1删除root组
gpasswd -d user1 root

# linux用户
#   1.所有者（u）
#   2.所属组（g）
#   3.其他用户（o）
#   4.所有用户（a）

# 修改权限
chmod 755 file
#给所有者加执行权限
chmod u + x file

#给组加权限 之后将用户加入到组里面
#删除权限
chmod u - x file

#权限细化需求: acl
#1.getfacl 查看文件权限
getfacl index.php

#setfacl    设置文件权限
setfacl -m u:user1:rw index.php

#删除文件权限
setfacl -x user:user1 index.php

#清空文件权限
setfacl -b index.php

#目录设置acl权限
setfacl -m u:user1:rwx index.php

#如何对目录以及子目录和文件设置facl权限
setfacl -m u:user1:rwx -R /mnt

#后期添加的目录以及子目录和文件设置facl权限  继承父目录权限
setfacl -m u:user1:rwx -R /mnt
setfacl -m d:user1:rwx -R /mnt #给目录设置默认的权限

#递归创建目录
mkdir -p /a/b/c

#设置用户对命令的执行权限 sudo分配权限
#设置 visudo
visudo
user1  localhost=/usr/sbin/useradd
#user1用户登录
#使用sudo授权命令的时候 需要在sudo前加sudo
sudo /usr/sbin/useradd user5

#使用无密码的sudo授权命令
#执行 usr/sbin/useradd命令是不需要密码的
nginx ALL=NOPASSWD:/usr/sbin/useradd,/usr/sbin/userdel,/usr/bin/passwd,/sbin/init

#执行shell脚本的方式
#1.bash test.sh  不需要设置执行权限，不需要写解析器
#2. ./test.sh    需要设置执行权限，需要写解析器

#linux查询网络端口
netstat -tunpl | grep 80

#who 显示当前有多少用户在线

wc -l #统计条数

#递归显示文件
ls -lhR /usr/share/nginx/html/panda >> /var/log/pubdir.log












