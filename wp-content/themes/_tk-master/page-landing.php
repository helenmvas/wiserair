<?php
/**
 * Template Name: Marketing Landing Page
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
                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-8 text-left">
                    <h2><?php the_field('homepage_section_1_title'); ?></h2>
                    <p class="subtitle"><?php the_field('homepage_section_1_subtitle'); ?></p>
                    <p class="btn-space"><?php the_field('homepage_section_1_button'); ?></p>
                </div>
            </div>
        </div>
    </div>
<!-- </div> -->

<section class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 post">
            <?php while ( have_posts() ) : the_post(); ?>

                <?php get_template_part( 'content', 'single' ); ?>

            <?php endwhile; // end of the loop. ?>
        </div>
    </div>
</section>

<?php get_footer(); ?>
