<?php
/**
 * Template Name: Up Close v2
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
				<div class="col-lg-12 col-md-12 col-sm-12 text-center" id="ecoiq">
					<img src="#" />
					<h1>EcoIQ</h1>
					<h5>What is EcoIQ ™?</h5>
					<h5>How does it work?</h5>
					<h5>How do I enable Eco IQ ™?</h5>
					<h5>How do I set my limits?</h5>
					<h5>How do I know Eco IQ ™ is working?</h5>
					<h5>How long does it take for Eco IQ ™ to learn my preferences?</h5>
				</div>
			</div>
		</div>
	</div>
<!-- </div> -->

<section class="dark-grey text-center" id="what-is-eco-iq">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2><?php the_field('section_1:_title'); ?></h2>
				<p><?php the_field('section_1:_text_area'); ?></p>
				<img src="#" />
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="how-does-eco-iq-work">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2><?php the_field('section_2:_title'); ?></h2>
				<p><?php the_field('section_2:_text_area'); ?></p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5><?php the_field('section_2:_subsection_title_1'); ?></h5>
				<p><?php the_field('section_2:_subsection_text_area_1'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5><?php the_field('section_2:_subsection_title_2'); ?></h5>
				<p><?php the_field('section_2:_subsection_text_area_2'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5><?php the_field('section_2:_subsection_title_3'); ?></h5>
				<p><?php the_field('section_2:_subsection_text_area_3'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5><?php the_field('section_2:_subsection_title_4'); ?></h5>
				<p><?php the_field('section_2:_subsection_text_area_4'); ?></p>
			</div>
	</div>
</section>

<section class="text-center blue" id="clear-information">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2><?php the_field('section_3:_title'); ?></h2>
				<p><?php the_field('section_3:_text_area'); ?></p>
			</div>
			<div class="col-lg-12 text-center">
				
			</div>
		</div>
	</div>
</section>

<section class="dark-grey text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2><?php the_field('section_4:_title'); ?></h2>
				<p><?php the_field('section_4:_text_area'); ?></p>
			</div>
			<div class="col-lg-12 text-center">
				
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="eco-iq-working">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<h2><?php the_field('section_5:_title'); ?></h2>
				<p><?php the_field('section_5:_text_area'); ?></p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
			</div>
		</div>
	</div>
</section>

<section class="text-center blue" id="eco-iq-preferences">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<h2><?php the_field('section_6:_title'); ?></h2>
				<p><?php the_field('section_6:_text_area'); ?></p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-offset-3 col-md-offset-3 col-lg-3 col-md-3 col-sm-3 text-center">
				<img src="#" />
				<h5><?php the_field('section_6:_subsection_title_1'); ?></h5>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 text-center">
				<img src="#" />
				<h5><?php the_field('section_6:_subsection_title_2'); ?></h5>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 text-center">
				<img src="#" />
				<h5><?php the_field('section_6:_subsection_title_3'); ?></h5>
			</div>
		</div>
	</div>
</section>

<section class="text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<h2>Get in touch</h2>
				<p>Whether you are home or away, Wiser Air works to save you energy. Let us know how Wiser Air is helping you manage your comfort @ wisermarketing@schneider-electric.com. We look forward to hearing for you.</p>
				<img src="/images/get-in-touch-thermo.png" />
				<p>Stay up to date on new features and releases by subscribing to our mailing list below.</p>
				<div id="eco-iq-form"><?php echo do_shortcode('[sg-subscription-form]'); ?></div>
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>
