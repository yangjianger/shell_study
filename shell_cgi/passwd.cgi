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

cat /etc/passwd | awk -F: '{print $1}'

echo "</pre>"

echo "</body>"
echo "</html>"