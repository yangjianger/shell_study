#!/bin/bash
#shell_if

#case $1 in
#    start)
#        echo "start ..."
#    ;;
#    stop)
#        echo "stop ..."
#    ;;
#    *)
#        echo "other..."
#    ;;
#esac
#
#if [ $? == 0 ]; then
#    echo "成功"
#else
#    echo "失败"
#fi

if [ `who | wc -l` -gt 1 ]; then
    echo "被入侵了"
fi