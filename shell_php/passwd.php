<?php
/**
 * Created by PhpStorm.
 * User: yangjiang
 * Date: 2017/11/29
 * Time: 上午10:41
 */
/*
	php操作shell
	1.system()
	2.exec()
*/
//执行root提供权限
//visudo 加入 nginx ALL=NOPASSWD:/usr/sbin/useradd
// 有时候需要注释 #Defaults requiretty
echo "<pre>";
$shell  = "sudo useradd user2";
//$shell  = "sudo userdel -r user2";
//不输出直接设置密码 设置密码
$shell="echo '123' |sudo passwd --stdin user2";

$status = exec($shell, $arr, $s);
print_r($arr);
echo $s;
echo "</pre>";