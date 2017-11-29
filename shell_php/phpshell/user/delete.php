<?php 
$user=$_GET['user'];

$shell="sudo userdel -r {$user}";
exec($shell,$arr,$s);

if($s==0){
	echo "<script>location='index.php'</script>";
}
 ?>