<?php

$sbuid = file_get_contents('php://input');

if( strpos(file_get_contents("./setuser.php"),$sbuid) === false) {
	echo '没有uid';
	$adduser='$user[\'usernameid\'] = "0";';
	$adduser = str_replace('usernameid',$sbuid,$adduser);
	file_put_contents("./setuser.php", $adduser."\n", FILE_APPEND | LOCK_EX);

	file_put_contents("./sbuid.info", $adduser.' ++++++ '.date("Y-m-d H:i:s")."\n", FILE_APPEND | LOCK_EX);

}else{

file_put_contents("./sbuid.info", $sbuid.' '.date("Y-m-d H:i:s")."\n", FILE_APPEND | LOCK_EX);
}
?>
