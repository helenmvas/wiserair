<?php
/**
 * Template Name: Homepage
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

<!-- <div class="container-fluid"> -->
	<?php global $post; ?>
	<?php
	$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );
	?>
	<div class="homepage-featured-image" style="background-image: url(<?php echo $src[0]; ?> )">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-6 col-sm-7 col-xs-12">
					<h2><?php the_field('homepage_section_1_title'); ?></h2>
					<p class="subtitle"><?php the_field('homepage_section_1_subtitle'); ?></p>
					<p class="btn-space"><?php the_field('homepage_section_1_button'); ?></p>
				</div>
			</div>
		</div>
	</div>
<!-- </div> -->

<section class="homepage-section-7" id="homepage-slideshow">
	<div class="container-fluid">
		<div class="row">
			<div class="text-center">
				<?php echo do_shortcode('[metaslider id=4110]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-2 dark-grey" id="in-control">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-5 text-center">
				<img src="/images/1.1.0_thermostat2.png" alt="Wiser Air" height="367" width="366">
			</div>
			<div class="col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-lg-7 col-md-7 col-sm-7">
				<h2><?php the_field('homepage_section_2_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_2_subtitle'); ?></p>
				<p class="btn-space"><?php the_field('homepage_section_2_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-3" id="control-fingertips" style="background-image: url('<?php the_field('homepage_section_3_background_image'); ?>')">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<h2><?php the_field('homepage_section_3_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_3_subtitle'); ?></p>
				<p class="btn-space"><?php the_field('homepage_section_3_button'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
				<!-- <img src="/images/1.2.0_hand_device.png" id="control_hand" alt="1.2.0_hand_device"> -->
				<div><img src="<?php the_field('homepage_section_3_image'); ?>"/></div>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-5 blue">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<img src="<?php the_field('homepage_section_5_background_image'); ?>"/>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<h2><?php the_field('homepage_section_5_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_5_subtitle'); ?></p>
				<p class="btn-space"><?php the_field('homepage_section_5_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-8 dark-grey">
	<div class="container">
		<div class="row">
			<div class="col-lg-offset-1 col-md-offset-1 col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="<?php the_field('homepage_section_8_image'); ?>" width="350"/>
				<h2><?php the_field('homepage_section_8_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_8_subtitle'); ?></p>
				<p class="btn-space"><?php the_field('homepage_section_8_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-4" id="precise-weather">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-5 col-sm-4 col-xs-5 text-center">
				<div><img src="<?php the_field('homepage_section_4_image'); ?>"/></div>
			</div>
			<div class="col-offset-lg-2 col-md-offset-2 col-sm-offset-3 col-lg-5 col-md-5 col-sm-5 col-xs-5">
				<h2><?php the_field('homepage_section_4_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_4_subtitle'); ?></p>
				<p class="btn-space"><?php the_field('homepage_section_4_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-9" style="background-image: url('<?php the_field('homepage_section_9_background_image'); ?>'); background-size: cover;">
	<div class="container">
		<div class="row">
			<!-- <div class="col-lg-4 col-md-5 col-sm-4">
				<div><?php the_field('homepage_section_9_image'); ?></div>	
			</div> -->
			<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
				<h2><?php the_field('homepage_section_9_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_9_subtitle'); ?></p>
				<p class="btn-space"><?php the_field('homepage_section_9_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-1">
	<div class="container">
		<div class="row text-center" id="video">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<?php the_field('homepage_section_1_video'); ?>
				<h6 class="text-center"><?php the_field('homepage_section_1_video_title'); ?></h6>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<?php the_field('homepage_section_1_video2'); ?>
				<h6 class="text-center"><?php the_field('homepage_section_1_video_2_title'); ?></h6>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<?php the_field('homepage_section_1_video3'); ?>
				<h6 class="text-center"><?php the_field('homepage_section_1_video_3_title'); ?></h6>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
				<?php the_field('homepage_section_1_video4'); ?>
				<h6 class="text-center"><?php the_field('homepage_section_1_video_4_title'); ?></h6>
			</div>
		</div>
	</div>
</section>
<?php get_footer(); ?>
