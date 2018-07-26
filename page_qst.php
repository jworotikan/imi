<?php 
require 'config/conndb.php';
$test_id = 1;
$getquestion=$db_conn->query("SELECT * from db_qst where test_id = $test_id");
$countrow = mysqli_num_rows($getquestion);
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
				<h1 class="pull-left">Accordion &amp; Tabs</h1>
			</div>
		</div><!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">
			<div class="row">
				<form action="inputdata.php" method="post" id="sky-form1" class="log-reg-block sky-form">
				<!-- Begin Content -->
				<div class="col-md-12">
					<!-- Accordion v1 -->
					<div class="panel-group acc-v1" id="accordion-1">
						<input type="hidden" name="countrow" value="<?= $countrow;?>">
						<input type="hidden" name="testid" value="<?= $test_id;?>">
						<?php 
						$i=0;
						while($qsthow=$getquestion->fetch_array()):
						if ($qsthow['page'] == 1) {
							$collapsein = 'in';
						} else {
							$collapsein = '';
						}
						$answtype = $qsthow['ans_type'];
						$qstnumb = $qsthow['page'];
						$qstid = $qsthow['id'];
						?>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-<?= $qsthow['id'] ?>">
										<?=$qstnumb. '|' . $qsthow['qst']; ?>
									</a>
								</h4>
							</div>
							<div id="collapse-<?= $qsthow['id'] ?>" class="panel-collapse collapse <?= $collapsein; ?>">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12">
											<div class="funkyradio">
												<!--
										        <div class="funkyradio-default">
										            <input type="radio" name="radio" id="radio1" />
										            <label for="radio1">First Option default</label>
										        </div>
										        <div class="funkyradio-primary">
										            <input type="radio" name="radio" id="radio2" checked/>
										            <label for="radio2">Second Option primary</label>
										        </div>
										    -->
										    <?php
										    $getansw=$db_conn->query("SELECT
												a.id as answ_id,
												a.answ as answ,
												b.ans_point as answ_point
												from db_answ a
												inner join db_point b
												ON a.id = b.answ_id
												where a.answ_type = $answtype
												and b.test_id = $test_id
												and b.qst_id = $qstid
												");
										    while($answr=$getansw->fetch_array()):
										    	$radio_id = $answr['answ_id'];
										    	$answ_txt = $answr['answ'];
										    	$answpoint = $answr['answ_point'];
										    ?>
										        <div class="funkyradio-success">
										            <input type="radio" name="radio-<?= $i;?>" id="radio<?= $qstnumb.'-'.$radio_id; ?>" value="<?= $answpoint.'-'.$radio_id;?>" />
										            <label for="radio<?= $qstnumb.'-'.$radio_id; ?>"><?= $answ_txt;?></label>
										        </div>
										    <?php endwhile;?>
										        <!--
										        <div class="funkyradio-danger">
										            <input type="radio" name="radio" id="radio4" />
										            <label for="radio4">Fourth Option danger</label>
										        </div>
										        <div class="funkyradio-warning">
										            <input type="radio" name="radio" id="radio5" />
										            <label for="radio5">Fifth Option warning</label>
										        </div>
										        <div class="funkyradio-info">
										            <input type="radio" name="radio" id="radio6" />
										            <label for="radio6">Sixth Option info</label>
										        </div>
										        -->
										    </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					<?php $i++; endwhile; ?>
					</div>
					<div class="row">
						<div class="col-md-12">
							<button class="btn-u pull-right" type="submit" name="inputdata">Kirim</button>
						</div>
					</div>
					<!-- End Accordion v1 -->
				</div>
				<!-- End Content -->
				</form>
			</div>
		</div><!--/container-->
		<!--=== End Content Part ===-->

		<?php require 'footer.php';?>

	</div><!--/End Wrapepr-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			StyleSwitcher.initStyleSwitcher();
		});
	</script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/respond.js"></script>
	<script src="assets/plugins/html5shiv.js"></script>
	<script src="assets/plugins/placeholder-IE-fixes.js"></script>
	<![endif]-->
</body>
</html>
