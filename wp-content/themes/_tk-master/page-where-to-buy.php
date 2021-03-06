<?php
/**
 * Template Name: Where To Buy
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
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h2><?php the_title(); ?></h2>
                <?php if (have_posts()) : ?>
                <?php while (have_posts()) : the_post(); ?>
                <?php the_content(); ?>
                <?php endwhile; ?>
                <?php endif; ?>
            </div>
        </div>
	</div>
</section>

<section>
	<div class="container">
		<div class="row">
			<ul class="wtb-retailers">
            <?php $retailers = new WP_Query(array(
                'post_type' => 'retailers', 'order'=> 'ASC', 'orderby' => 'title' 
                )); ?>

            <?php while($retailers->have_posts()) : $retailers->the_post(); ?>

           		<li class="col-lg-3 col-md-3 col-sm-3 col-xs-3 text-center">
                	<a href="<?php the_field('retailer_link'); ?>" target="_blank">	
                		<img src="<?php the_field('retailer_image'); ?>"/>
                	</a>
            	</li>
            <?php endwhile; // end of the loop. ?>
			<?php wp_reset_postdata(); ?>
			</ul>
        </div>
	</div>
</section>

<section class="container-fluid">
    <?php echo do_shortcode('[metaslider id=4119]'); ?>
</section>

<?php get_footer(); ?>
