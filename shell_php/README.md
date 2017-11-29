### 通过shell 和php结合完成 用户添加，删除，修改密码
1.php执行shell命令，主要中system(),exec()函数。
   - system($shell, $s) 直接执行shell命令并输出，$s返回0执行成功，其他返回失败
   - exec($shell, $arr, $s) 执行shell将输出的数据放到$arr中。如果循环执行，$arr数据是叠加的。$s返回0执行成功，其他返回失败
