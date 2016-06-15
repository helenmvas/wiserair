<?php
/**
 * Template Name: Support
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

<script src="<?php echo get_template_directory_uri(); ?>/includes/js/compatibility_checker.js"></script>

<!-- <div class="container-fluid"> -->
	<?php global $post; ?>
	<?php
	$src = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), array( 5600,1000 ), false, '' );
	?>
	<div class="support-featured-image" style="background-image: url(<?php echo $src[0]; ?> )">
		<div class="container">
			<div class="row">
				<div class="col-lg-offset-6 col-lg-6 col-md-offset-6 col-md-6 col-sm-offset-6 col-sm-6 text-left">
					
				</div>
			</div>
		</div>
	</div>
<!-- </div> -->

<section id="support-intro" class="dark-grey">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2><?php the_field('support_subtitle'); ?></h2>
				<p class="subtitle"><?php the_field('support_content'); ?></p>
				<?php echo do_shortcode('[widget id="category_wise_search-2" placeholder="im here"]'); ?>
			</div>
		</div>
	</div>
</section>

<section id="compatibility">
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
				<h2>Compatibility Checker</h2>
				<p class="subtitle">Mark the checkbox next to each wire that is connected to your current thermostat. Then, we'll let you know if your system is compatible with Wiser Air, or if we'll need to take a closer look.</p>
			</div>
			<div class="col-lg-offset-1 col-md-offset-1 col-lg-3 col-md-4 col-sm-5 col-xs-12">
				<form class="compat-widget-form">
	                <table>
	                    <tbody><tr>
	                        <td>
	                            <span><input type="checkbox" name="RC" value="true">RC</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="C" value="true">C</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="G" value="true">G</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="RH" value="true">RH</span>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>
	                            <span><input type="checkbox" name="W2" value="true">W2</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="W" value="true">W</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="Y2" value="true">Y2</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="Y" value="true">Y</span>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>
	                            <span><input type="checkbox" name="O/B" value="true">O/B</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="U" value="true">U</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="S1" value="true">S1</span>
	                        </td>
	                        <td>
	                            <span><input type="checkbox" name="S2" value="true">S2</span>
	                        </td>
	                    </tr>
	                </tbody>
	            </table>
                <div class="submit-container">
                    <button id="compat-submit-button" type="button" onclick="checkCompatibility()" class="button">CHECK WISER COMPATIBILITY</button>
                </div>
            </form>
		</div>
	</div>
</section>

<section>
	<div class="container" id="install">
		<div class="row">
			<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 text-center">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/1GMbQ2k_U2M" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="col-lg-offset-1 col-lg-6 col-md-offset-1 col-md-6 col-sm-7">
				<h2>Install</h2>
				<!-- <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p> -->

				<a href="/getting-started/" id="first">
					<h4>Quickstart Guide</h4>
					<p>Easy steps to get your Wiser Air up and running quickly</p>
				</a>
				
				<a href="/documents/WiserAir-WiringGuide.pdf">
					<h4>Wiring Guide</h4>
					<p>Wiring specific to your system</p>
				</a>

				<a href="https://www.wiserair.com/wp-content/uploads/2015/07/WiserAir-InstallGuide_v13.pdf">
					<h4>Install Guide</h4>
					<p>Easily install your Wiser Air </p>
				</a>
			</div>
		</div>
	</div>
</section>

<section id="faq" class="blue">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>FAQ</h2>
				<p class="subtitle">Get your questions answered.</p>
			</div>
		</div>
<!-- 		<div class="row">
			<div class="col-lg-6 col-md-6 text-center">
				<h4><a href="http://dev-wiserair-mlp.azurewebsites.net/index.php/2016/02/10/updates-version-2-released-spring-2016/">Updates</a></h4>
				<p>Lorem Ipsum is simply dummy text of the printing industry.<br /><a href="http://dev-wiserair-mlp.azurewebsites.net/index.php/2016/02/10/updates-version-2-released-spring-2016/">See Latest Updates<i class="fa fa-angle-right"></i></a></p>
			</div>
			<div class="col-lg-6 col-md-6 text-center">
				<h4><a href="https://www.wiserair.com/getting-started/">Search Our FAQ</a></h4>
				<p>Lorem Ipsum is simply dummy text of the printing industry.<br /><a href="http://dev-wiserair-mlp.azurewebsites.net/index.php/2016/02/10/updates-version-2-released-spring-2016/">See Latest Updates<i class="fa fa-angle-right"></i></a></p>
			</div>
		</div> -->
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<a href="/category/the-basics/" id="first">
					<h4>The Basics</h4>
					<p>The very most frequently asked questions</p>
				</a>
				
				<a href="/category/compatibility/">
					<h4>Compatibility</h4>
					<p>See how Wiser works with your system</p>
				</a>

				<a href="/category/installation/">
					<h4>Installation</h4>
					<p>Simple installation and setup</p>
				</a>

				<a href="/category/wi-fi-connection/">
					<h4>Wi-Fi Connection</h4>
					<p>Easily connect Wiser Air with your home</p>
				</a>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<a href="/category/troubleshooting/" id="first">
					<h4>Troubleshooting</h4>
					<p>Help with common issues</p>
				</a>

				<a href="/category/how-to/">
					<h4>How To</h4>
					<p>Optimize your home energy </p>
				</a>
				
				<a href="/category/explore-features/">
					<h4>Explore Features</h4>
					<p>Current and upcoming features </p>
				</a>

				<a href="/category/learn-more/">
					<h4>Learn More</h4>
					<p>Maximize your knowledge</p>
				</a>
			</div>
		</div>
	</div>
</section>

<section class="main-content">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Contact Us</h2>
				<p class="subtitle">Contact us for partnership opportunities. Or, give us a call at 1-(855)-55-WISER.</p>

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
