<?php
$root = "..";
$public=$root.'/public';
$img=$root.'/public/img';
$bscss=$root.'/public/bs/css';
$bsjs=$root.'/public/bs/js';

$uptimeshell="uptime";
$diskshell="df -Th";
$memshell="free -m";
 ?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>系统管理</title>
	<link rel="stylesheet" href="<?php echo $bscss ?>/bootstrap.css">
	<script src="<?php echo $bsjs ?>/jquery.min.js"></script>
	<script src="<?php echo $bsjs ?>/bootstrap.js"></script>
	<style>
		.navbar-brand{
			padding:5px;
		}

		body{
			padding-top:35px;
		}
	</style>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="/">
		      	<img src="<?php echo $img ?>/logo.png" height="40px">
		      </a>
		    </div>

		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/phpshell">首页</span></a></li>
                    <li><a href="/phpshell/user">用户管理</a></li>
                    <li><a href="/phpshell/system">系统管理</a></li>
                </ul>
		    </div>
		  </div>
		</nav>
		
		<!-- 系统管理 -->
		<h3 class="page-header">
			系统平均负载:	
		</h3>
<pre>
	<?php system($uptimeshell) ?>
</pre>

		<h3 class="page-header">
			空间使用率:	
		</h3>
<pre>
	<?php system($diskshell) ?>
</pre>

		<h3 class="page-header">
			内存使用率:	
		</h3>
<pre>
	<?php system($memshell) ?>
</pre>
	</div>	
</body>
</html>