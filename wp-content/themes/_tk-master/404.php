<?php
/**
 * The template for displaying 404 pages (Not Found).
 *
 * @package _tk
 */

get_header(); ?>

	<?php global $post; ?>
	<?php
	$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );
	?>
	<!-- <div class="support-center-featured-image" style="background-image: url(<?php echo $src[0]; ?> )"> -->
	<div class="support-center-featured-image">	
		<div class="container">
			<div class="row">
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<?php // add the class "panel" below here to wrap the content-padder in Bootstrap style ;) ?>
			<section class="content-padder error-404 not-found col-lg-12 col-md-12 col-sm-12 text-center">

				<header>
					<h2 class="page-title"><?php _e( 'Oops! Something went wrong here.', '_tk' ); ?></h2>
				</header><!-- .page-header -->

				<div class="page-content">

					<p><?php _e( 'Nothing could be found at this location. Maybe try a search?', '_tk' ); ?></p>

					<?php get_search_form(); ?>

				</div><!-- .page-content -->

			</section><!-- .content-padder -->
		</div>
	</div>

<?php get_footer(); ?>