#!/bin/bash
#test.sh

#正则表达式
#检索文件中出现 /bin的行
grep "/bin" test1.sh

#检索文件中出现 /bin有多少行
#grep -c "/bin" test1.sh

#检索文件中出现 /bin有多少行,并显示
#grep -n "/bin" test1.sh

#检索文件中出现 /bin 忽略大小写
#grep -i "/bin" test1.sh

#检索文件中不出现 /bin -v 取反
#grep -v "/bin" test1.sh
#grep -vni "/bin" test1.sh

# 以bin开头的行 -E代表用正则表达式
grep -E "^bin" test1.sh
# 以bin结尾的行 -E代表用正则表达式
grep -E "bin$" test1.sh

#grep -E ".*" test1.sh

grep -E ".+(linux).+" test1.sh

#包含一个字符
grep -E "^.$" test1.sh
grep -E "^\.$" test1.sh

#grep "^linux" test1.sh

#查看用户访问了多少次文件
grep -E '2014:22:5[0-9]' file | wc -l

grep -E "^[^210]" test1.sh

#拿出60 -90
grep -E "([6-8][0-9] | 90)" test
grep -E "([6-8][0-9] | 90)" test

cat /etc/passwd | grep -E "login$"



















