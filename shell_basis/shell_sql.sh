#!/bin/bash
#test.sh

# -e 后直接跟sql语句

# mysql -uroot -pyang_jiang# -e "show databases"


# mysql="mysql -uroot -pyang_jiang11#"

#sql="show databases"
#查看表
#sql="show tables from panda"
#查看表结构
#sql="desc panda.shell_sql"

#sql="INSERT INTO panda.shell_sql(username, password) VALUE('yangjiang1','1232')"
#sql="SELECT * FROM  panda.shell_sql"

#$mysql -e "$sql"

mysql="mysql -uroot -pyang_jiang#"
case $1 in
    select)
        sql="SELECT * FROM panda.shell_sql"
    ;;
    delete)
        sql="DELETE FROM panda.shell_sql WHERE id=$2"
    ;;
    insert)
        sql="INSERT INTO panda.shell_sql(username, password) VALUE('$2','$3')"
    ;;
    update)
        sql="UPDATE panda.shell_sql SET username=$2 WHERE id=$3"
    ;;
    *)
        sql="SELECT * FROM panda.shell_sql ORDER BY id DESC"
    ;;
esac
$mysql -e "$sql"

























































