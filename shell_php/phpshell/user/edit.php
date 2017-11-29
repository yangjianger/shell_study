<?php
$root="..";
$public=$root.'/public';
$img=$root.'/public/img';
$bscss=$root.'/public/bs/css';
$bsjs=$root.'/public/bs/js';

$user=$_GET['user'];
 ?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户管理</title>
	<link rel="stylesheet" href="<?php echo $bscss ?>/bootstrap.css">
	<script src="<?php echo $bsjs ?>/jquery.min.js"></script>
	<script src="<?php echo $bsjs ?>/bootstrap.js"></script>
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
		
		<!-- 查看用户 -->
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>修改密码:</h3>
			</div>
			<div class="panel-body">
				<form action="update.php" method='post'>
					<div class="form-group">
						<label>用户名:</label>
						<input type="text" class='form-control' name='username' value='<?php echo $user ?>' readonly>
					</div>
					<div class="form-group">
						<label>密码:</label>
						<input type="text" class='form-control' name='password'>
					</div>
					<div class="form-group">
						<input type="submit" class='btn btn-primary' value='修改'>
						<input type="reset" class='btn btn-danger'  onclick="return confirm('您确认重置吗?')">
					</div>
				</form>
			</div>	
		</div>	
	</div>	
</body>
</html>