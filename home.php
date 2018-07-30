<?php 
require 'config/webconfig.php';
if ($_GET['link'] == 'test') {
	$getquestion=$db_conn->query("SELECT * from db_qst where test_id = $test_id");
	$countrow = mysqli_num_rows($getquestion);
} else if ($_GET['link'] == 'result') {
	$getname = $db_conn->query("SELECT * from db_usertest where id = $user_id");
	while($usertest=$getname->fetch_array()):
		$username = $usertest['uname'];
	endwhile;
}

?>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<?php require 'linkhead.php'; ?>
</head>

<body>
	<div class="wrapper">

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left"><?= $testname;?></h1>
			</div>
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<?php 
		if ($_GET['link'] == 'test') {
			require 'page_qst.php';
		} else if ($_GET['link'] == 'result') {
			require 'showresult.php';
		}
		
		require 'footer.php';
		?>

	</div><!--/End Wrapepr-->
	<?php require 'linkfoot.php'; ?>
</body>
</html>
