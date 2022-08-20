<?php
require_once './setuser.php';
$uid = file_get_contents('php://input');
echo $user[$uid];
#var_dump($response);
?>
