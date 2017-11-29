#!/bin/bash
#test.sh

#awk
#-F 分割  print 输出
#cat /etc/passwd | awk -F: '{print $1"=>"$2"=>"$3}'
#cat /etc/passwd | head -5 | awk -F: '{print $1"=>"$2"=>"$3}'

#以冒号进行分割
#for i in `cat /etc/passwd | awk -F: '{print $1"=>"$2"=>"$3}'`; do
#    echo $i
#done
#
## NR 行数  $0代表整行
#df | awk '{if(NR==3){print}}'
#
## int 将参数转换成整数
#df | awk '{if(NR==3){print int($4)}}'
#
##总共多少行
#df | awk 'END{print NR}'
#
##总共多少列
#df | awk 'END{print NF}'
#
##文件中第一列 匹配192.168.1.1的行数 输出第一列
#cat file | awk '$1~/192.168.1.1/{print $1}'
#
##文件中第一列 不匹配192.168.1.1的行数 输出第一列
#cat file | awk '$1!~/192.168.1.1/{print $1}'

#sed 行定位的使用

# 输出包含bash的数据
#cat file | sed -n '/bash/'p
#
## 输出包含bash到最后的数据
#cat file | sed -n '/bash/,$'p
#
#df | sed -n '3'p| awk '{print $2}'

#uniq -c file 打印紧挨着的重复
#uniq -d file 打印重复行
#uniq file 去重

#wc -l file 打印行数


#sort 排序
#cat file | sort | uniq -c
#
##倒叙
#cat file | sort -r | uniq -c
#
##根据第二列进行排序  sort -t: -k2 -r  //以冒号分割
#cat file | sort -k2 -r

#split 行分割 按5行分割文件  sptab sptac
#split -5 file spt

#/var/log/nginx/log/host.access.log
#cat /var/log/nginx/log/host.access.log | sort -k1 | uniq -c
#cat /var/log/nginx/log/host.access.log | awk '{print $1}' | sort | uniq -c //1秒内 同一个ip访问次数



























