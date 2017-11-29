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
echo "<p>命令行提交数据：</p>"
echo "<form action='code.cgi' method='post'>"
    echo "<p>shell命令：</p>"
    echo "<p><input type='text' name='code'></p>"
    echo "<p><input type='submit' value='提交'><input type='reset' value='重置'></p>"
echo "</form>"

echo "</body>"
echo "</html>"