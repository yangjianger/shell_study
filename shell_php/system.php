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

echo "<pre>";
$shell  = "ls /";
$shell  = "df -Th";
$shell  = "ifconfig";
$status = system($shell, $s);
echo $s;
echo "</pre>";