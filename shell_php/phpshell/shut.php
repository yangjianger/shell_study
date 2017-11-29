<?php 
$shell='sudo init 0';
exec($shell);

$public='/public';
$img='/public/img';
$bscss='/public/bs/css';
$bsjs='/public/bs/js';
 ?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<link rel="stylesheet" href="<?php echo $bscss ?>/bootstrap.min.css">
	<script src="<?php echo $bsjs ?>/jquery.min.js"></script>
	<script src="<?php echo $bsjs ?>/bootstrap.min.js"></script>
	<style>
		.navbar-brand{
			padding:5px;
		}

		body{
			padding-top:65px;
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
		        <li class="active"><a href="/">首页</span></a></li>
		        <li><a href="/user">用户管理</a></li>
		        <li><a href="/system">系统管理</a></li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
		<!-- 下面图文 -->
		<div class="jumbotron">
			<h3>系统正在关闭中，请稍候...</h3>
		</div>
	</div>	
</body>
</html>