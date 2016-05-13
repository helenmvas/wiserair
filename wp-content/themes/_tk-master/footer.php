<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the id=main div and all content after
 *
 * @package _tk
 */
?>
			</div><!-- close .*-inner (main-content or sidebar, depending if sidebar is used) -->
		</div><!-- close .row -->
	</div><!-- close .container -->
</div><!-- close .main-content -->

<footer id="colophon" class="site-footer" role="contentinfo">
<?php // substitute the class "container-fluid" below if you want a wider content area ?>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3">
				<?php
				if(is_active_sidebar('footer-sidebar-1')){
				dynamic_sidebar('footer-sidebar-1');
				}
				?>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-3">
				<?php
				if(is_active_sidebar('footer-sidebar-2')){
				dynamic_sidebar('footer-sidebar-2');
				}
				?>
			</div>
			<!-- <div class="col-lg-2 col-md-3 col-sm-3">
				<?php
				if(is_active_sidebar('footer-sidebar-3')){
				dynamic_sidebar('footer-sidebar-3');
				}
				?>
			</div> -->
			<div class="col-lg-5 col-md-5 col-sm-6">
				<h5>Make the Wiser choice. Be one of the first to get Wiser Air.</h5>
				<p>Sign up below and we’ll keep you updated on the latest Wiser Air news.</p>
				<div>
					<?php echo do_shortcode('[sg-subscription-form]'); ?>
					
				</div>

				<ul class="social">
					<li><a href="https://www.facebook.com/wiserair" target="_blank"><img src="/images/facebook.png" width="32" height="32"></a></li>
					<li><a href="https://twitter.com/wiserair" target="_blank"><img src="/images/twitter.png" width="32" height="32"/></a></li>
					<li><a href="https://instagram.com/wiserair" target="_blank"><img src="/images/instagram.png" width="32" height="32"/></a></li>
					<li><a href="https://www.youtube.com/c/wiserair" target="_blank"><img src="/images/youtube-2.png" width="32" height="32"/></a></li>
				</ul>

				<?php
				if(is_active_sidebar('footer-sidebar-3')){
					dynamic_sidebar('footer-sidebar-3');
				}
				?>

			</div>
		</div>
		<div class="row" id="copyright">
			<div class="col-lg-8 col-md-8">© 2015 Schneider Electric. All rights reserved. <a href="http://www2.schneider-electric.com/sites/corporate/en/general/legal-information/legal-information.page" target="_blank">Legal Terms</a> | <a href="http://www2.schneider-electric.com/sites/corporate/en/general/legal-information/data-privacy.page" target="_blank">Privacy Policy</a></div>

			<div class="col-lg-4 col-md-4 text-right"><a href="http://www.schneider-electric.com/ww/en/"/><img src="https://www.jivesoftware.com/wp-content/themes/jive2015/images/nav/Schneider-Electric_White.png"/></a></div>
			</div>
		</div>
	</div><!-- close .container -->
</footer><!-- close #colophon -->
	<?php wp_footer(); ?>
</body>

</html>