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
				<div class="col-lg-offset-6 col-lg-6 col-md-offset-6 col-md-6 col-sm-offset-6 col-sm-6 text-left">
					
				</div>
			</div>
		</div>
	</div>
<!-- </div> -->

<section class="homepage-section-1">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<h2><?php the_field('homepage_section_1_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_1_subtitle'); ?></p>
				<!-- <?php include (TEMPLATEPATH . '/searchform.php'); ?> -->
			</div>
		</div>
		<div class="row text-center" id="video">
			<div class="col-lg-offset-2 col-md-offset-2 col-lg-4 col-md-4 col-sm-6 col-xs-12">
				<?php the_field('homepage_section_1_video'); ?>
				<h6 class="text-center"><?php the_field('homepage_section_1_video_title'); ?></h6>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
				<?php the_field('homepage_section_1_video2'); ?>
				<h6 class="text-center"><?php the_field('homepage_section_1_video_2_title'); ?></h6>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-2" id="in-control">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-5 col-sm-4">

				<img src="/images/1.1.0_thermostat2.png" alt="Wiser Air" height="367" width="366">
			</div>
			<div class="col-lg-8 col-md-6 col-sm-8 text-center">
				<h2><?php the_field('homepage_section_2_title'); ?></h2>
				<p class="subtitle"><?php the_field('homepage_section_2_subtitle'); ?></p>
				<p class="btn-space"><?php the_field('homepage_section_2_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-3" id="control-fingertips">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
				<h2><?php the_field('homepage_section_3_title'); ?></h2>
				<p class="btn-space"><?php the_field('homepage_section_3_button'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
				<img src="/images/1.2.0_hand_device.png" id="control_hand" alt="1.2.0_hand_device">
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-4" id="precise-weather">
	<div class="container">
		<div class="row">
			<div class="col-lg-offset-6 col-lg-6 col-md-offset-6 col-md-6 col-sm-offset-6 col-sm-6 col-xs-12 push-left">
				<h2><?php the_field('homepage_section_4_title'); ?></h2>
				<p class="btn-space"><?php the_field('homepage_section_4_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-5" id="utility-rebates">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2><?php the_field('homepage_section_5_title'); ?></h2>
				<p class="btn-space"><?php the_field('homepage_section_5_button'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="homepage-section-6" id="retailers">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Make the Wiser choice.</h2>
				<p class="subtitle">Available at these retailers.</p>
			</div>
		</div>
		<div class="row">
			<ul>
            <?php $retailers = new WP_Query(array(
                'post_type' => 'retailers'
                )); ?>

            <?php while($retailers->have_posts()) : $retailers->the_post(); ?>

           		<li class="text-center">
                	<div><?php the_post_thumbnail(); ?></div>
                	<h4><?php the_title(); ?></h4>
            	</li>
            <?php endwhile; // end of the loop. ?>
			<?php wp_reset_postdata(); ?>
			</ul>
        </div>
	</div>
</section>

<?php get_footer(); ?>
