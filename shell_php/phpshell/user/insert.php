<?php 
$username=$_POST['username'];
$password=$_POST['password'];

$usershell="sudo useradd {$username}";
exec($usershell,$arr,$s1);

$passhell="echo {$password}|sudo passwd --stdin {$username}";
exec($passhell,$arr2,$s2);

if($s1==0 && $s2==0){
	echo "<script>location='index.php'</script>";
}

 ?>