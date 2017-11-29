#!/bin/bash
#test.sh

# nginx日志切割
#cat /var/log/nginx/access.log

yesterday=`date '+%Y%m%d'`

srclog="/var/log/nginx/access.log"
dstlog="/var/log/nginx/logsbak/access_${yesterday}.log"

mv $srclog $dstlog

# 移除完日志后，必须要重新加载配置文件
pkill -1 nginx


#分析日志
#cat /var/log/nginx/logsbak/$dstlog | awk '{print $1}'|sort|uniq -c
# 将数据查出，切割。保存到数据库中

tempfile=$$.txt
cat /var/log/nginx/logsbak/access_20171127 | awk '{print $1}'|sort|uniq -c|awk '{print $2":"$1}'>$tempfile

mysql="mysql -uroot -pyang_jiangqq#"

for i in `cat $tempfile`
do
    # 变量用echo
    ip=`echo $i | awk -F: '{print $1}'`
    num=`echo $i | awk -F: '{print $2}'`
    sql="INSERT INTO panda.shell_log(date, ip, num) VALUE('$yesterday','$ip','$num')"

    $mysql -e "$sql"
done

rm -Rf $tempfile

sql="SELECT * FROM panda.shell_log ORDER BY id ASC"
$mysql -e "$sql"














































