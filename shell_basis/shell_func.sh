#!/bin/bash

#函数
function add(){
#    $1 接收第一个参数  $2接收第二个参数
    num=$1
    tot=0
    for ((i=0; i<=$num; i++)); do
        tot=$(($tot+$1))
    done
    echo $(($tot + $2))
}
#传参
add 10 20