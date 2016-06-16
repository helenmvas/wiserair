<?php
/**
 * Template Name: eCommerce
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

<section>
	<div class="container">
		<div class="row">
            <h2><?php the_title(); ?></h4>
            <?php if (have_posts()) : ?>
            <?php while (have_posts()) : the_post(); ?>
            <?php the_content(); ?>
            <?php endwhile; ?>
            <?php endif; ?>
        </div>
	</div>
</section>

<section>
	<div class="container">
		<div class="row">
			<iframe src="http://www.apc.com/shop/us/en/products/Wiser-Air-White-Smart-WI-FI-Thermostat/P-WISERAIR10WHTUS" width="1100" height="500" border="0"></iframe>
        </div>
	</div>
</section>

<?php get_footer(); ?>
