<?php
/**
 * Template Name: Development - Up Close
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package _tk
 */

get_header(); ?>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="<? echo get_template_directory_uri() ?>/includes/js/upclose_highchart.js"></script>

<section class="text-center light-grey">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center" id="touchscreen">
				<h2>Touchscreen</h2>
				<p>TBC</p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6" id="smart-sense">
				<h2>Smart Sense</h2>
				<p>TBC</p>
			</div>
			</div>
		</div>
	</div>
</section>

<section class="text-center blue">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6" id="schedules" style="background-image: url('<?php the_field('schedules_background_image'); ?>')">
				<h2><?php the_field('schedules_title'); ?></h2>
				<p class="subtitle"><?php the_field('schedules_text'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6" id="ready-mode" style="background-image: url('<?php the_field('ready_mode_background_image'); ?>')">
				<h2><?php the_field('ready_mode_title'); ?></h2>
				<p class="subtitle"><?php the_field('ready_mode_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center light-grey">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center" id="comfort-boost" style="background-image: url('<?php the_field('comfort_boost_background_image'); ?>')">>
				<img src="<?php the_field('comfort_boost_image'); ?>"/>
				<h2><?php the_field('comfort_boost_title'); ?></h2>
				<p class="subtitle"><?php the_field('comfort_boost_text'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6" id="my-wiser" style="background-image: url('<?php the_field('my_wiser_background_image'); ?>')">
				<h2><?php the_field('my_wiser_title'); ?></h2>
				<p class="subtitle"><?php the_field('my_wiser_text'); ?></p>
			</div>
			</div>
		</div>
	</div>
</section>

<section class="text-center dark-grey" id="bells">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<h2>Wiser Pulse</h2>
				<p>TBC</p>
			</div>
		</div>
	</div>
</section>

<section class="text-center">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center" id="energy-insight" style="background-image: url('<?php the_field('energy_insights_background_image'); ?>')">
				<h2><?php the_field('energy_insights_title'); ?></h2>
				<p class="subtitle"><?php the_field('energy_insights_text'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center" id="auto-updates" style="background-image: url('<?php the_field('auto_updates_background_image'); ?>')">
				<h2><?php the_field('auto_updates_title'); ?></h2>
				<p class="subtitle"><?php the_field('auto_updates_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6" id="eco-iq">
				<img src="<?php the_field('eco_iq_image'); ?>"/>
				<h2><?php the_field('eco_iq_title'); ?></h2>
				<p class="subtitle"><?php the_field('eco_iq_text'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6" id="wiser-forecast">
				<img src="<?php the_field('wiser_forecast_image'); ?>"/>
				<h2><?php the_field('wiser_forecast_title'); ?></h2>
				<p class="subtitle"><?php the_field('wiser_forecast_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-7" id="homepage-slideshow">
	<div class="container-fluid">
		<div class="row">
			<div class="text-center">
				<?php echo do_shortcode('[metaslider id=4110]'); ?>
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>
