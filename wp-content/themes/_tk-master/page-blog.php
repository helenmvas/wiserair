<?php
/**
 * Template Name: Blog
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
			<div class="col-lg-offset-6 col-lg-6 col-md-offset-6 col-md-6 col-sm-offset-6 col-sm-6 text-left">
				
			</div>
		</div>
	</div>
</div>
<!-- <div class="blog-featured-image" style="background-image: url(<?php echo $src[0]; ?> )">
	<div class="container">
		<div class="row">
			<div class="col-lg-offset-6 col-lg-6 col-md-offset-6 col-md-6 col-sm-offset-6 col-sm-6 text-left">
				
			</div>
		</div>
	</div>
</div> -->

<div class="container">
	<div class="row">
		<div class="col-lg-12 col-md-12">
			<div id="content" class="main-content-inner col-sm-12 col-md-12 col-lg-12">

			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', 'page' ); ?>

				<?php
					// If comments are open or we have at least one comment, load up the comment template
					if ( comments_open() || '0' != get_comments_number() )
						comments_template();
				?>

			<?php endwhile; // end of the loop. ?>
		</div>
	</div>
</div>

<?php get_footer(); ?>
