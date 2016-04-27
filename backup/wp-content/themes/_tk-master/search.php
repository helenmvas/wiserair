<?php
/**
 * The template for displaying Search Results pages.
 *
 * @package _tk
 */

get_header(); ?>

<!-- <div class="container-fluid"> -->
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
<!-- </div> -->

<section id="support-center-intro">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Wiser Air Support</h2>
				<p>We're here to assist you.</p>
				<?php echo do_shortcode('[widget id="category_wise_search-3"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="container">
	<div class="row">
		<div class="col-lg-4 col-md-4">
			<?php get_sidebar(); ?>
		</div>
		<div class="col-lg-8 col-md-8">
			<?php if ( have_posts() ) : ?>

				<header>
					<h2 class="page-title"><?php printf( __( 'Search Results for: %s', '_tk' ), '<span>' . get_search_query() . '</span>' ); ?></h2>
				</header><!-- .page-header -->

				<?php // start the loop. ?>
				<?php while ( have_posts() ) : the_post(); ?>

					<?php get_template_part( 'content', 'search' ); ?>

				<?php endwhile; ?>

				<?php _tk_content_nav( 'nav-below' ); ?>

			<?php else : ?>

				<?php get_template_part( 'no-results', 'search' ); ?>

			<?php endif; // end of loop. ?>
		</div>
	</div>
</section>


<?php get_footer(); ?>