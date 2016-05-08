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
				<h2>What is EcoIQ</h2>
				<p>Eco IQ™ is Wiser Air’s learning algorithm. It learns your heating and cooling preferences over time through direct feedback. Eco IQ™ challenges your perception of what an ideal temperature is by allowing you to define your comfort level by how warm or cold you are, rather than through a predetermined set point.</p>
				<img src="#" />
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="1"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="how-does-eco-iq-work">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>How does it work?</h2>
				<p>Eco IQ™ simplifies the way you interact with Wiser Air, by replacing set schedules with automatic temperature adjustments that save you energy, while keeping you comfortable throughout the day. Eco IQ™ works efficiently and intelligently, taking the following factors into account:</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5>Your Lifestyle Patterns</h5>
				<p>From initial inputs to subsequent adjustments, Eco IQ™ never stops learning.</p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5>Your Thermal Profile</h5>
				<p>Eco IQ™ learns how long it takes to heat your home and where you are losing heat.</p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5>Your Energy Usage</h5>
				<p>The more Eco IQ™ monitors your usage, the more places it finds to save energy.</p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
				<h5>Schneider Electric’s Weather Service</h5>
				<p>Accurate forecasting means more precise temperature adjustments in your home.</p>
			</div>
	</div>
</section>

<section class="text-center" id="clear-information">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>How do I enable EcoIQ?</h2>
				<p>After syncing your devices, you will be guided through a process to enable Eco IQ. When you reach the Eco IQ screen, press the blue “Enable Eco IQ button.” To enable Eco IQ™ at a later time, follow the steps below:</p>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="3"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="grey text-center">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>How do I set my preferences?</h2>
				<p>Eco IQ™ sets its priorities to fit your lifestyle. To set your preferences, follow the steps below:</p>
			</div>
			<div class="col-lg-12 text-center">
				<?php echo do_shortcode('[wonderplugin_tabs id="4"]'); ?>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="eco-iq-working">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<h2>How do I know Eco IQ™ is working?</h2>
				<p>Let Eco IQ™ know if you are too warm or cold by pressing the up and down arrows on your thermostat or mobile device. As you provide feedback on your comfort level, the status bar changes color (blue for cooler, yellow for warmer) and a message indicates that Eco IQ is learning from your behavior.</p>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<img src="#" />
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="eco-iq-working">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 text-center">
				<h2>How long does it take for Eco IQ™ to learn my preferences?</h2>
				<p>On average, it takes about a week for Eco IQ™ to learn your preferences, depending on the number of times you provide input. The more feedback you provide, the quicker EcoIQ learns. Factors that determine your comfort schedule include:</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 text-center">
				<img src="#" />
				<h5>Balance and comfort sliders</h5>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 text-center">
				<img src="#" />
				<h5>Time and day of feedback </h5>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3 text-center">
				<img src="#" />
				<h5>Outside temperature</h5>
			</div>
		</div>
	</div>
</section>

<section class="text-center" id="eco-iq-working">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 text-center">
				<h2>Get in touch</h2>
				<p>Whether you are home or away, Wiser Air works to save you energy. Let us know how Wiser Air is helping you manage your comfort @ wisermarketing@schneider-electric.com. We look forward to hearing for you.</p>
				<img src="#" />
				<p>Stay up to date on new features and releases by subscribing to our mailing list below.</p>
				<div id="eco-iq-form"><?php echo do_shortcode('[sg-subscription-form]'); ?></div>
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>
