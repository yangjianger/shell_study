<?php 
$homeshell="ls /home";
exec($homeshell,$arr);

foreach($arr as $row){
	$usershell="cat /etc/passwd |grep {$row}|awk -F: '{print $1,$3,$4,$6,$7}'";
	exec($usershell,$arr2);
}

foreach($arr2 as $row2){
	$rows[]=explode(' ',$row2);
}

$root = "..";
$public=$root.'/public';
$img=$root.'/public/img';
$bscss=$root.'/public/bs/css';
$bsjs=$root.'/public/bs/js';
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
                    <li class="active"><a href="/phpshell">首页</span></a></li>
                    <li><a href="/phpshell/user">用户管理</a></li>
                    <li><a href="/phpshell/system">系统管理</a></li>
                </ul>
		    </div>
		  </div>
		</nav>
		
		<!-- 查看用户 -->
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3>查看用户:</h3>
			</div>
			<table class='table table-hover table-bordered'>
				<tr>
					<th>用户名</th>
					<th>UID</th>
					<th>GID</th>
					<th>家目录</th>
					<th>登录Shell</th>
					<th>重设密码</th>
					<th>删除用户</th>
				</tr>

				<?php 
				foreach($rows as $user){
					echo '<tr>';
					echo "<td>{$user[0]}</td>";
					echo "<td>{$user[1]}</td>";
					echo "<td>{$user[2]}</td>";
					echo "<td>{$user[3]}</td>";
					echo "<td>{$user[4]}</td>";
					echo "<td><a href='edit.php?user={$user[0]}' class='btn btn-warning' onclick=\"return confirm('您确认删除吗?')\">重设密码</a></td>";
					echo "<td><a href='delete.php?user={$user[0]}' class='btn btn-danger' onclick=\"return confirm('您确认删除吗?')\">删除用户</a></td>";
					echo '</tr>';
				}
				 ?>
			</table>
			<div class="panel-footer">
				<a href="add.php" class='btn btn-primary'>添加用户</a>
			</div>
		</div>	
	</div>	
</body>
</html>