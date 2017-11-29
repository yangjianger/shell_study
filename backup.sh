#!/bin/bash
#backup.sh
#desc

#常用变量
time=`date '+%Y-%m-%d'`
backdir="/mnt/${time}"
webdir="/usr/share/nginx/html/panda"
back_webdir="${backdir}/web"
back_datadir="${backdir}/data"
mysql_conn="mysqldump -uroot -pyang_jiang# panda"

#创建目录
mkdir -p $backdir
mkdir -p $back_webdir
mkdir -p $back_datadir

#复制网站目录
rsync -r $webdir $back_webdir &>/dev/null
echo "web backup ok!"

#导出数据库sql语句
$mysql_conn>"${back_datadir}/panda.sql"&>/dev/null
echo "mysql backup ok!"
#
##目标目录压缩完成
zip -r "$backdir.zip" $backdir &>/dev/null
echo "zip make ok!"
#
##源目录删除完成
rm -Rf $backdir
echo "srcdir remove ok!"

#把数据原创传输到服务器指定目录下完成
rsync -e ssh -av --progress -z --compress-level=9 "$backdir.zip" 123.206.67.116:/mnt/
echo "rsync upload ok!"