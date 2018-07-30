<?php
session_start();
require 'conndb.php';

if (isset($_SESSION['pass_id'])) {
	$pass_id = $_SESSION['pass_id'];
}

$getwebconfig = $db_conn->query("SELECT * from dbmwebconfig");
while($webconfig=$getwebconfig->fetch_array()):
	$weburl = $webconfig['weburl'];
	$webname = $webconfig['webname'];
endwhile;

if ($_GET['link'] == 'result') {
	$testname = 'Hasil Personal Assessment';
	$user_id = $_GET['user'];
}

if ($_GET['link'] == 'test') {
	if (isset($_GET['qst'])) {
		$test_id = $_GET['qst'];
		$getqstconfig = $db_conn->query("SELECT * from db_testname where id = $test_id");
		while($qstconfig=$getqstconfig->fetch_array()):
		$testname = $qstconfig['testname'];
	endwhile;
	}
}

?>