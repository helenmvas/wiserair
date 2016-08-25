<?php
$orderby = array(
				"trigger" => "trigger",
				"valid" => "valid_status",
				"boxname" => "box_name", 
				"date" => "create_datetime"
			) ;
if( !empty($_GET["triggerbox"]) ){
	$trigger = wptggBackEnd::get_trigger(array("ID" => $_GET["triggerbox"])) ;
	$data["trigger_box_id"] = $_GET["triggerbox"] ;
}
if( !empty($_GET["orderby"]) ){
	$data["orderby"] = $orderby[$_GET["orderby"]] ;
	$data["order"] = !empty($_GET["order"]) ? $_GET["order"] : '' ;
}

$pagelbl = (isset($trigger->box_name)) ? $trigger->box_name : "All" ;

$histories = wptggBackEnd::get_trigger_history($data) ;

//echo "<pre>" ;
//print_r($histories) ;
//echo "</pre>" ;
//----------------
$min_date = wptggBackEnd::get_hitory_min_date($data) ;

$count_posts = count($histories);
$pagenum=(!empty($_GET["paged"])) ? $_GET["paged"] : 1;
$per_page=(isset($per_page)) ? $per_page : 100;
<!-- MODAL DIALOG -->
<div class="wrap plugin-wrap">
	<div id="icon-edit" class="icon32 icon32-posts-post"><br></div>
	<h2><?php echo __($pagelbl . " Trigger Box Stats") ;?></h2>
	<div style="margin-top:15px;">
		<div class="tablenav" style="margin:0px;">
			<div style="font-size:17px;"><span class="trigger-history-info-bar"><?php echo $count_posts?> Triggers have been submitted since <?php echo $min_date;?></span></div>
		</div>		
		<!-- FILTER BAR -->
		<div class="filter-bar-container">
			<div class="tablenav top">
				<div class="_alignleft actions action-container">
					<div class="actions-item">
						<span class="date-range-title"><?php echo __("Date Range:"); ?></span>
						<input type="date" id="trigger_date_range_start" name="trigger_date_range_start" value="<?php echo $date_range_start; ?>"> - <input type="date" id="trigger_date_range_end" name="trigger_date_range_end" value="<?php echo $date_range_end; ?>">
					</div>

					<div class="actions-item">
						<?php $tggs = wptggBackEnd::get_trigger(); ?>
						<select id="ttigger_box_names" style="float: none;">
							<option selected="selected" value="">Show All Trigger Boxes</option>
							<?php
							if($tggs) {
								foreach($tggs as $tgg) {
									if( $_GET["triggerbox"] == $tgg->ID ) {
										echo "<option value='{$tgg->ID}' selected>{$tgg->box_name}</option>";
									} else {
										echo "<option value='{$tgg->ID}'>{$tgg->box_name}</option>";
									}
								}
							}
							?>
						</select>
					</div>

					<div class="actions-item">
						<span class="pagination-title"><?php echo __("Entries Per Page:"); ?></span>
						<select id="trigger_page_entries" style="float: none;">
							<?php
							foreach($trigger_page_entries_options as $trigger_page_entries_option_id => $trigger_page_entries_option_value) {
								echo '<option value="'.$trigger_page_entries_option_id.'" '.($per_page == $trigger_page_entries_option_id ? "selected" : "").'>'.$trigger_page_entries_option_value.'</option>';
							}
							?>
						</select>
					</div>

					<div class="actions-item">
						<a href="admin.php?page=trigger-history" id="trigger_filter_link"><input type="button" name="" id="post-query-submit" class="button-secondary filter-trigger-history-button" value="Filter"></a>
					</div>
				</div>
			</div>
		</div>
		<!-- FILTER BAR -->


		<!-- ACTIONS BAR -->
		<div class="action-bar-container">
		<table class="wp-list-table widefat fixed posts trigger-history-table" cellspacing="0" border=0>
			<thead>
				<?php wptggBackEnd::get_hostory_table_header();?>
			</thead>
			<tfoot>
				<?php wptggBackEnd::get_hostory_table_header();?>
			</tfoot>
			<tbody>

				<?php 

				if( $histories ){
					$count = 0;
					$start = ($pagenum - 1) * $per_page;
					$end = $start + $per_page;
					foreach ($histories as $row) {
						if ( $count >= $end )
							break;
						if ( $count >= $start )
						{
							echo "<th scope='row' ></th>";
							echo "<td>{$row->trigger}</td>" ;
							echo "<td>{$row->valid_status}</td>" ;
							echo "<td>{$row->box_name}</td>" ;
							echo "<td>{$row->create_datetime}</td>" ;
							echo "</tr>" ;
						}
						$count++ ;
					}
				}else{
					$msg = "<lavel style='height:30px;'>No trigger history</label>" ;	
					echo "<tr>" ;
					echo "<td colspan='5' style='padding:20px;'>$msg</td>" ;
					echo "</tr>" ;

				}
				?>
			</tbody>
		</table>
		<div class="tablenav">
			<div class="tablenav-pages">
				<?php wptggBackEnd::get_page_link($count_posts,$pagenum, $per_page);?>
			</div>
		</div>
	</div>
</div>
