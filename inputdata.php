<?php
require 'config/conndb.php';
if (isset($_POST['inputdata'])) {
	$countqstrow = $_POST['countrow'];
		$username = 'Jonathan';
		$testid = $_POST['testid'];

		//$sqlval = "INSERT INTO db_result (name, test_id, qst_id, ans_point) VALUES ";
		for( $i=0; $i < $countqstrow; $i++)
		{
			//$answpoint = isset($_POST['radio-'.$i]) ? $_POST['radio-'.$i] : "0";
			$answ = $_POST['radio-'.$i];
			$getanswr = explode("-", $answ);
			$answid = $getanswr[0];
			$answpoint = $getanswr[1];
			$qstnum = $i + 1;
			//$sqlval = "('$username','1','1', '{7[$i]}')";
			//$sqlval .= ",";
			$sql = "INSERT INTO db_result (name, test_id, qst_id, ans_id, ans_point) VALUES ('$username', '$testid', '$qstnum', '$answid', '$answpoint')";
			//print_r($sql);die();
			$insertsql = mysqli_query($db_conn, $sql);
		}
		//$sqlval = rtrim($sqlval,",");
		
		//$insertsql = $db_conn->query($sqlval);

		

		if ($insertsql) {
		echo "<script>alert('Data successfully saved!')</script>";
		}else{
			echo "Perubahan data gagal=<br/>".mysql_error();
		}
}

?>