<?php
/**
 * Template Name: Comparison
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
			<!-- <div class="col-lg-5 col-md-5 col-sm-5 text-left">
				<h2><?php the_field('featured_image_title'); ?></h2>
        		<div><?php the_field('featured_image_text'); ?></div>
			</div> -->
		</div>
	</div>
</div>


<section>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
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

<?php get_footer(); ?>
