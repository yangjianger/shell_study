#!/bin/bash
#test.sh

# shell 编写字符菜单管理
# shell 函数
#    function menu(){
#        echo 'this is func'
#    }
#    menu

# cat 命令

#herdoc使用方法
#name='dov'
#    cat << eof
##        aaaaaaaaa
#        aaaa${name}aaaaa
#        aaaa`echo -e "\033[31;40m aaaa \033[0m"`aaaaa
#        aaaaaaaaa
#    eof

# shell  包含文件
#. menu.sh

# shell  死循环
#while true; do
#    echo 1
#    sleep 1
#done


#echo '#######################################################'
#echo -e '                      \033[31;42m my menu \033[0m'
#echo '#######################################################'

# 包含文件
 . menu.sh
 clear
menu
while true; do

     read -p 'please input a num: ' num

     case $num in
        1)
            # 添加用户
            read -p 'please input username: ' username
            useradd $username &>/dev/null
            if [ $? -eq 0 ]; then
                str="user $username add success"
                echo -e "\033[30;47m $str \033[m"
            else
                str="user $username add fail"
                echo -e "\033[31;47m $str \033[m"
            fi
        ;;
        2)
            # 用户添加密码
            read -p 'please input username: ' username
            read -p 'set username passwd: ' pass

            # 把密码输出给一个用户
            echo $pass | passwd --stdin $username &>/dev/null

            if [ $? -eq 0 ]; then
                str="$username passwd set success"
                echo -e "\033[30;47m $str \033[m"
            else
                str="$username passwd set fail"
                echo -e "\033[31;47m $str \033[m"
            fi
        ;;
        3)
            # 删除用户
           read -p 'please input username: ' username

           userdel -r $username&>/dev/null

           if [ $? -eq 0 ]; then
                str="$username deleta success"
                echo -e "\033[30;47m $str \033[m"
           else
                str="$username deleta fail"
                echo -e "\033[31;47m $str \033[m"
           fi

        ;;
        4)
            # 打印磁盘使用
           str=`df -Th`
           echo -e "\033[30;47m $str \033[0m"
        ;;
        5)
            # 打印内存使用
            str=`free -h`
            echo -e "\033[30;47m $str \033[0m"
        ;;
        6)
            # 退出
            echo -e "\033[30;47m quit successfully! \033[0m"
            break
        ;;

       *)
            # 返回菜单
           clear
           menu
        ;;
     esac
done































