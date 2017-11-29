#!/bin/bash
#index.cgi
echo "content-type:text/html;charset=utf-8"
echo

#include html code
echo "<html>"
echo "<head>"
echo "<style>"

echo "</style>"
echo "</head>"

echo "<body>"

echo "<pre>"


for user in `cat /etc/passwd | awk -F: '{print $1}'`

do
    echo $user
    sleep 0.2
done
tot=`cat /etc/passwd | awk -F: '{print $1}|wc -l`


tot=`cat /etc/passwd |wc -l`
echo "tot is ${tot}"

echo "</pre>"

echo "</body>"
echo "</html>"