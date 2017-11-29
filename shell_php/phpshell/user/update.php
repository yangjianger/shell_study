<?php 
$username=$_POST['username'];
$password=$_POST['password'];

$shell="echo {$password}|sudo passwd --stdin {$username}";
exec($shell,$arr,$s);

if($s==0){
	echo "<script>location='index.php'</script>";
}
 ?>