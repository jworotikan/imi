<?php
require 'config/webconfig.php';

if (isset($_POST['inputdata'])) {
	$countqstrow = $_POST['countrow'];
		$user_id = $_SESSION['user_id'];
		$testid = $_POST['testid'];
		$pass_id = $_POST['passid'];

		//$sqlval = "INSERT INTO db_result (name, test_id, qst_id, ans_point) VALUES ";
		for( $i=0; $i < $countqstrow; $i++)
		{
			//$answpoint = isset($_POST['radio-'.$i]) ? $_POST['radio-'.$i] : "0";
			$answ = $_POST['radio-'.$i];
			$getanswr = explode("-", $answ);
			$answpoint = $getanswr[0];
			$answid = $getanswr[1];
			$qstnum = $i + 1;
			//$sqlval = "('$username','1','1', '{7[$i]}')";
			//$sqlval .= ",";
			$sql = "INSERT INTO db_result (name, test_id, qst_id, ans_id, ans_point) VALUES ('$user_id', '$testid', '$qstnum', '$answid', '$answpoint')";
			//print_r($sql);die();
			$insertsql = mysqli_query($db_conn, $sql);
		}
		//$sqlval = rtrim($sqlval,",");
		
		//$insertsql = $db_conn->query($sqlval);

		

		if ($insertsql) {
			$next_id = $testid + 1;
			$getnextpage = $db_conn->query("SELECT * from db_testlist where pwd_id = '$pass_id' and qst_id = $next_id");
			if ($getnextpage->num_rows == 1){
				while($nextpage=$getnextpage->fetch_array()):
					$nextqst = $nextpage['qst_id'];
				endwhile;
				echo "<script>window.open('home.php?link=test&qst=$nextqst','_self')</script>";
			} else {
				echo "<script>window.open('home.php?link=result&user=$user_id','_self')</script>";
			}
		}else{
			echo "Perubahan data gagal=<br/>".mysql_error();
		}
}

?>