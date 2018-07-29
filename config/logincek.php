<?php
require 'webconfig.php';

if (isset($_POST['loginimi'])) {
	$username = $db_conn->real_escape_string($_POST['username']);
	$ses_pwd = $db_conn->real_escape_string(md5($_POST['sespwd']));

	

	$getpass = $db_conn->query("SELECT * from db_login where pwd_key = '$ses_pwd'");
	
	if ($getpass->num_rows == 1){
		$passrow = $getpass->fetch_assoc();
		$pass_id = $passrow['id'];

		$insertuser = $db_conn->query("INSERT INTO db_usertest (uname, logsession) values ('$username', '$pass_id')");
		$user_id = $db_conn->insert_id;

		$_SESSION['pass_id'] = $pass_id;
		$_SESSION['user_id'] = $user_id;

		$getqstlist = $db_conn->query("SELECT * from db_testlist where pwd_id = '$pass_id' and qst_pos = 1");
		$qstlist = $getqstlist->fetch_assoc();
		$qst_id = $qstlist['qst_id'];

		header("location:$weburl/home.php?link=test&qst=$qst_id");
	}
}
?>