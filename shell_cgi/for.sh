#!/bin/bash
#for.sh

for i in `cat /etc/passwd | awk -F: '{print $1}'|sed -e 's/%\(\)/\\\x/g'`
do
    echo $i
    sleep 0.2
done