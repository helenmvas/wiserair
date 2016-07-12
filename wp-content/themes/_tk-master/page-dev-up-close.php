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

<?php global $post; ?>
<?php
$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );
?>
<div class="homepage-featured-image" style="background-image: url(<?php echo $src[0]; ?> )">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-5 col-sm-6 col-xs-10">
				<h2><?php the_field('up_close_featured_image_title'); ?></h2>
				<p class="subtitle"><?php the_field('up_close_featured_image_text'); ?></p>
				<p class="btn-space"><?php the_field('up_close_featured_image_button'); ?></p>
			</div>
		</div>
	</div>
</div>

<section class="text-center" id="touchscreen-smartsense">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<p><?php echo do_shortcode('[wonderplugin_tabs id="9"]'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center light-grey" id="wiser-pulse">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="<?php the_field('wiser_pulse_image'); ?>"/>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<h2><?php the_field('wiser_pulse_title'); ?></h2>
				<p class="subtitle"><?php the_field('wiser_pulse_text'); ?></p>
				<p class="btn-space"><?php the_field('wiser_pulse_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center blue" id="intuitive-app">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<h2><?php the_field('intuitive_app_title'); ?></h2>
				<p class="subtitle"><?php the_field('intuitive_app_text'); ?></p>
				<p class="btn-space"><?php the_field('intuitive_app_button'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="<?php the_field('intuitive_app_image'); ?>" width="350"/>
			</div>
		</div>
	</div>
</section>

<section class="text-center">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12" id="schedules" style="background-image: url('<?php the_field('schedules_background_image'); ?>')">
				<p><?php echo do_shortcode('[wonderplugin_tabs id="10"]'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center light-grey">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12" id="updates">
				<p><?php echo do_shortcode('[wonderplugin_tabs id="11"]'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center blue" id="comfort-features">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="<?php the_field('comfort_features_image'); ?>"/>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<h2><?php the_field('comfort_features_title'); ?></h2>
				<p class="subtitle"><?php the_field('comfort_features_text'); ?></p>
				<p class="btn-space"><?php the_field('comfort_features_button'); ?></p>

			</div>
		</div>
	</div>
</section>

<section class="text-center" id="comfort-boost">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<img class="icons" src="/images/heat_blast_icon.png" width="50"/><img class="icons" src="/images/cool_blast_icon.png" width="50"/>
				<h2><?php the_field('comfort_boost_title'); ?></h2>
				<p class="subtitle"><?php the_field('comfort_boost_text'); ?></p>
				<p class="btn-space"><?php the_field('comfort_boost_button'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<!-- <img src="<?php the_field('comfort_boost_image'); ?>"/> -->
				<video poster="/images/2.0.0_phone_boost.jpg" autoplay="autoplay" loop="loop" controls="controls" height="500">
					<source src="https://m.wiserair.com/videos/2.0.0_phone_boost.mp4" type="video/mp4">
					Your browser does not support HTML5 video
				</video>
			</div>
		</div>
	</div>
</section>

<section class="text-center light-grey" id="humidity">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<img src="<?php the_field('humidity_balance_image'); ?>" style="height: 500px;"/>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text">
				<img src="/images/humidty_icon_blue.png" style="height: 45px;"/>
				<h2><?php the_field('humidity_balance_title'); ?></h2>
				<p class="subtitle"><?php the_field('humidity_balance_text'); ?></p>
				<p class="btn-space"><?php the_field('humidity_balance_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center dark-grey" id="exclusive-technology">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-7 col-sm-7 text-center">
				<h2><?php the_field('exclusive_technology_title'); ?></h2>
				<p class="subtitle"><?php the_field('exclusive_technology_text'); ?></p>
				<p class="btn-space"><?php the_field('exclusive_technology_button'); ?></p>
			</div>
			<div class="col-lg-5 col-md-5 col-sm-5 text-center">
				<img src="<?php the_field('exclusive_technology_image'); ?>"/>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="eco-iq">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-5 col-sm-5 text-center">
				<img src="<?php the_field('eco_iq_image'); ?>"/>
			</div>
			<div class="col-lg-7 col-md-7 col-sm-7 text-center text">
				<h2><?php the_field('eco_iq_title'); ?></h2>
				<p class="subtitle"><?php the_field('eco_iq_text'); ?></p>
				<p class="btn-space"><?php the_field('eco_iq_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<!-- <section class="text-center light-grey" id="wiser-start">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<h2><?php the_field('wiser_start_title'); ?></h2>
				<p class="subtitle"><?php the_field('wiser_start_text'); ?></p>
				<p class="btn-space"><?php the_field('wiser_start_button'); ?></p>
			</div>
		</div>
	</div>
</section> -->

<section class="text-center" id="wiser-forecast">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-7 col-sm-7 text-center text">
				<h2><?php the_field('wiser_forecast_title'); ?></h2>
				<p class="subtitle"><?php the_field('wiser_forecast_text'); ?></p>
				<p class="btn-space"><?php the_field('wiser_forecast_button'); ?></p>
			</div>
			<div class="col-lg-5 col-md-5 col-sm-5 text-center">
				<img src="<?php the_field('wiser_forecast_image'); ?>"/>
			</div>
		</div>
	</div>
</section>

<!-- <section class="grey text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Specifications</h2>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="4"]'); ?>
			</div>
		</div>
	</div>
</section> -->

<section class="blue" id="get-wiser">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
				<h2><?php the_field('up_close_marketing_title'); ?></h2>
				<p class="subtitle"><?php the_field('up_close_marketing_text'); ?></p>
				<p class="btn-space"><?php the_field('up_close_marketing_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>
