<?php
echo "Today is " . date("Y/m/d") . "<br>";
echo "Today is " . date("Y.m.d") . "<br>";
echo "Today is " . date("Y-m-d") . "<br>";
echo "Today is " . date("l");
?>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<?php require 'linkhead.php';?>
</head>

<body>
	<div class="wrapper">

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Assessment LDP Level 2 I-Management Indonesia</h1>
			</div><!--/container-->
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row">
				<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
					<form action="config/logincek.php" method="post" id="sky-form1" class="log-reg-block sky-form reg-page">
						<div class="reg-header">
							<h2>Masukan nama dan Kata Kunci</h2>
						</div>

						<div class="input-group margin-bottom-20">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" placeholder="Nama Anda" class="form-control" name="username">
						</div>
						<div class="input-group margin-bottom-20">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input type="password" placeholder="Kata Kunci" class="form-control" name="sespwd">
						</div>

						<div class="row">
							<div class="col-md-12">
								<button class="btn-u pull-left" type="submit" name="loginimi">Masuk</button>
							</div>
						</div>
					</form>
				</div>
			</div><!--/row-->
		</div><!--/container-->
		<!--=== End Content Part ===-->

		<?php require 'footer.php';?>
	</div><!--/wrapper-->

	<?php require 'linkfoot.php';?>
</body>
</html>
