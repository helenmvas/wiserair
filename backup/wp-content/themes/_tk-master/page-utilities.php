<?php
/**
 * Template Name: Utilities
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

<section class="green" id="utility-intro">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2><?php the_field('section_1_title'); ?></h2>
				<hr />
				<p class="subtitle"><?php the_field('section_1_subtitle'); ?></p>
			</div>
		</div>
		<div class="row">
            <?php $utility_options = new WP_Query(array(
                'post_type' => 'utility_options'
                )); ?>

            <?php while($utility_options->have_posts()) : $utility_options->the_post(); ?>

            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 text-center boxes">
                <div><?php the_post_thumbnail(); ?></div>
                <h4><?php the_title(); ?></h4>
                <p><?php the_content(); ?></p>
            </div>
            <?php endwhile; // end of the loop. ?>
			<?php wp_reset_postdata(); ?>
        </div>
	</div>
</section>

<section id="utility-customized">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-7 text-center">
				<h2><?php the_field('section_2_title'); ?></h2>
				<hr />
				<p class="subtitle"><?php the_field('section_2_subtitle'); ?></p>
			</div>
			<div class="col-lg-5 col-md-5 text-center">
				<img src="/images/5.1.0_consumer_engagement.jpg" id="engagement_hands" alt="5.1.0_consumer_engagement.jpg">
			</div>
		</div>
	</div>
</section>

<div id="utility-slideshow">
	<?php echo do_shortcode('[image-carousel category="utilities"]'); ?>
</div>

<?php get_footer(); ?>
