<?php
if (isset($_SESSION['pwd_code'])) {
	header("Location:page_qst.php");
} else {
	header("Location:page_login.php");
}
	
?>