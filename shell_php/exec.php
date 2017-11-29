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
$shell  = "ifconfig";
$shell  = "df -Th";

$status = exec($shell, $arr, $s);
print_r($arr);
echo "</pre>";