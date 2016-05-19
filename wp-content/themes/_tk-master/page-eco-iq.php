<?php
/**
 * Template Name: EcoIQ
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
			<div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-2 col-lg-9 col-md-9 col-sm-9 text-center" id="ecoiq"></div>
		</div>
	</div>
</div>


<section class="dark-grey text-center" id="what-is-eco-iq">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<a name="what-is-eco-iq"></a>
				<h2><?php the_field('section_1:_title'); ?></h2>
				<p class="subtitle"><?php the_field('section_1:_text_area'); ?></p>
				<img src="/images/thermo-black.png" />
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="how-does-eco-iq-work">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<a name="how-does-eco-iq-work"></a>
				<h2><?php the_field('section_2:_title'); ?></h2>
				<p class="subtitle"><?php the_field('section_2:_text_area'); ?></p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-offset-2 col-md-offset-2 col-lg-3 col-md-3 col-sm-6 text-center">
				<img src="<?php the_field('section_2:_subsection_image_1'); ?>" />
				<h4><?php the_field('section_2:_subsection_title_1'); ?></h4>
				<p><?php the_field('section_2:_subsection_text_area_1'); ?></p>
			</div>
			<div class="col-lg-offset-2 col-md-offset-2 col-lg-3 col-md-3 col-sm-6 text-center">
				<img src="<?php the_field('section_2:_subsection_image_2'); ?>" />
				<h4><?php the_field('section_2:_subsection_title_2'); ?></h4>
				<p><?php the_field('section_2:_subsection_text_area_2'); ?></p>
			</div>
			<div class="col-lg-offset-2 col-md-offset-2 col-lg-3 col-md-3 col-sm-6 text-center">
				<img src="<?php the_field('section_2:_subsection_image_3'); ?>" />
				<h4><?php the_field('section_2:_subsection_title_3'); ?></h4>
				<p><?php the_field('section_2:_subsection_text_area_3'); ?></p>
			</div>
			<div class="col-lg-offset-2 col-md-offset-2 col-lg-3 col-md-3 col-sm-6 text-center">
				<img src="<?php the_field('section_2:_subsection_image_4'); ?>" />
				<h4><?php the_field('section_2:_subsection_title_4'); ?></h4>
				<p><?php the_field('section_2:_subsection_text_area_4'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center blue" id="how-to-enable-eco-iq">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<a name="how-to-enable-eco-iq"></a>
				<h2><?php the_field('section_3:_title'); ?></h2>
				<p class="subtitle"><?php the_field('section_3:_text_area'); ?></p>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="7"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="dark-grey text-center" id="how-do-i-set-preferences">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<a name="how-do-i-set-preferences"></a>
				<h2><?php the_field('section_4:_title'); ?></h2>
				<p class="subtitle"><?php the_field('section_4:_text_area'); ?></p>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="8"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="eco-iq-working">
	<div class="container">
		<div class="row">
			<div class="col-lg-5 col-md-5 col-sm-5 text-center">
				<a name="eco-iq-working"></a>
				<h2><?php the_field('section_5:_title'); ?></h2>
				<p class="subtitle"><?php the_field('section_5:_text_area'); ?></p>
			</div>
		</div>
	</div>
</section>

<section class="text-center blue" id="eco-iq-preferences">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<a name="eco-iq-preferences"></a>
				<h2><?php the_field('section_6:_title'); ?></h2>
				<p class="subtitle"><?php the_field('section_6:_text_area'); ?></p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-offset-3 col-md-offset-2 col-sm-offset-2 col-lg-2 col-md-3 col-sm-3 text-center">
				<img src="<?php the_field('section_6:_subsection_image_1'); ?>" />
				<h4><?php the_field('section_6:_subsection_title_1'); ?></h4>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 text-center">
				<img src="<?php the_field('section_6:_subsection_image_2'); ?>" />
				<h4><?php the_field('section_6:_subsection_title_2'); ?></h4>
			</div>
			<div class="col-lg-2 col-md-3 col-sm-3 text-center">
				<img src="<?php the_field('section_6:_subsection_image_3'); ?>" />
				<h4><?php the_field('section_6:_subsection_title_3'); ?></h4>
			</div>
		</div>
	</div>
</section>

<section class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Contact Us</h2>
				<p class="subtitle">Submit the form below to inquire about partnership opportunities. Or, give us a call at 1-(855)-55-WISER.</p>

				<p class="subtitle">Monday - Friday: 8am-12am EST | Saturday - Sunday: 10am-7pm EST</p>

				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<?php echo do_shortcode('[contact-form-7 id="4" title="Contact form 1"]'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<?php get_footer(); ?>
