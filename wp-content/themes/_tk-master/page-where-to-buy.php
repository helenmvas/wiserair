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


<?php global $post; ?>
<?php
$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );
?>
<div class="homepage-featured-image" style="background-image: url(<?php echo $src[0]; ?> )">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-5 text-left">
            </div>
        </div>
    </div>
</div>


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
			<ul class="wtb-retailers">
            <?php $retailers = new WP_Query(array(
                'post_type' => 'retailers'
                )); ?>

            <?php while($retailers->have_posts()) : $retailers->the_post(); ?>

           		<li class="col-lg-3 col-md-3 col-sm-6 text-center">
                	<a href="<?php the_field('retailer_link'); ?>">	
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
    <img src="<?php the_field('where_to_buy_image'); ?>" />
</section>

<?php get_footer(); ?>
