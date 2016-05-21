<?php
/**
 * Template Name: Up Close
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

<section class="text-center"id="bells">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Bells & Whistles you'll actually use.</h2>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="1"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="green text-center" id="smarter">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>There's smart and then there's Wiser.</h2>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="2"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="clear-information">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Clear information for clear results.</h2>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="3"]'); ?>
			</div>

			<div id="chart-container">
			</div>

		</div>
	</div>
</section>

<section class="container-fluid">
    <img src="<?php the_field('up_close_background_image'); ?>" />
</section>

<section class="grey text-center">
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
</section>

<?php get_footer(); ?>
