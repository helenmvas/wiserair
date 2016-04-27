<?php
/**
 * The template for displaying Archive pages.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
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

<section id="support-center-intro">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Wiser Air Support</h2>
				<p>We're here to assist you.</p>
				<?php echo do_shortcode('[widget id="category_wise_search-2"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="container">
	<?php // add the class "panel" below here to wrap the content-padder in Bootstrap style ;) ?>
	<div class="row">
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
			<?php get_sidebar(); ?>
		</div>
		<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">

			<?php if ( have_posts() ) : ?>

				<header>
					<h2 class="page-title">
						<?php
							if ( is_category() ) :
								single_cat_title();

							elseif ( is_tag() ) :
								single_tag_title();

							elseif ( is_author() ) :
								/* Queue the first post, that way we know
								 * what author we're dealing with (if that is the case).
								*/
								the_post();
								printf( __( 'Author: %s', '_tk' ), '<span class="vcard">' . get_the_author() . '</span>' );
								/* Since we called the_post() above, we need to
								 * rewind the loop back to the beginning that way
								 * we can run the loop properly, in full.
								 */
								rewind_posts();

							elseif ( is_day() ) :
								printf( __( 'Day: %s', '_tk' ), '<span>' . get_the_date() . '</span>' );

							elseif ( is_month() ) :
								printf( __( 'Month: %s', '_tk' ), '<span>' . get_the_date( 'F Y' ) . '</span>' );

							elseif ( is_year() ) :
								printf( __( 'Year: %s', '_tk' ), '<span>' . get_the_date( 'Y' ) . '</span>' );

							elseif ( is_tax( 'post_format', 'post-format-aside' ) ) :
								_e( 'Asides', '_tk' );

							elseif ( is_tax( 'post_format', 'post-format-image' ) ) :
								_e( 'Images', '_tk');

							elseif ( is_tax( 'post_format', 'post-format-video' ) ) :
								_e( 'Videos', '_tk' );

							elseif ( is_tax( 'post_format', 'post-format-quote' ) ) :
								_e( 'Quotes', '_tk' );

							elseif ( is_tax( 'post_format', 'post-format-link' ) ) :
								_e( 'Links', '_tk' );

							else :
								_e( 'Archives', '_tk' );

							endif;
						?>
					</h2>
					<?php
						// Show an optional term description.
						$term_description = term_description();
						if ( ! empty( $term_description ) ) :
							printf( '<div class="taxonomy-description">%s</div>', $term_description );
						endif;
					?>
				</header><!-- .page-header -->

				<?php /* Start the Loop */ ?>
				<?php while ( have_posts() ) : the_post(); ?>

					<?php
						/* Include the Post-Format-specific template for the content.
						 * If you want to overload this in a child theme then include a file
						 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
						 */
						get_template_part( 'content', get_post_format() );
					?>

				<?php endwhile; ?>

				<?php _tk_content_nav( 'nav-below' ); ?>

			<?php else : ?>

				<?php get_template_part( 'no-results', 'archive' ); ?>

			<?php endif; ?>
		</div>
	</div><!-- .content-padder -->
</section>

<?php get_footer(); ?>
