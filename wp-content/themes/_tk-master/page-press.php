<?php
/**
 * Template Name: Press
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

<section class="press-section-2" style="margin-top: -150px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h2>Press Releases</h2>
            </div>
        </div>
        <div class="row">
            <?php $press = new WP_Query(array(
                'post_type' => 'press'
                )); ?>

            <?php while($press->have_posts()) : $press->the_post(); ?>

                <div class="col-lg-4 col-md-4 col-sm-4" class="press-releases">
                    <a href="<?php the_field('full_document_download'); ?>" target="_blank"><h4><?php the_title(); ?></h4></a>
                    <span><?php the_field('full_document_date'); ?></span>
                    <p><a href="<?php the_permalink(); ?>">Read press release</a></p>
                </div>
            <?php endwhile; // end of the loop. ?>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<section class="press-section-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Featured In</h2>
            </div>
        </div>
        <div class="row">
            <?php $featured_in = new WP_Query(array(
            'post_type' => 'featured_in'
            )); ?>

            <?php while($featured_in->have_posts()) : $featured_in->the_post(); ?>

                <div class="col-lg-3 col-md-3 col-sm-3 featured-logos">
                    <a href="<?php the_field('featured_url'); ?>" target="_blank"><img src="<?php the_field('featured_logo'); ?>"/></a>
                </div>
            <?php endwhile; // end of the loop. ?>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<section class="press-section-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Images</h2>
            </div>
        </div>
        <div class="row product_images">  
            <?php $product_images = new WP_Query(array(
            'post_type' => 'product_images'
            )); ?>

            <?php while($product_images->have_posts()) : $product_images->the_post(); ?>

                <div class="col-lg-3 col-md-3 col-sm-6">
                    <a download="<?php the_field('product_image'); ?>" href="<?php the_field('product_image'); ?>" target="_blank">
                     <img src="<?php the_field('product_image'); ?>"/>
                    </a>
                </div>
            <?php endwhile; // end of the loop. ?>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<section class="press-section-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Videos</h2>
            </div>
        </div>
        <div class="row">
            <?php $videos = new WP_Query(array(
            'post_type' => 'videos'
            )); ?>

            <?php while($videos->have_posts()) : $videos->the_post(); ?>

                <div class="col-lg-3 col-md-3 col-sm-3 text-center" class="videos">
                    <a href="<?php the_field('full_youtube_link'); ?>" target="_blank">
                        <?php the_field('product_video'); ?>
                        <h5><?php the_title(); ?></h5>
                    </a>
                </div>
            <?php endwhile; // end of the loop. ?>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<section class="press-section-6">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Logos</h2>
            </div>
        </div>
        <div class="row">
            <?php $logos = new WP_Query(array(
            'post_type' => 'logos'
            )); ?>

            <?php while($logos->have_posts()) : $logos->the_post(); ?>

                <div class="col-lg-3 col-md-3 col-sm-3 logos text-center">
                    <a download="<?php the_field('product_logo'); ?>" href="<?php the_field('product_logo_download'); ?>" target="_blank"><img src="<?php the_field('product_logo'); ?>"/></a>
                     <h5><?php the_title(); ?></h5>
                </div>
            <?php endwhile; // end of the loop. ?>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<section class="press-section-7">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Documents/Fact Sheets</h2>
            </div>
        </div>
        <div class="row">
            <?php $documents = new WP_Query(array(
            'post_type' => 'documents'
            )); ?>

            <?php while($documents->have_posts()) : $documents->the_post(); ?>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="documents">
                        <a href="<?php the_field('document_link'); ?>" target="_blank">
                            <i class="fa fa-file-o" aria-hidden="true"></i><?php the_title(); ?>
                        </a>
                    </div>
                    <!-- <p><?php the_field('document'); ?></p> -->
                </div>
            <?php endwhile; // end of the loop. ?>
            <?php wp_reset_postdata(); ?>
        </div>
    </div>
</section>

<section class="press-section-8">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Media Inquiries</h2>
                <?php the_field('media_inquiries'); ?>
            </div>
        </div>
    </div>
</section>

<?php get_footer(); ?>
