<div class="container content">
	<h2><?= $username; ?></h2>
	
	<?php
	$getresult = $db_conn->query("SELECT distinct 
		a.test_id as testid,
		b.testname as testname,
		(SELECT sum(ans_point) from db_result where test_id = testid) as anspoint
		from db_result a
		inner join db_testname b
		on a.test_id = b.id
		where a.name = 3");
	while($result=$getresult->fetch_array()):
		$answ_point = $result['anspoint'];
		$getinfo = $db_conn->query("SELECT * from db_resultinfo where point_start <= $answ_point and point_end >= $answ_point");
		while($resultinfo=$getinfo->fetch_array()):
			$result_info = $resultinfo['result_info'];
		endwhile;
	?>

	<div class="col-md-6">
		<div class="tag-box tag-box-v2 box-shadow shadow-effect-1">
			<h2><?=$result['testname']?></h2>
			<hr style="margin: 5px;">
			<span><strong>Nilai:</strong><?= $answ_point; ?></span>
			<hr style="margin: 5px;">
			<p><?=$result_info?></p>
		</div>
	</div>
<?php endwhile; ?>
</div>