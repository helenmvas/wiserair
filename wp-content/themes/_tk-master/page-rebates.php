<?php
/**
 * Template Name: Rebates
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

<section class="rebates" style="margin-top: -150px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h2>Rebates</h2>
            </div>
        </div>
        <div class="row">
            <?php $rebates = new WP_Query(array(
                'post_type' => 'rebates,'
                'order' => 'ASC'
                )); ?>

            <?php while($rebates->have_posts()) : $rebates->the_post(); ?>

                <div class="col-lg-12 col-md-12 col-sm-12">
                    <h3><?php the_title(); ?></h3>
                    <p><?php the_content(); ?></p>
                </div>
            <?php endwhile; // end of the loop. ?>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<?php get_footer(); ?>
