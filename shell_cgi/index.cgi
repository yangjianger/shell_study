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

echo "<form action='post.cgi' method='post'>"
    echo "<p>用户名：</p>"
    echo "<p><input type='text' name='username'></p>"
    echo "<p>密码：</p>"
    echo "<p><input type='text' name='passwd'></p>"
    echo "<p><input type='submit' value='提交'><input type='reset' value='重置'></p>"
echo "</form>"

echo "</body>"
echo "</html>"