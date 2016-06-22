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

<section class="text-center" id="comfort-boost">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 text-center">
				<div><img src="<?php the_field('comfort_boost_image'); ?>"/></div>
			</div>
			<div class="col-lg-7 text-center">
				<h2><?php the_field('comfort_boost_title'); ?></h2>
				<p class="subtitle"><?php the_field('comfort_boost_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="eco-iq">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div><img src="<?php the_field('eco_iq_image'); ?>"/></div>
			</div>
			<div class="col-lg-12 text-center">
				<h2><?php the_field('eco_iq_title'); ?></h2>
				<p class="subtitle"><?php the_field('eco_iq_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="wiser-forecast">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div><img src="<?php the_field('wiser_forecast_image'); ?>"/></div>
			</div>
			<div class="col-lg-12 text-center">
				<h2><?php the_field('wiser_forecast_title'); ?></h2>
				<p class="subtitle"><?php the_field('wiser_forecast_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="bells">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Wiser Pulse / Touchscreen / Smart Sense</h2>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="9"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="text-center up-close-three">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-3 text-center" id="my-wiser" style="background-image: url('<?php the_field('my_wiser_background_image'); ?>')">
				<h2><?php the_field('my_wiser_title'); ?></h2>
				<p class="subtitle"><?php the_field('my_wiser_text'); ?></p>
			</div>
			<div class="col-lg-3 text-center" id="schedules" style="background-image: url('<?php the_field('schedules_background_image'); ?>')">
				<h2><?php the_field('schedules_title'); ?></h2>
				<p class="subtitle"><?php the_field('schedules_text'); ?></p>
			</div>
			<div class="col-lg-3 text-center" id="ready-mode" style="background-image: url('<?php the_field('ready_mode_background_image'); ?>')">
				<h2><?php the_field('ready_mode_title'); ?></h2>
				<p class="subtitle"><?php the_field('ready_mode_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center up-close-three">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-6 text-center" id="energy-insight" style="background-image: url('<?php the_field('energy_insights_background_image'); ?>')">
				<h2><?php the_field('energy_insights_title'); ?></h2>
				<p class="subtitle"><?php the_field('energy_insights_text'); ?></p>
			</div>
			<div class="col-lg-6 text-center" id="auto-updates" style="background-image: url('<?php the_field('auto_updates_background_image'); ?>')">
				<h2><?php the_field('auto_updates_title'); ?></h2>
				<p class="subtitle"><?php the_field('auto_updates_text'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-7" id="homepage-slideshow">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[metaslider id=4110]'); ?>
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>
