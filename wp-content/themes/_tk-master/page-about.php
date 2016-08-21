<?php
/**
 * Template Name: About
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
<div class="homepage-featured-image about-featured-image" style="background-image: url(<?php echo $src[0]; ?> )">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-5 col-sm-5 text-left">
				<h2><?php the_field('featured_image_title'); ?></h2>
        		<div><?php the_field('featured_image_text'); ?></div>
			</div>
		</div>
	</div>
</div>


<section class="about-section-two light-grey">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-5 col-sm-5 text-center">
				<img src="<?php the_field('secondary_featured_image'); ?>" class="thermo">
			</div>
			<div class="col-lg-7 col-md-7 col-sm-7">
            	<?php
					if ( have_posts() ) {
						while ( have_posts() ) {

							the_post(); ?>

							<h2><?php the_title(); ?></h2>

							<?php the_content(); ?>

						<?php }
					}
					?>
				<?php wp_reset_postdata(); ?>
            </div>
        </div>
	</div>
</section>

<section class="about-section-three">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<h2>Contact Us</h2>
			</div>
		</div>
		<div class="row">
			
	            <?php $contact_options = new WP_Query(array(
	            'post_type' => 'contact_options'
	            )); ?>

				
	            <?php while($contact_options->have_posts()) : $contact_options->the_post(); ?>
	            <div class="col-lg-4 col-md-4 col-sm-4">
	            	<div><img src="<?php the_field('contact_options_icon'); ?>"/></div>
	            	<div><h4><?php the_title(); ?></h4></div>
	            	<div><?php the_content(); ?></div>
	            </div>
	            <?php endwhile; // end of the loop. ?>
				<?php wp_reset_postdata(); ?>

        </div>
	</div>
</section>

<?php get_footer(); ?>
