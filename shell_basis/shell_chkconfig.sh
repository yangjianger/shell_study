#!/bin/bash
#test.sh

##linux 启动流程
#
##查看sshd在所有级别下的开启和关闭状态
#chkconfig --list sshd
#
##sshd 服务在35级别下开启
#chkconfig --level 3 sshd on
#
##sshd 服务在35级别下关闭
#chkconfig --level 3 sshd off
#
##快速设置sshd 服务 在2345级别开启
#chkconfig sshd on
#
##快速设置sshd 服务 在2345级别关闭
#chkconfig sshd off

#实例： 安装apache应用程序，然后让apache服务在3级别启动
#rpm -qa | grep httpd 查看rpm安装的包
#rpm -e httpd* 卸载rpm安装的包
#pstree | grep httpd 查看某个进程是否启动

#查看摸个级别可启动的服务
#cd /etc/rc.d/rc3.d/

#查看当前运行级别  runlevel

#rpm包软件
#服务脚本  /etc/rc.d/init.d/httpd

#源代码软件
#服务脚本  /usr/local/apache2/bin/apachectl
#开启  /usr/local/apache2/bin/apachectl start|stop
#开机开启  vi /etc/rc.d/rc.local   /usr/local/apache2/bin/apachectl start

# /etc/rc.d/rc.local

#源代码安装三步走
#生成配置文件 ./configure --prefix=/usr/local/apache
#编译 make
#安装 make install  (安装到 --prefix 要求的目的地)

#自定义服务脚本
case $1 in
       start)
            echo "test start"
            sleep 1
       ;;
       stop)
            echo "test stop"
            sleep 1
       ;;
       restart)
            echo "test restart"
            sleep 1
       ;;
       *)
            echo 'please input start|stop|restart ...'
       ;;
esac

#把服务脚本改成标准的rpm脚本


#通过service把自定义脚本进行开启和关闭
#将脚本拷贝到init.d 下面就可以 service test start  要能接收参数

#通过chkconfig把自定义脚本设置开机启动 需要加入.有两种方式。可以写到 vi /etc/rc.d/rc.local 中。 也可以chkconfig httpd on

# chkconfig: 2345 90 20
# description: test server daemon

/usr/share/nginx/html/panda/shell/test.sh start
























