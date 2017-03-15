<?php
/**
 * Template Name: Getting Started
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

<section class="gray" id="getting-started">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 text-center">
				<h2><?php the_field('section_1_title'); ?></h2>
				<img src="<?php the_field('section_1_image'); ?>" />
				<p class="subtitle"><?php the_field('section_1_subtitle'); ?></p>
				<!-- <p class="space"><a href="<?php the_field('section_1_button'); ?>" class="button">Need to Purchase</a></p> -->
			</div>
		</div>
	</div>
</section>

<section id="energy">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 text-center">
				<h2><?php the_field('section_2_title'); ?></h2>
				<div><?php echo do_shortcode('[wonderplugin_tabs id="5"]'); ?></div>
			</div>
		</div>
		<div class="row space">
			<div class="col-lg-12 col-md-12 text-center">
				<p><a href="https://www.youtube.com/watch?v=1GMbQ2k_U2M" target="_blank" class="button">Watch Our Installation Video</a> or <a href="/documents/WiserAir-InstallGuide.pdf"  target="_blank" class="button">View Complete Installation Guide</a></p>
			</div>
		</div>
	</div>
</section>

<section class="gray">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 text-center">
				<h2><?php the_field('section_3_title'); ?></h2>
				<?php echo do_shortcode('[wonderplugin_tabs id="6"]'); ?>
			</div>
		</div>
	</div>
</section>

<section id="sync">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<h2><?php the_field('section_4_title'); ?></h2>
				<p class="subtitle"><?php the_field('section_4_subtitle'); ?></p>
				<div class="app-links">
	                <a href="https://itunes.apple.com/US/app/id924194762" target="_blank"><img src="/images/4.3.0_appstore.png"></a><br />
	                <a href="https://play.google.com/store/apps/details?id=com.schneider_electric.wiserair_android.main" target="_blank"><img src="/images/4.3.0_playstore.png"></a><br />
	                <a href="https://www.microsoft.com/en-us/store/apps/wiser-air/9nblggh39b6f" target="_blank"><img src="/images/4.3.0_msstore.png"></a><br />
	               
	                <div class="space">
	                	<a href="https://home.wiserair.com/" target="_blank" style="color:black; text-decoration:underline;">Login Online</a>
	                </div>
            	</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<p id="hand"><img src="/images/4.3.0_hand_app.png" alt="4.3.0_hand_app.png"></p>
			</div>
		</div>
	</div>
</section>

<!-- <section class="homepage-section-6" id="retailers">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Make the Wiser choice.</h2>
				<p class="subtitle">Available at these retailers.</p>
			</div>
		</div>
		<div class="row">
			<ul>
            <?php $retailers = new WP_Query(array(
                'post_type' => 'retailers'
                )); ?>

            <?php while($retailers->have_posts()) : $retailers->the_post(); ?>

           		<li class="text-center">
                	<div><?php the_post_thumbnail(); ?></div>
                	<h4><?php the_title(); ?></h4>
            	</li>
            <?php endwhile; // end of the loop. ?>
			<?php wp_reset_postdata(); ?>
			</ul>
        </div>
	</div>
</section> -->
<?php get_footer(); ?>
