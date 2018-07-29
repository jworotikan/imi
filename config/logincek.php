<?php
require 'conndb.php';
if (isset($_POST['loginimi'])) {
	$username = $db_conn->real_escape_string($_POST['username']);
	$ses_pwd = $db_conn->real_escape_string(md5($_POST['sespwd']));
	$getpass = $db_conn->query("SELECT * from db_login where pwd_key = '$ses_pwd'");
	
	if ($getpass->num_rows == 1){
		$passrow = $getpass->fetch_assoc();
		$pass_id = $row['id'];

		$getqstlist = $db_conn->query("SELECT * from db_qstlist where pwd_id = '$pass_id' and qst_pos = 1");
		$qstlist = $getqstlist->fetch_assoc();
		$qst_id = $qstlist['qst_id'];

		header("location:page_qst?qst=$qst_id");
	}
	
}
?>