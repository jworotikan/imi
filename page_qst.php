
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
				<input type="hidden" name="passid" value="<?= $pass_id;?>">
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