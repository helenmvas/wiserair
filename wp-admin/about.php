<<<<<<< HEAD
<?php
/**
 * About This Version administration panel.
 *
 * @package WordPress
 * @subpackage Administration
 */

/** WordPress Administration Bootstrap */
require_once( dirname( __FILE__ ) . '/admin.php' );

wp_enqueue_style( 'wp-mediaelement' );
wp_enqueue_script( 'wp-mediaelement' );
wp_localize_script( 'mediaelement', '_wpmejsSettings', array(
	'pluginPath' => includes_url( 'js/mediaelement/', 'relative' ),
	'pauseOtherPlayers' => ''
) );

if ( current_user_can( 'install_plugins' ) ) {
	add_thickbox();
	wp_enqueue_script( 'plugin-install' );
}

$video_url = 'https://videopress.com/embed/J44FHXvg?hd=true';
$locale    = str_replace( '_', '-', get_locale() );
list( $locale ) = explode( '-', $locale );
if ( 'en' !== $locale ) {
	$video_url = add_query_arg( 'defaultLangCode', $locale, $video_url );
}

wp_oembed_add_host_js();

$title = __( 'About' );

list( $display_version ) = explode( '-', $wp_version );

include( ABSPATH . 'wp-admin/admin-header.php' );
?>
	<div class="wrap about-wrap">
		<h1><?php printf( __( 'Welcome to WordPress&nbsp;%s' ), $display_version ); ?></h1>

		<div class="about-text"><?php printf( __( 'Thank you for updating! WordPress %s makes your site more connected and responsive.' ), $display_version ); ?></div>
		<div class="wp-badge"><?php printf( __( 'Version %s' ), $display_version ); ?></div>

		<h2 class="nav-tab-wrapper">
			<a href="about.php" class="nav-tab nav-tab-active"><?php _e( 'What&#8217;s New' ); ?></a>
			<a href="credits.php" class="nav-tab"><?php _e( 'Credits' ); ?></a>
			<a href="freedoms.php" class="nav-tab"><?php _e( 'Freedoms' ); ?></a>
		</h2>

		<div class="changelog point-releases">
			<h3><?php echo _n( 'Maintenance and Security Release', 'Maintenance and Security Releases', 2 ); ?></h3>
			<p><?php printf( _n( '<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bug.',
				'<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bugs.', 17 ), '4.4.2', number_format_i18n( 17 ) ); ?>
				<?php printf( __( 'For more information, see <a href="%s">the release notes</a>.' ), 'https://codex.wordpress.org/Version_4.4.2' ); ?>
			</p>
			<p><?php printf( _n( '<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bug.',
				'<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bugs.', 52 ), '4.4.1', number_format_i18n( 52 ) ); ?>
				<?php printf( __( 'For more information, see <a href="%s">the release notes</a>.' ), 'https://codex.wordpress.org/Version_4.4.1' ); ?>
			</p>
		</div>

		<div class="headline-feature feature-video">
			<iframe width="1050" height="591" src="<?php echo esc_url( $video_url ); ?>" frameborder="0" allowfullscreen></iframe>
			<script src="https://videopress.com/videopress-iframe.js"></script>
		</div>

		<hr>

		<div class="headline-feature feature-section one-col">
			<h2><?php _e( 'Twenty Sixteen' ); ?></h2>
			<div class="media-container">
				<img src="https://s.w.org/images/core/4.4/twenty-sixteen-white-fullsize-2x.png" alt="" srcset="https://s.w.org/images/core/4.4/twenty-sixteen-white-smartphone-1x.png 268w, https://s.w.org/images/core/4.4/twenty-sixteen-white-smartphone-2x.png 536w, https://s.w.org/images/core/4.4/twenty-sixteen-white-tablet-1x.png 558w, https://s.w.org/images/core/4.4/twenty-sixteen-white-desktop-1x.png 840w, https://s.w.org/images/core/4.4/twenty-sixteen-white-fullsize-1x.png 1086w, https://s.w.org/images/core/4.4/twenty-sixteen-white-tablet-2x.png 1116w, https://s.w.org/images/core/4.4/twenty-sixteen-white-desktop-2x.png 1680w, https://s.w.org/images/core/4.4/twenty-sixteen-white-fullsize-2x.png 2172w" sizes="(max-width: 500px) calc((100vw - 40px) * .8), (max-width: 782px) calc((100vw - 70px) * .8), (max-width: 960px) calc((100vw - 116px) * .8), (max-width: 1290px) calc((100vw - 240px) * .8), 840px" />
			</div>
			<div class="two-col">
				<div class="col">
					<h3><?php _e( 'Introducing Twenty Sixteen' ); ?></h3>
					<p><?php _e( 'Our newest default theme, Twenty Sixteen, is a modern take on a classic blog design.' ); ?></p>
					<p><?php _e( 'Twenty Sixteen was built to look great on any device. A fluid grid design, flexible header, fun color schemes, and more, will make your content shine.' ); ?></p>
					<div class="horizontal-image">
						<div class="content">
							<img class="feature-image horizontal-screen" src="https://s.w.org/images/core/4.4/twenty-sixteen-dark-fullsize-2x.png?2" alt=""  srcset="https://s.w.org/images/core/4.4/twenty-sixteen-dark-smartphone-1x.png?2 268w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-smartphone-2x.png?2 535w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-desktop-1x.png?2 558w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-fullsize-1x.png?2 783w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-desktop-2x.png?2 1116w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-fullsize-2x.png?2 1566w" sizes="(max-width: 500px) calc((100vw - 40px) * .8), (max-width: 782px) calc((100vw - 70px) * .8), (max-width: 960px) calc((100vw - 116px) * .5216), (max-width: 1290px) calc((100vw - 240px) * .5216), 548px" />
						</div>
					</div>
				</div>
				<div class="col feature-image">
					<img class="vertical-screen" src="https://s.w.org/images/core/4.4/twenty-sixteen-red-fullsize-2x.png" alt="" srcset="https://s.w.org/images/core/4.4/twenty-sixteen-red-smartphone-1x.png 107w, https://s.w.org/images/core/4.4/twenty-sixteen-red-smartphone-2x.png 214w, https://s.w.org/images/core/4.4/twenty-sixteen-red-desktop-1x.png 252w, https://s.w.org/images/core/4.4/twenty-sixteen-red-fullsize-1x.png 410w, https://s.w.org/images/core/4.4/twenty-sixteen-red-desktop-2x.png 504w, https://s.w.org/images/core/4.4/twenty-sixteen-red-fullsize-2x.png 820w" sizes="(max-width: 500px) calc((100vw - 40px) * .32), (max-width: 782px) calc((100vw - 70px) * .32), (max-width: 960px) calc((100vw - 116px) * .24), (max-width: 1290px) calc((100vw - 240px) * .24), 252px" />
				</div>
			</div>
		</div>

		<hr />

		<div class="feature-section two-col">
			<div class="col">
				<div class="media-container">
					<img src="https://s.w.org/images/core/4.4/responsive-devices-fullsize-2x.png" alt="" srcset="https://s.w.org/images/core/4.4/responsive-devices-smartphone-1x.png 335w, https://s.w.org/images/core/4.4/responsive-devices-desktop-1x.png 500w, https://s.w.org/images/core/4.4/responsive-devices-smartphone-2x.png 670w, https://s.w.org/images/core/4.4/responsive-devices-tablet-1x.png 698w, https://s.w.org/images/core/4.4/responsive-devices-desktop-2x.png 1000w, https://s.w.org/images/core/4.4/responsive-devices-fullsize-1x.png 1200w, https://s.w.org/images/core/4.4/responsive-devices-tablet-2x.png 1396w, https://s.w.org/images/core/4.4/responsive-devices-fullsize-2x.png 2400w" sizes="(max-width: 500px) calc(100vw - 40px), (max-width: 782px) calc(100vw - 70px), (max-width: 960px) calc((100vw - 116px) * .476), (max-width: 1290px) calc((100vw - 240px) * .476), 500px" />
				</div>
			</div>
			<div class="col">
				<h3><?php _e( 'Responsive images' ); ?></h3>
				<p><?php _e( 'WordPress now takes a smarter approach to displaying appropriate image sizes on any device, ensuring a perfect fit every time. You don&#8217;t need to do anything to your theme, it just works.' ); ?></p>
			</div>
		</div>

		<hr />

		<div class="feature-section two-col">
			<div class="col">
				<div class="embed-container">
					<blockquote data-secret="OcUe7B6Edh" class="wp-embedded-content"><a href="https://wordpress.org/news/2015/12/clifford/">WordPress 4.4 &ldquo;Clifford&rdquo;</a></blockquote><iframe class="wp-embedded-content" sandbox="allow-scripts" security="restricted" style="display:none;" src="https://wordpress.org/news/2015/12/clifford/embed/#?secret=OcUe7B6Edh" data-secret="OcUe7B6Edh" width="600" height="338" title="<?php esc_attr_e( 'Embedded WordPress Post' ); ?>" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
				</div>
			</div>
			<div class="col">
				<h3><?php _e( 'Embed your WordPress content' ); ?></h3>
				<p><?php _e( 'Now you can embed your posts on other sites, even other WordPress sites. Simply drop a post URL into the editor and see an instant embed preview, complete with the title, excerpt, and featured image if you&#8217;ve set one. We&#8217;ll even include your site icon and links for comments and sharing.' ); ?></p>
			</div>
		</div>

		<hr />

		<div class="feature-section two-col">
			<div class="col">
				<div class="embed-container embed-reverbnation">
					<iframe width="640" height="150" scrolling="no" frameborder="no" src="https://www.reverbnation.com/widget_code/html_widget/artist_607?widget_id=55&amp;pwc[song_ids]=3731874&amp;pwc[size]=small"></iframe>
				</div>
			</div>
			<div class="col">
				<h3><?php _e( 'Even more embed providers' ); ?></h3>
				<p><?php _e( 'In addition to post embeds, WordPress 4.4 also adds support for five new oEmbed providers: Cloudup, Reddit&nbsp;Comments, ReverbNation, Speaker&nbsp;Deck, and VideoPress.' ); ?></p>
			</div>
		</div>

		<hr />

		<div class="changelog">
			<h3><?php _e( 'Under the Hood' ); ?></h3>

			<div class="feature-section under-the-hood one-col">
				<div class="col">
					<h4><?php _e( 'REST API infrastructure' ); ?></h4>
					<div class="two-col-text">
						<p><?php _e( 'Infrastructure for the REST API has been integrated into core, marking a new era in developing with WordPress. The REST API serves to provide developers with a path forward for building and extending RESTful APIs on top of WordPress.' ); ?></p>
						<p><?php
							if ( current_user_can( 'install_plugins' ) ) {
								$url_args = array(
									'tab'       => 'plugin-information',
									'plugin'    => 'rest-api',
									'TB_iframe' => true,
									'width'     => 600,
									'height'    => 550
								);

								$plugin_link = '<a href="' . esc_url( add_query_arg( $url_args, network_admin_url( 'plugin-install.php' ) ) ) . '" class="thickbox">WordPress REST API</a>';
							} else {
								$plugin_link = '<a href="https://wordpress.org/plugins/rest-api">WordPress REST API</a>';
							}

							/* translators: WordPress REST API plugin link */
							printf( __( 'Infrastructure is the first part of a multi-stage rollout for the REST API. Inclusion of core endpoints is targeted for an upcoming release. To get a sneak peek of the core endpoints, and for more information on extending the REST API, check out the official %s plugin.' ), $plugin_link );
						?></p>
					</div>
				</div>
			</div>

			<div class="feature-section under-the-hood three-col">
				<div class="col">
					<h4><?php _e( 'Term meta' ); ?></h4>
					<p><?php
						/* translators: 1: add_term_meta() docs link, 2: get_term_meta() docs link, 3: update_term_meta() docs link */
						printf( __( 'Terms now support metadata, just like posts. See %1$s, %2$s, and %3$s for more information.' ),
							'<a href="https://developer.wordpress.org/reference/functions/add_term_meta"><code>add_term_meta()</code></a>',
							'<a href="https://developer.wordpress.org/reference/functions/get_term_meta"><code>get_term_meta()</code></a>',
							'<a href="https://developer.wordpress.org/reference/functions/update_term_meta"><code>update_term_meta()</code></a>'
				         );
					?></p>
				</div>
				<div class="col">
					<h4><?php _e( 'Comment query improvements' ); ?></h4>
					<p><?php
						/* translators: WP_Comment_Query class name */
						printf( __( 'Comment queries now have cache handling to improve performance. New arguments in %s make crafting robust comment queries simpler.' ), '<code>WP_Comment_Query</code>' );
					?></p>
				</div>
				<div class="col">
					<h4><?php _e( 'Term, comment, and network objects' ); ?></h4>
					<p><?php
						/* translators: 1: WP_Term class name, WP_Comment class name, WP_Network class name */
						printf( __( 'New %1$s, %2$s, and %3$s objects make interacting with terms, comments, and networks more predictable and intuitive in code.' ),
							'<code>WP_Term</code>',
							'<code>WP_Comment</code>',
							'<code>WP_Network</code>'
						);
					?></p>
				</div>
			</div>

			<div class="return-to-dashboard">
				<?php if ( current_user_can( 'update_core' ) && isset( $_GET['updated'] ) ) : ?>
					<a href="<?php echo esc_url( self_admin_url( 'update-core.php' ) ); ?>">
						<?php is_multisite() ? _e( 'Return to Updates' ) : _e( 'Return to Dashboard &rarr; Updates' ); ?>
					</a> |
				<?php endif; ?>
				<a href="<?php echo esc_url( self_admin_url() ); ?>"><?php is_blog_admin() ? _e( 'Go to Dashboard &rarr; Home' ) : _e( 'Go to Dashboard' ); ?></a>
			</div>

		</div>
	</div>
<?php

include( ABSPATH . 'wp-admin/admin-footer.php' );

// These are strings we may use to describe maintenance/security releases, where we aim for no new strings.
return;

__( 'Maintenance Release' );
__( 'Maintenance Releases' );

__( 'Security Release' );
__( 'Security Releases' );

__( 'Maintenance and Security Release' );
__( 'Maintenance and Security Releases' );

/* translators: %s: WordPress version number */
__( '<strong>Version %s</strong> addressed one security issue.' );
/* translators: %s: WordPress version number */
__( '<strong>Version %s</strong> addressed some security issues.' );

/* translators: 1: WordPress version number, 2: plural number of bugs. */
_n_noop( '<strong>Version %1$s</strong> addressed %2$s bug.',
         '<strong>Version %1$s</strong> addressed %2$s bugs.' );

/* translators: 1: WordPress version number, 2: plural number of bugs. Singular security issue. */
_n_noop( '<strong>Version %1$s</strong> addressed a security issue and fixed %2$s bug.',
         '<strong>Version %1$s</strong> addressed a security issue and fixed %2$s bugs.' );

/* translators: 1: WordPress version number, 2: plural number of bugs. More than one security issue. */
_n_noop( '<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bug.',
         '<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bugs.' );

/* translators: %s: Codex URL */
__( 'For more information, see <a href="%s">the release notes</a>.' );
||||||| merged common ancestors
=======
<?php
/**
 * About This Version administration panel.
 *
 * @package WordPress
 * @subpackage Administration
 */

/** WordPress Administration Bootstrap */
require_once( dirname( __FILE__ ) . '/admin.php' );

if ( current_user_can( 'customize' ) ) {
	wp_enqueue_script( 'customize-loader' );
}

$video_url = 'https://videopress.com/embed/J44FHXvg?hd=true';
$locale    = str_replace( '_', '-', get_locale() );
list( $locale ) = explode( '-', $locale );
if ( 'en' !== $locale ) {
	$video_url = add_query_arg( 'defaultLangCode', $locale, $video_url );
}

$title = __( 'About' );

list( $display_version ) = explode( '-', $wp_version );

include( ABSPATH . 'wp-admin/admin-header.php' );
?>
	<div class="wrap about-wrap">
		<h1><?php printf( __( 'Welcome to WordPress&nbsp;%s' ), $display_version ); ?></h1>

		<div class="about-text"><?php printf( __( 'Thank you for updating! WordPress %s streamlines your workflow, whether you&#8217;re writing or building your site.' ), $display_version ); ?></div>
		<div class="wp-badge"><?php printf( __( 'Version %s' ), $display_version ); ?></div>

		<h2 class="nav-tab-wrapper">
			<a href="about.php" class="nav-tab nav-tab-active"><?php _e( 'What&#8217;s New' ); ?></a>
			<a href="credits.php" class="nav-tab"><?php _e( 'Credits' ); ?></a>
			<a href="freedoms.php" class="nav-tab"><?php _e( 'Freedoms' ); ?></a>
		</h2>

		<div class="changelog point-releases">
			<h3><?php echo _n( 'Maintenance and Security Release', 'Maintenance and Security Releases', 1 ); ?></h3>
			<p><?php printf( _n( '<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bug.',
				'<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bugs.', 52 ), '4.4.1', number_format_i18n( 52 ) ); ?>
				<?php printf( __( 'For more information, see <a href="%s">the release notes</a>.' ), 'https://codex.wordpress.org/Version_4.4.1' ); ?>
			</p>
		</div>

		<div class="headline-feature feature-video">
			<iframe width="1050" height="591" src="<?php echo esc_url( $video_url ); ?>" frameborder="0" allowfullscreen></iframe>
			<script src="https://videopress.com/videopress-iframe.js"></script>
		</div>

		<hr>

		<div class="headline-feature feature-section one-col">
			<h2><?php _e( 'Twenty Sixteen' ); ?></h2>
			<div class="media-container">
				<img src="https://s.w.org/images/core/4.4/twenty-sixteen-white-fullsize-2x.png" alt="" srcset="https://s.w.org/images/core/4.4/twenty-sixteen-white-smartphone-1x.png 268w, https://s.w.org/images/core/4.4/twenty-sixteen-white-smartphone-2x.png 536w, https://s.w.org/images/core/4.4/twenty-sixteen-white-tablet-1x.png 558w, https://s.w.org/images/core/4.4/twenty-sixteen-white-desktop-1x.png 840w, https://s.w.org/images/core/4.4/twenty-sixteen-white-fullsize-1x.png 1086w, https://s.w.org/images/core/4.4/twenty-sixteen-white-tablet-2x.png 1116w, https://s.w.org/images/core/4.4/twenty-sixteen-white-desktop-2x.png 1680w, https://s.w.org/images/core/4.4/twenty-sixteen-white-fullsize-2x.png 2172w" sizes="(max-width: 500px) calc((100vw - 40px) * .8), (max-width: 782px) calc((100vw - 70px) * .8), (max-width: 960px) calc((100vw - 116px) * .8), (max-width: 1290px) calc((100vw - 240px) * .8), 840px" />
			</div>
			<div class="two-col">
				<div class="col">
					<h3><?php _e( 'Introducing Twenty Sixteen' ); ?></h3>
					<p><?php _e( 'Our newest default theme, Twenty Sixteen, is a modern take on a classic blog design.' ); ?></p>
					<p><?php _e( 'Twenty Sixteen was built to look great on any device. A fluid grid design, flexible header, fun color schemes, and more, will make your content shine.' ); ?></p>
					<div class="horizontal-image">
						<div class="content">
							<img class="feature-image horizontal-screen" src="https://s.w.org/images/core/4.4/twenty-sixteen-dark-fullsize-2x.png?2" alt=""  srcset="https://s.w.org/images/core/4.4/twenty-sixteen-dark-smartphone-1x.png?2 268w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-smartphone-2x.png?2 535w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-desktop-1x.png?2 558w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-fullsize-1x.png?2 783w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-desktop-2x.png?2 1116w, https://s.w.org/images/core/4.4/twenty-sixteen-dark-fullsize-2x.png?2 1566w" sizes="(max-width: 500px) calc((100vw - 40px) * .8), (max-width: 782px) calc((100vw - 70px) * .8), (max-width: 960px) calc((100vw - 116px) * .5216), (max-width: 1290px) calc((100vw - 240px) * .5216), 548px" />
						</div>
					</div>
				</div>
				<div class="col feature-image">
					<img class="vertical-screen" src="https://s.w.org/images/core/4.4/twenty-sixteen-red-fullsize-2x.png" alt="" srcset="https://s.w.org/images/core/4.4/twenty-sixteen-red-smartphone-1x.png 107w, https://s.w.org/images/core/4.4/twenty-sixteen-red-smartphone-2x.png 214w, https://s.w.org/images/core/4.4/twenty-sixteen-red-desktop-1x.png 252w, https://s.w.org/images/core/4.4/twenty-sixteen-red-fullsize-1x.png 410w, https://s.w.org/images/core/4.4/twenty-sixteen-red-desktop-2x.png 504w, https://s.w.org/images/core/4.4/twenty-sixteen-red-fullsize-2x.png 820w" sizes="(max-width: 500px) calc((100vw - 40px) * .32), (max-width: 782px) calc((100vw - 70px) * .32), (max-width: 960px) calc((100vw - 116px) * .24), (max-width: 1290px) calc((100vw - 240px) * .24), 252px" />
				</div>
			</div>
		</div>

		<hr />

		<div class="feature-section two-col">
			<h2><?php _e( 'Customization Improvements' ); ?></h2>
			<div class="col">
				<img src="https://s.w.org/images/core/4.5/preview-icons-560.png" alt="" srcset="https://s.w.org/images/core/4.5/preview-icons-1000.png 1000w, https://s.w.org/images/core/4.5/preview-icons-800.png 800w, https://s.w.org/images/core/4.5/preview-icons-680.png 680w, https://s.w.org/images/core/4.5/preview-icons-560.png 560w, https://s.w.org/images/core/4.5/preview-icons-400.png 400w, https://s.w.org/images/core/4.5/preview-icons-280.png 280w" sizes="(max-width: 500px) calc(100vw - 40px), (max-width: 781px) calc((100vw - 70px) * .466), (max-width: 959px) calc((100vw - 116px) * .469), (max-width: 1290px) calc((100vw - 240px) * .472), 496px"/>
				<h3><?php _e( 'Live Responsive Previews' ); ?></h3>
				<p><?php _e( 'Make sure your site looks great on all screens!' ); ?>
					<?php
					if ( current_user_can( 'customize' ) ) {
						$customize_url = admin_url( 'customize.php' );
						printf(
							/* translators: %s: URL to customizer */
							__( 'Preview mobile, tablet, and desktop views directly in the <a href="%s" class="load-customize">customizer</a>.' ),
							esc_url( $customize_url )
						);
					} else {
						_e( 'Preview mobile, tablet, and desktop views directly in the customizer.' );
					}
				?></p>
			</div>
			<div class="col">
				<img src="https://s.w.org/images/core/4.5/custom-logos-560.png" alt="" srcset="https://s.w.org/images/core/4.5/custom-logos-1000.png 1000w, https://s.w.org/images/core/4.5/custom-logos-800.png 800w, https://s.w.org/images/core/4.5/custom-logos-680.png 680w, https://s.w.org/images/core/4.5/custom-logos-560.png 560w, https://s.w.org/images/core/4.5/custom-logos-400.png 400w, https://s.w.org/images/core/4.5/custom-logos-280.png 280w" sizes="(max-width: 500px) calc(100vw - 40px), (max-width: 781px) calc((100vw - 70px) * .466), (max-width: 959px) calc((100vw - 116px) * .469), (max-width: 1290px) calc((100vw - 240px) * .472), 496px"/>
				<h3><?php _e( 'Custom Logos' ); ?></h3>
				<p><?php _e( 'Themes can now support logos for your business or brand.' ); ?>
					<?php
					if ( current_theme_supports( 'custom-logo' ) && current_user_can( 'customize' ) ) {
						printf(
							/* translators: %s: URL to Site Identity section of the customizer */
							__( 'Your theme supports custom logos! Try it out right now in the <a href="%s" class="load-customize">Site Identity</a> section of the customizer.' ),
							esc_url( add_query_arg( array( 'autofocus' => array( 'section' => 'title_tagline' ) ), $customize_url ) )
						);
					} else {
						_e( 'The Twenty Fifteen and Twenty Sixteen themes have been updated to support custom logos, which can be found in the Site Identity section of the customizer.' );
					}
					?></p>
			</div>
		</div>

		<hr />

		<div class="changelog">
			<h2><?php _e( 'Under the Hood' ); ?></h2>

			<div class="under-the-hood three-col">
				<div class="col">
					<h3><?php _e( 'Selective Refresh' ); ?></h3>
					<p><?php
						printf(
							/* translators: %s: URL to the development post of the new feature */
							__( 'The customizer now supports a <a href="%s">comprehensive framework</a> for rendering parts of the preview without rewriting your PHP code in JavaScript.' ),
							'https://make.wordpress.org/core/2016/02/16/selective-refresh-in-the-customizer/'
						);
						if ( current_user_can( 'customize' ) && current_user_can( 'edit_theme_options' ) ) {
							if ( current_theme_supports( 'menus' ) && ! current_theme_supports( 'customize-selective-refresh-widgets' ) ) {
								printf(
									/* translators: %s: URL to Menus section of the customizer  */
									' ' . __( 'See it in action with <a href="%s" class="load-customize">Menus</a>.' ),
									esc_url( add_query_arg( array( 'autofocus' => array( 'panel' => 'nav_menus' ) ), $customize_url ) )
								);
							} elseif ( current_theme_supports( 'customize-selective-refresh-widgets' ) ) { // If widgets are supported, menus are also because of the menus widget.
								printf(
									/* translators: 1: URL to Menus section of the customizer, 2: URL to Widgets section of the customizer */
									' ' . __( 'See it in action with <a href="%1$s" class="load-customize">Menus</a> or <a href="%2$s" class="load-customize">Widgets</a>.' ),
									esc_url( add_query_arg( array( 'autofocus' => array( 'panel' => 'nav_menus' ) ), $customize_url ) ),
									esc_url( add_query_arg( array( 'autofocus' => array( 'panel' => 'widgets' ) ), $customize_url ) )
								);
							}
						}
					?></p>
				</div>
				<div class="col">
					<h3><?php _e( 'Smart Image Resizing' ); ?></h3>
					<p><?php
						printf(
							/* translators: %s: URL to the development post of the new feature */
							__( 'Generated images now load up to 50&#37; faster with no noticeable quality loss. <a href="%s">It&#8217;s really cool</a>.' ),
							'https://make.wordpress.org/core/2016/03/12/performance-improvements-for-images-in-wordpress-4-5/'
						);
					?></p>
				</div>
				<div class="col">
					<h3><?php _e( 'JavaScript Library Updates' ); ?></h3>
					<p><?php _e( 'jQuery 1.12.3, jQuery Migrate 1.4.0, Backbone 1.2.3, and Underscore 1.8.3 are bundled.' ); ?></p>
				</div>
			</div>

			<div class="under-the-hood two-col">
				<div class="col">
					<h3><?php _e( 'Script Loader Improvements' ); ?></h3>
					<p><?php
						printf(
							/* translators: %s: wp_add_inline_script() */
							__( 'Better support has been added for script header/footer dependencies. New %s enables adding extra code to registered scripts.' ),
							'<code><a href="https://make.wordpress.org/core/2016/03/08/enhanced-script-loader-in-wordpress-4-5/">wp_add_inline_script()</a></code>'
						);
					?></p>
				</div>
				<div class="col">
					<h3><?php _e( 'Better Embed Templates' ); ?></h3>
					<p><?php
						printf(
							/* translators: %s: URL to the development post of the new feature */
							__( 'Embed templates have been split into parts and can be <a href="%s">directly overridden by themes</a> via the template hierarchy.' ),
							'https://make.wordpress.org/core/2016/03/11/embeds-changes-in-wordpress-4-5/'
						);
					?></p>
				</div>
			</div>

			<div class="return-to-dashboard">
				<?php if ( current_user_can( 'update_core' ) && isset( $_GET['updated'] ) ) : ?>
					<a href="<?php echo esc_url( self_admin_url( 'update-core.php' ) ); ?>">
						<?php is_multisite() ? _e( 'Return to Updates' ) : _e( 'Return to Dashboard &rarr; Updates' ); ?>
					</a> |
				<?php endif; ?>
				<a href="<?php echo esc_url( self_admin_url() ); ?>"><?php is_blog_admin() ? _e( 'Go to Dashboard &rarr; Home' ) : _e( 'Go to Dashboard' ); ?></a>
			</div>

		</div>
	</div>
<?php

include( ABSPATH . 'wp-admin/admin-footer.php' );

// These are strings we may use to describe maintenance/security releases, where we aim for no new strings.
return;

__( 'Maintenance Release' );
__( 'Maintenance Releases' );

__( 'Security Release' );
__( 'Security Releases' );

__( 'Maintenance and Security Release' );
__( 'Maintenance and Security Releases' );

/* translators: %s: WordPress version number */
__( '<strong>Version %s</strong> addressed one security issue.' );
/* translators: %s: WordPress version number */
__( '<strong>Version %s</strong> addressed some security issues.' );

/* translators: 1: WordPress version number, 2: plural number of bugs. */
_n_noop( '<strong>Version %1$s</strong> addressed %2$s bug.',
         '<strong>Version %1$s</strong> addressed %2$s bugs.' );

/* translators: 1: WordPress version number, 2: plural number of bugs. Singular security issue. */
_n_noop( '<strong>Version %1$s</strong> addressed a security issue and fixed %2$s bug.',
         '<strong>Version %1$s</strong> addressed a security issue and fixed %2$s bugs.' );

/* translators: 1: WordPress version number, 2: plural number of bugs. More than one security issue. */
_n_noop( '<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bug.',
         '<strong>Version %1$s</strong> addressed some security issues and fixed %2$s bugs.' );

/* translators: %s: Codex URL */
__( 'For more information, see <a href="%s">the release notes</a>.' );
>>>>>>> 4f209a4e63213fa813cf729c7cd0c1788ee72395
