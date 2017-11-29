<?php
/**
 * Created by PhpStorm.
 * User: yangjiang
 * Date: 2017/11/29
 * Time: 上午10:41
 */

//ssh-keygen -t rsa 生成秘钥

// 复制公钥到服务器
//ssh-copy-id id_rsa.pub 192.168.1.1

//服务器上传文件到另一台服务器
//rsync -e ssh -av --progress -z --compress-level=9 index.php 123.206.67.116:/mnt/

//服务器下载文件到服务器
//rsync -e ssh -av --progress -z --compress-level=9 123.206.67.116:/mnt/index.php ./

