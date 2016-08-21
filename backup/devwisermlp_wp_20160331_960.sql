# WordPress MySQL database backup
#
# Generated: Thursday 31. March 2016 22:02 UTC
# Hostname: us-cdbr-azure-east-a.cloudapp.net
# Database: `devwisermlp`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_comments`
# --------------------------------------------------------


#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_comments`
#
 
INSERT INTO `wp_comments` VALUES (1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-02-03 01:09:41', '2016-02-03 01:09:41', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);
#
# End of data contents of table `wp_comments`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_links`
# --------------------------------------------------------


#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_options`
# --------------------------------------------------------


#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=25651 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_options`
#
 
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://dev-wiserair-mlp.azurewebsites.net', 'yes'); 
INSERT INTO `wp_options` VALUES (11, 'home', 'http://dev-wiserair-mlp.azurewebsites.net', 'yes'); 
INSERT INTO `wp_options` VALUES (21, 'blogname', 'Wiser Air', 'yes'); 
INSERT INTO `wp_options` VALUES (31, 'blogdescription', '', 'yes'); 
INSERT INTO `wp_options` VALUES (41, 'users_can_register', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (51, 'admin_email', 'brittg88@me.com', 'yes'); 
INSERT INTO `wp_options` VALUES (61, 'start_of_week', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (71, 'use_balanceTags', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (81, 'use_smilies', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (91, 'require_name_email', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (101, 'comments_notify', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (111, 'posts_per_rss', '10', 'yes'); 
INSERT INTO `wp_options` VALUES (121, 'rss_use_excerpt', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (131, 'mailserver_url', 'mail.example.com', 'yes'); 
INSERT INTO `wp_options` VALUES (141, 'mailserver_login', 'login@example.com', 'yes'); 
INSERT INTO `wp_options` VALUES (151, 'mailserver_pass', 'password', 'yes'); 
INSERT INTO `wp_options` VALUES (161, 'mailserver_port', '110', 'yes'); 
INSERT INTO `wp_options` VALUES (171, 'default_category', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (181, 'default_comment_status', 'open', 'yes'); 
INSERT INTO `wp_options` VALUES (191, 'default_ping_status', 'open', 'yes'); 
INSERT INTO `wp_options` VALUES (201, 'default_pingback_flag', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (211, 'posts_per_page', '10', 'yes'); 
INSERT INTO `wp_options` VALUES (221, 'date_format', 'F j, Y', 'yes'); 
INSERT INTO `wp_options` VALUES (231, 'time_format', 'g:i a', 'yes'); 
INSERT INTO `wp_options` VALUES (241, 'links_updated_date_format', 'F j, Y g:i a', 'yes'); 
INSERT INTO `wp_options` VALUES (251, 'comment_moderation', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (261, 'moderation_notify', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (271, 'permalink_structure', '/%postname%/', 'yes'); 
INSERT INTO `wp_options` VALUES (281, 'hack_file', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (291, 'blog_charset', 'UTF-8', 'yes'); 
INSERT INTO `wp_options` VALUES (301, 'moderation_keys', '', 'no'); 
INSERT INTO `wp_options` VALUES (311, 'active_plugins', 'a:19:{i:0;s:25:"accordions/accordions.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:43:"better-font-awesome/better-font-awesome.php";i:3;s:45:"category-wise-search/category-wise-search.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";i:6;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:7;s:46:"jquery-image-lazy-loading/jq_img_lazy_load.php";i:8;s:27:"ninja-forms/ninja-forms.php";i:9;s:37:"plugin-organizer/plugin-organizer.php";i:10;s:25:"relevanssi/relevanssi.php";i:11;s:45:"sendgrid-mailing-list/sendgridMailingList.php";i:12;s:37:"tinymce-advanced/tinymce-advanced.php";i:13;s:25:"widget-shortcode/init.php";i:14;s:38:"wonderplugin-tabs/wonderplugintabs.php";i:15;s:24:"wp-awesome-faq/index.php";i:16;s:29:"wp-db-backup/wp-db-backup.php";i:17;s:31:"wp-migrate-db/wp-migrate-db.php";i:18;s:23:"wp-smushit/wp-smush.php";}', 'yes'); 
INSERT INTO `wp_options` VALUES (321, 'category_base', '', 'yes'); 
INSERT INTO `wp_options` VALUES (331, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'); 
INSERT INTO `wp_options` VALUES (341, 'comment_max_links', '2', 'yes'); 
INSERT INTO `wp_options` VALUES (351, 'gmt_offset', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (361, 'default_email_category', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (371, 'recently_edited', 'a:5:{i:0;s:86:"D:\\home\\site\\wwwroot/wp-content/plugins/jquery-image-lazy-loading/jq_img_lazy_load.php";i:1;s:103:"D:\\home\\site\\wwwroot/wp-content/plugins/sendgrid-email-delivery-simplified/lib/class-sendgrid-tools.php";i:2;s:106:"D:\\home\\site\\wwwroot/wp-content/plugins/sendgrid-email-delivery-simplified/lib/class-sendgrid-settings.php";i:3;s:89:"D:\\home\\site\\wwwroot/wp-content/plugins/sendgrid-email-delivery-simplified/wpsendgrid.php";i:4;s:108:"D:\\home\\site\\wwwroot/wp-content/plugins/sendgrid-email-delivery-simplified/lib/class-sendgrid-statistics.php";}', 'no'); 
INSERT INTO `wp_options` VALUES (381, 'template', '_tk-master', 'yes'); 
INSERT INTO `wp_options` VALUES (391, 'stylesheet', '_tk-master', 'yes'); 
INSERT INTO `wp_options` VALUES (401, 'comment_whitelist', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (411, 'blacklist_keys', '', 'no'); 
INSERT INTO `wp_options` VALUES (421, 'comment_registration', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (431, 'html_type', 'text/html', 'yes'); 
INSERT INTO `wp_options` VALUES (441, 'use_trackback', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (451, 'default_role', 'subscriber', 'yes'); 
INSERT INTO `wp_options` VALUES (461, 'db_version', '35700', 'yes'); 
INSERT INTO `wp_options` VALUES (471, 'uploads_use_yearmonth_folders', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (481, 'upload_path', '', 'yes'); 
INSERT INTO `wp_options` VALUES (491, 'blog_public', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (501, 'default_link_category', '2', 'yes'); 
INSERT INTO `wp_options` VALUES (511, 'show_on_front', 'page', 'yes'); 
INSERT INTO `wp_options` VALUES (521, 'tag_base', '', 'yes'); 
INSERT INTO `wp_options` VALUES (531, 'show_avatars', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (541, 'avatar_rating', 'G', 'yes'); 
INSERT INTO `wp_options` VALUES (551, 'upload_url_path', '', 'yes'); 
INSERT INTO `wp_options` VALUES (561, 'thumbnail_size_w', '150', 'yes'); 
INSERT INTO `wp_options` VALUES (571, 'thumbnail_size_h', '150', 'yes'); 
INSERT INTO `wp_options` VALUES (581, 'thumbnail_crop', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (591, 'medium_size_w', '300', 'yes'); 
INSERT INTO `wp_options` VALUES (601, 'medium_size_h', '300', 'yes'); 
INSERT INTO `wp_options` VALUES (611, 'avatar_default', 'mystery', 'yes'); 
INSERT INTO `wp_options` VALUES (621, 'large_size_w', '1024', 'yes'); 
INSERT INTO `wp_options` VALUES (631, 'large_size_h', '1024', 'yes'); 
INSERT INTO `wp_options` VALUES (641, 'image_default_link_type', 'none', 'yes'); 
INSERT INTO `wp_options` VALUES (651, 'image_default_size', '', 'yes'); 
INSERT INTO `wp_options` VALUES (661, 'image_default_align', '', 'yes'); 
INSERT INTO `wp_options` VALUES (671, 'close_comments_for_old_posts', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (681, 'close_comments_days_old', '14', 'yes'); 
INSERT INTO `wp_options` VALUES (691, 'thread_comments', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (701, 'thread_comments_depth', '5', 'yes'); 
INSERT INTO `wp_options` VALUES (711, 'page_comments', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (721, 'comments_per_page', '50', 'yes'); 
INSERT INTO `wp_options` VALUES (731, 'default_comments_page', 'newest', 'yes'); 
INSERT INTO `wp_options` VALUES (741, 'comment_order', 'asc', 'yes'); 
INSERT INTO `wp_options` VALUES (751, 'sticky_posts', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (761, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:14:"Support Topics";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (771, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:18:"Additional Support";s:4:"text";s:92:"1-(855)-55-WISER<br />\r\nMonday - Friday: 8am-12am EST<br />\r\nSaturday - Sunday: 10am-7pm EST";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (781, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (791, 'uninstall_plugins', 'a:4:{s:38:"wonderplugin-tabs/wonderplugintabs.php";s:27:"wonderplugin_tabs_uninstall";s:25:"relevanssi/relevanssi.php";s:20:"relevanssi_uninstall";s:38:"ninja-forms/deprecated/ninja-forms.php";s:21:"ninja_forms_uninstall";s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";}', 'no'); 
INSERT INTO `wp_options` VALUES (801, 'timezone_string', '', 'yes'); 
INSERT INTO `wp_options` VALUES (811, 'page_for_posts', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (821, 'page_on_front', '1741', 'yes'); 
INSERT INTO `wp_options` VALUES (831, 'default_post_format', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (841, 'link_manager_enabled', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (851, 'finished_splitting_shared_terms', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (861, 'site_icon', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (871, 'medium_large_size_w', '768', 'yes'); 
INSERT INTO `wp_options` VALUES (881, 'medium_large_size_h', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (891, 'initial_db_version', '35700', 'yes'); 
INSERT INTO `wp_options` VALUES (901, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:87:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"edit_plugin_filter";b:1;s:19:"edit_plugin_filters";b:1;s:27:"edit_private_plugin_filters";b:1;s:20:"delete_plugin_filter";b:1;s:21:"delete_plugin_filters";b:1;s:26:"edit_others_plugin_filters";b:1;s:19:"read_plugin_filters";b:1;s:27:"read_private_plugin_filters";b:1;s:22:"publish_plugin_filters";b:1;s:28:"delete_others_plugin_filters";b:1;s:31:"delete_published_plugin_filters";b:1;s:29:"delete_private_plugin_filters";b:1;s:17:"edit_filter_group";b:1;s:20:"manage_filter_groups";b:1;s:17:"edit_plugin_group";b:1;s:18:"edit_plugin_groups";b:1;s:26:"edit_private_plugin_groups";b:1;s:19:"delete_plugin_group";b:1;s:20:"delete_plugin_groups";b:1;s:25:"edit_others_plugin_groups";b:1;s:18:"read_plugin_groups";b:1;s:26:"read_private_plugin_groups";b:1;s:21:"publish_plugin_groups";b:1;s:27:"delete_others_plugin_groups";b:1;s:30:"delete_published_plugin_groups";b:1;s:28:"delete_private_plugin_groups";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'); 
INSERT INTO `wp_options` VALUES (911, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (921, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:23:"Other Helpful Questions";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (931, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (941, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (951, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (961, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:14:"recent-posts-2";i:1;s:12:"categories-2";i:2;s:6:"text-2";}s:16:"footer-sidebar-1";a:1:{i:0;s:10:"nav_menu-2";}s:16:"footer-sidebar-2";a:1:{i:0;s:10:"nav_menu-3";}s:16:"footer-sidebar-3";a:0:{}s:9:"arbitrary";a:1:{i:0;s:22:"category_wise_search-3";}s:13:"array_version";i:3;}', 'yes'); 
INSERT INTO `wp_options` VALUES (981, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (991, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (1001, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (1011, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:"title";s:7:"Company";s:8:"nav_menu";i:101;}i:3;a:2:{s:5:"title";s:18:"Purchase Wiser Air";s:8:"nav_menu";i:251;}s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (1021, 'cron', 'a:9:{i:1459467081;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1459468803;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"3fc52792cef7d884ca5552c0fea1b1af";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:3511;}}}}i:1459472985;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1459473003;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459487785;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459496520;a:1:{s:29:"wp_session_garbage_collection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1459539366;a:1:{s:24:"ninja_forms_daily_action";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1459540457;a:1:{s:35:"custom_login_daily_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'); 
INSERT INTO `wp_options` VALUES (1051, 'nonce_key', 'XZ}*nrP6P}OB&l|`#ovbet`i8*?a%b}Z4Cs.c,I(T:wBU=M6$gX@$EOP)oWWP.E:', 'yes'); 
INSERT INTO `wp_options` VALUES (1061, 'nonce_salt', 'h< ]Fj]p6:YQ5.LT5q}?]JI E8^qj%sF)0hWdcU!{J03NcZ}ufGl&a=QXS=b:q^m', 'yes'); 
INSERT INTO `wp_options` VALUES (1161, 'auth_key', 'sz^,/,FH$}&~}f~V@CI(?=hheg*)R`k83euMFw(0qi$sdCh[m9T>;&!>OC5dzlGN', 'yes'); 
INSERT INTO `wp_options` VALUES (1171, 'auth_salt', 'Iedo[ZyC/KRGELZF@3UPs32oCl{:.76FWn, O9|WXW=kkBrhUBS.WNn+cV1Jx)S.', 'yes'); 
INSERT INTO `wp_options` VALUES (1181, 'logged_in_key', 'O[23>2{9yq?6!zvn(SgWi[]>hoQQlS`!68Z^}`eIA`y mq(^AF&k~Xw$8SGK=SYl', 'yes'); 
INSERT INTO `wp_options` VALUES (1191, 'logged_in_salt', 'Q#Vfw9|j`|q1aAZBJY|$ RS<Jy`@<8FmKzB`c!g[@D60(wllz4l`r!,<R&Z!X(j#', 'yes'); 
INSERT INTO `wp_options` VALUES (1331, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:15:"brittg88@me.com";s:7:"version";s:5:"4.4.2";s:9:"timestamp";i:1454461824;}', 'yes'); 
INSERT INTO `wp_options` VALUES (1431, 'can_compress_scripts', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (1521, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1454462024;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'); 
INSERT INTO `wp_options` VALUES (1531, 'current_theme', '_tk', 'yes'); 
INSERT INTO `wp_options` VALUES (1541, 'theme_mods__tk-master', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:11;}s:16:"header_textcolor";s:5:"blank";}', 'yes'); 
INSERT INTO `wp_options` VALUES (1551, 'theme_switched', '', 'yes'); 
INSERT INTO `wp_options` VALUES (1581, 'recently_activated', 'a:5:{s:35:"backupwordpress/backupwordpress.php";i:1459383186;s:25:"duplicator/duplicator.php";i:1459383172;s:51:"wp-deferred-javascripts/wp-deferred-javascripts.php";i:1459039967;s:27:"wp-super-cache/wp-cache.php";i:1459009850;s:27:"wp-optimize/wp-optimize.php";i:1459009669;}', 'yes'); 
INSERT INTO `wp_options` VALUES (1651, 'wonderplugin_tabs_userrole', 'manage_options', 'yes'); 
INSERT INTO `wp_options` VALUES (1661, 'wonderplugin-tabs-engine', 'WordPress Tabs', 'yes'); 
INSERT INTO `wp_options` VALUES (1791, 'wonderplugin_tabs_information', 's:2141:"O:8:"stdClass":15:{s:6:"author";s:19:"Magic Hills Pty Ltd";s:8:"homepage";s:44:"https://www.wonderplugin.com/wordpress-tabs/";s:4:"name";s:17:"WonderPlugin Tabs";s:8:"requires";s:3:"3.6";s:6:"tested";s:5:"4.4.2";s:7:"version";s:3:"2.7";s:11:"new_version";s:3:"2.7";s:12:"last_updated";s:10:"2016-02-29";s:8:"sections";a:1:{s:10:"change log";s:1591:"<h4>Version 2.7</h4>\n<ul>\n<li>Support embedding a tab group to another tab</li>\n<li>Use WordPress color picker to configure the color options</li>\n</ul>\n<h4>Version 2.6</h4>\n<ul>\n<li>Fix a bug in plugin update</li>\n</ul>\n<h4>Version 2.5</h4>\n<ul>\n<li>Support trash in tab management. The deleted tab group will be moved to the trash in which you can restore or permanently delete it.</li>\n</ul>\n<h4>Version 2.4</h4>\n<ul>\n<li>Add an option to support adding the new tab to the beginning of the list\n</li>\n<li>Add a function to reverse the tab list</li>\n</ul>\n<h4>Version 2.3</h4>\n<ul>\n<li>Add an option to add CSS display:none to the hidden panel\n</li>\n</ul>\n<h4>Version 2.2</h4>\n<ul>\n<li>Fix the bug when there is iframe in the tabs\n</li>\n<li>Fix the bug when the content has the CSS property of visibility:visible\n</li>\n<li>Add an option to display tab buttons in full width on small screen\n</li>\n</ul>\n<h4>Version 2.1</h4>\n<ul>\n<li>Add an option to remove backslashes in JSON string\n</li>\n</ul>\n<h4>Version 2.0</h4>\n<ul>\n<li>Add an option to specify the width of the navigation arrows\n</li>\n</ul>\n<h4>Version 1.9</h4>\n<ul>\n<li>Add an option to trigger window resize event when tabs load\n</li>\n<li>Trigger jQuery event inited.wonderplugintabs, beforeswitch.wonderplugintabs, afterswitch.wonderplugintabs\n</li>\n</ul>\n<h4>Version 1.8</h4>\n<ul>\n<li>Fix bugs\n</li>\n</ul>\n<h4>Version 1.4</h4>\n<ul>\n<li>Add an option to add slider js files to the footer\n</li>\n<li>Add an option to display tabs in text widgets\n</li>\n</ul>\n<h4>Version 1.3</h4>\n<ul>\n<li>Support version check and update\n</li>\n</ul>";}s:3:"key";s:0:"";s:10:"key_status";s:5:"empty";s:10:"key_expire";i:0;s:4:"slug";s:17:"wonderplugin-tabs";s:6:"plugin";s:38:"wonderplugin-tabs/wonderplugintabs.php";s:12:"last_checked";i:1459437437;}";', 'yes'); 
INSERT INTO `wp_options` VALUES (2431, 'dzstaa_options', 'a:2:{s:25:"enable_main_script_always";s:2:"on";s:9:"extra_css";s:0:"";}', 'yes'); 
INSERT INTO `wp_options` VALUES (2441, 'widget_dzstaa_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (2591, 'nf_convert_notifications_complete', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (2601, 'nf_convert_subs_step', 'complete', 'yes'); 
INSERT INTO `wp_options` VALUES (2611, 'nf_upgrade_notice', 'closed', 'yes'); 
INSERT INTO `wp_options` VALUES (2621, 'nf_update_email_settings_complete', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (2631, 'nf_email_fav_updated', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (2641, 'nf_convert_forms_complete', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (2651, 'nf_database_migrations', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (2661, 'ninja_forms_settings', 'a:19:{s:11:"date_format";s:5:"d/m/Y";s:15:"currency_symbol";s:1:"$";s:14:"recaptcha_lang";s:2:"en";s:13:"req_div_label";s:80:"Fields marked with an <span class="ninja-forms-req-symbol">*</span> are required";s:16:"req_field_symbol";s:18:"<strong>*</strong>";s:15:"req_error_label";s:48:"Please ensure all required fields are completed.";s:15:"req_field_error";s:24:"This is a required field";s:10:"spam_error";s:47:"Please answer the anti-spam question correctly.";s:14:"honeypot_error";s:34:"Please leave the spam field blank.";s:18:"timed_submit_error";s:31:"Please wait to submit the form.";s:16:"javascript_error";s:54:"You cannot submit the form without Javascript enabled.";s:13:"invalid_email";s:35:"Please enter a valid email address.";s:13:"process_label";s:10:"Processing";s:17:"password_mismatch";s:36:"The passwords provided do not match.";s:10:"preview_id";i:521;s:7:"version";s:6:"2.9.38";s:19:"fix_form_email_from";i:1;s:18:"fix_field_reply_to";i:1;s:22:"version_2_2_25_rte_fix";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (2731, 'widget_ninja_forms_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (2771, 'nf_admin_notice', 'a:3:{s:16:"one_week_support";a:3:{s:5:"start";s:9:"2/10/2016";s:3:"int";i:7;s:9:"dismissed";i:1;}s:15:"two_week_review";a:3:{s:5:"start";s:9:"2/17/2016";s:3:"int";i:14;s:9:"dismissed";i:1;}s:10:"three_info";a:3:{s:5:"start";s:9:"3/23/2016";s:3:"int";i:0;s:9:"dismissed";i:1;}}', 'yes'); 
INSERT INTO `wp_options` VALUES (3101, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'); 
INSERT INTO `wp_options` VALUES (3251, 'rtbs_is_updated_yn8', 'old_data_recovered', 'yes'); 
INSERT INTO `wp_options` VALUES (3301, 'fruitful_options_plugin', 'a:1:{s:19:"fruitful_post_types";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:10:"attachment";}}', 'yes'); 
INSERT INTO `wp_options` VALUES (3361, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:117:"bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,table,fullscreen,undo,redo,wp_adv";s:9:"toolbar_2";s:121:"formatselect,alignjustify,strikethrough,outdent,indent,pastetext,removeformat,charmap,wp_more,emoticons,forecolor,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:107:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,emoticons,advlist";}', 'yes'); 
INSERT INTO `wp_options` VALUES (3371, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'); 
INSERT INTO `wp_options` VALUES (3381, 'tadv_version', '4000', 'yes'); 
INSERT INTO `wp_options` VALUES (4071, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.4";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1458761146;s:7:"version";s:3:"4.4";s:11:"count_valid";i:0;s:13:"count_invalid";i:2;}}', 'yes'); 
INSERT INTO `wp_options` VALUES (4781, 'acf_version', '4.4.5', 'yes'); 
INSERT INTO `wp_options` VALUES (4871, 'searchandfilter_version', '1.2.9', 'yes'); 
INSERT INTO `wp_options` VALUES (4901, 'widget_category_wise_search', 'a:2:{i:3;a:7:{s:5:"title";s:0:"";s:19:"default_select_text";s:12:"Any Category";s:11:"default_cat";s:2:"81";s:5:"count";i:0;s:14:"show_hierarchy";i:1;s:7:"exclude";s:0:"";s:9:"exclude_t";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (4951, 'relevanssi_title_boost', '5', 'yes'); 
INSERT INTO `wp_options` VALUES (4961, 'relevanssi_comment_boost', '0.75', 'yes'); 
INSERT INTO `wp_options` VALUES (4971, 'relevanssi_admin_search', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (4981, 'relevanssi_highlight', 'strong', 'yes'); 
INSERT INTO `wp_options` VALUES (4991, 'relevanssi_txt_col', '#ff0000', 'yes'); 
INSERT INTO `wp_options` VALUES (5001, 'relevanssi_bg_col', '#ffaf75', 'yes'); 
INSERT INTO `wp_options` VALUES (5011, 'relevanssi_css', 'text-decoration: underline; text-color: #ff0000', 'yes'); 
INSERT INTO `wp_options` VALUES (5021, 'relevanssi_class', 'relevanssi-query-term', 'yes'); 
INSERT INTO `wp_options` VALUES (5031, 'relevanssi_excerpts', 'on', 'yes'); 
INSERT INTO `wp_options` VALUES (5041, 'relevanssi_excerpt_length', '30', 'yes'); 
INSERT INTO `wp_options` VALUES (5051, 'relevanssi_excerpt_type', 'words', 'yes'); 
INSERT INTO `wp_options` VALUES (5061, 'relevanssi_excerpt_allowable_tags', '', 'yes'); 
INSERT INTO `wp_options` VALUES (5071, 'relevanssi_log_queries', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5081, 'relevanssi_log_queries_with_ip', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5091, 'relevanssi_cat', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (5101, 'relevanssi_excat', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (5111, 'relevanssi_extag', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (5121, 'relevanssi_index_fields', '', 'yes'); 
INSERT INTO `wp_options` VALUES (5131, 'relevanssi_exclude_posts', '', 'yes'); 
INSERT INTO `wp_options` VALUES (5141, 'relevanssi_hilite_title', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5151, 'relevanssi_highlight_docs', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5161, 'relevanssi_highlight_comments', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5171, 'relevanssi_index_comments', 'none', 'yes'); 
INSERT INTO `wp_options` VALUES (5181, 'relevanssi_show_matches', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5191, 'relevanssi_show_matches_text', '(Search hits: %body% in body, %title% in title, %category% in categories, %tags% in tags, %taxonomy% in other taxonomies, %comments% in comments. Score: %score%)', 'yes'); 
INSERT INTO `wp_options` VALUES (5201, 'relevanssi_fuzzy', 'sometimes', 'yes'); 
INSERT INTO `wp_options` VALUES (5211, 'relevanssi_indexed', '', 'yes'); 
INSERT INTO `wp_options` VALUES (5221, 'relevanssi_expand_shortcodes', 'on', 'yes'); 
INSERT INTO `wp_options` VALUES (5241, 'relevanssi_index_author', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5251, 'relevanssi_implicit_operator', 'OR', 'yes'); 
INSERT INTO `wp_options` VALUES (5261, 'relevanssi_omit_from_logs', '', 'yes'); 
INSERT INTO `wp_options` VALUES (5271, 'relevanssi_synonyms', '', 'yes'); 
INSERT INTO `wp_options` VALUES (5281, 'relevanssi_index_excerpt', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5291, 'relevanssi_index_limit', '500', 'yes'); 
INSERT INTO `wp_options` VALUES (5301, 'relevanssi_disable_or_fallback', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5311, 'relevanssi_respect_exclude', 'on', 'yes'); 
INSERT INTO `wp_options` VALUES (5321, 'relevanssi_min_word_length', '3', 'yes'); 
INSERT INTO `wp_options` VALUES (5331, 'relevanssi_wpml_only_current', 'off', 'yes'); 
INSERT INTO `wp_options` VALUES (5341, 'relevanssi_word_boundaries', 'on', 'yes'); 
INSERT INTO `wp_options` VALUES (5351, 'relevanssi_default_orderby', 'relevance', 'yes'); 
INSERT INTO `wp_options` VALUES (5361, 'relevanssi_db_version', '5', 'yes'); 
INSERT INTO `wp_options` VALUES (5371, 'relevanssi_post_type_weights', 'a:2:{s:8:"post_tag";s:4:"0.75";s:8:"category";s:4:"0.75";}', 'yes'); 
INSERT INTO `wp_options` VALUES (5381, 'relevanssi_throttle', 'on', 'yes'); 
INSERT INTO `wp_options` VALUES (5391, 'relevanssi_throttle_limit', '500', 'yes'); 
INSERT INTO `wp_options` VALUES (5401, 'relevanssi_index_post_types', 'a:2:{i:0;s:4:"post";i:1;s:4:"page";}', 'yes'); 
INSERT INTO `wp_options` VALUES (5411, 'relevanssi_index_taxonomies_list', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (5421, 'relevanssi_doc_count', '46', 'yes'); 
INSERT INTO `wp_options` VALUES (6041, 'faq_cat_children', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (6421, 'better-font-awesome_options', 'a:4:{s:7:"version";s:6:"latest";s:8:"minified";i:1;s:18:"remove_existing_fa";s:0:"";s:18:"hide_admin_notices";s:0:"";}', 'yes'); 
INSERT INTO `wp_options` VALUES (7461, 'carousel_category_children', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (7471, 'cptbc_settings', 'a:24:{s:8:"interval";i:5000;s:11:"showcaption";s:4:"true";s:12:"showcontrols";s:4:"true";s:10:"customprev";s:0:"";s:10:"customnext";s:0:"";s:7:"orderby";s:10:"menu_order";s:5:"order";s:3:"ASC";s:8:"category";s:0:"";s:12:"before_title";s:4:"<h4>";s:11:"after_title";s:5:"</h4>";s:14:"before_caption";s:3:"<p>";s:13:"after_caption";s:4:"</p>";s:10:"image_size";s:4:"full";s:11:"link_button";s:1:"1";s:16:"link_button_text";s:9:"Read more";s:17:"link_button_class";s:26:"btn btn-default pull-right";s:18:"link_button_before";s:0:"";s:17:"link_button_after";s:0:"";s:2:"id";s:0:"";s:4:"twbs";i:3;s:21:"use_background_images";s:1:"0";s:24:"background_images_height";i:500;s:28:"background_images_style_size";s:5:"cover";s:24:"use_javascript_animation";s:1:"1";}', 'yes'); 
INSERT INTO `wp_options` VALUES (8821, 'sendgrid_api_key', '', 'yes'); 
INSERT INTO `wp_options` VALUES (8831, 'sendgrid_from_name', '', 'yes'); 
INSERT INTO `wp_options` VALUES (8841, 'sendgrid_from_email', '', 'yes'); 
INSERT INTO `wp_options` VALUES (8851, 'sendgrid_reply_to', '', 'yes'); 
INSERT INTO `wp_options` VALUES (8861, 'sendgrid_categories', '', 'yes'); 
INSERT INTO `wp_options` VALUES (8871, 'sendgrid_stats_categories', '', 'yes'); 
INSERT INTO `wp_options` VALUES (8881, 'sendgrid_template', '', 'yes'); 
INSERT INTO `wp_options` VALUES (8891, 'sendgrid_api', 'api', 'yes'); 
INSERT INTO `wp_options` VALUES (8901, 'sendgrid_auth_method', 'credentials', 'yes'); 
INSERT INTO `wp_options` VALUES (8911, 'sendgrid_port', '587', 'yes'); 
INSERT INTO `wp_options` VALUES (8921, 'sendgrid_content_type', 'plaintext', 'yes'); 
INSERT INTO `wp_options` VALUES (9421, 'category_children', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (9893, 'sendgrid_username', 'SEWiserAirMarketing', 'yes'); 
INSERT INTO `wp_options` VALUES (9903, 'sendgrid_pwd', 'SEMarketing1!', 'yes'); 
INSERT INTO `wp_options` VALUES (10501, 'ossdl_off_cdn_url', 'http://dev-wiserair-mlp.azurewebsites.net', 'yes'); 
INSERT INTO `wp_options` VALUES (10511, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'); 
INSERT INTO `wp_options` VALUES (10521, 'ossdl_off_exclude', '.php', 'yes'); 
INSERT INTO `wp_options` VALUES (10531, 'ossdl_cname', '', 'yes'); 
INSERT INTO `wp_options` VALUES (10551, 'wpsupercache_start', '1455728108', 'yes'); 
INSERT INTO `wp_options` VALUES (10561, 'wpsupercache_count', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (10591, 'PO_custom_post_type_support', 'a:10:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:3:"acf";i:3;s:6:"nf_sub";i:4;s:10:"accordions";i:5;s:18:"wpcf7_contact_form";i:6;s:5:"cptbc";i:7;s:15:"utility_options";i:8;s:9:"retailers";i:9;s:3:"faq";}', 'yes'); 
INSERT INTO `wp_options` VALUES (10601, 'PO_fuzzy_url_matching', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (10611, 'PO_version_num', '6.0.4', 'yes'); 
INSERT INTO `wp_options` VALUES (10621, 'PO_mobile_user_agents', 'a:20:{i:0;s:6:"mobile";i:1;s:4:"bolt";i:2;s:4:"palm";i:3;s:8:"series60";i:4;s:7:"symbian";i:5;s:6:"fennec";i:6;s:5:"nokia";i:7;s:6:"kindle";i:8;s:6:"minimo";i:9;s:8:"netfront";i:10;s:10:"opera mini";i:11;s:10:"opera mobi";i:12;s:12:"semc-browser";i:13;s:7:"skyfire";i:14;s:8:"teashark";i:15;s:5:"uzard";i:16;s:7:"android";i:17;s:10:"blackberry";i:18;s:6:"iphone";i:19;s:4:"ipad";}', 'yes'); 
INSERT INTO `wp_options` VALUES (10651, 'PO_group_members_corrected', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (12281, 'SGML_database_id', '', 'yes'); 
INSERT INTO `wp_options` VALUES (12291, 'SGML_contact_lists', '', 'yes'); 
INSERT INTO `wp_options` VALUES (12301, 'SGML_api_username', 'SEWiserAirMarketing', 'yes'); 
INSERT INTO `wp_options` VALUES (12311, 'SGML_api_password', 'SEMarketing1!', 'yes'); 
INSERT INTO `wp_options` VALUES (12321, 'SGML_endpoint', '', 'yes'); 
INSERT INTO `wp_options` VALUES (12331, 'SGML_default_list', '', 'yes'); 
INSERT INTO `wp_options` VALUES (12341, 'SGML_success_message', 'Thank you for signing up!', 'yes'); 
INSERT INTO `wp_options` VALUES (12381, 'supercache_stats', 'a:3:{s:9:"generated";i:1458061390;s:10:"supercache";a:5:{s:7:"expired";i:0;s:12:"expired_list";a:0:{}s:6:"cached";i:0;s:11:"cached_list";a:0:{}s:2:"ts";i:1458061390;}s:7:"wpcache";a:3:{s:6:"cached";i:0;s:7:"expired";i:0;s:5:"fsize";s:3:"0KB";}}', 'yes'); 
INSERT INTO `wp_options` VALUES (13211, 'rewrite_rules', 'a:253:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:8:"cptbc/?$";s:25:"index.php?post_type=cptbc";s:38:"cptbc/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=cptbc&feed=$matches[1]";s:33:"cptbc/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=cptbc&feed=$matches[1]";s:25:"cptbc/page/([0-9]{1,})/?$";s:43:"index.php?post_type=cptbc&paged=$matches[1]";s:6:"faq/?$";s:23:"index.php?post_type=faq";s:36:"faq/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:31:"faq/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?post_type=faq&feed=$matches[1]";s:23:"faq/page/([0-9]{1,})/?$";s:41:"index.php?post_type=faq&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:58:"carousel_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?carousel_category=$matches[1]&feed=$matches[2]";s:53:"carousel_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?carousel_category=$matches[1]&feed=$matches[2]";s:46:"carousel_category/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?carousel_category=$matches[1]&paged=$matches[2]";s:28:"carousel_category/([^/]+)/?$";s:39:"index.php?carousel_category=$matches[1]";s:34:"nf_sub/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"nf_sub/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"nf_sub/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"nf_sub/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"nf_sub/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"nf_sub/([^/]+)/embed/?$";s:39:"index.php?nf_sub=$matches[1]&embed=true";s:27:"nf_sub/([^/]+)/trackback/?$";s:33:"index.php?nf_sub=$matches[1]&tb=1";s:35:"nf_sub/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&paged=$matches[2]";s:42:"nf_sub/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?nf_sub=$matches[1]&cpage=$matches[2]";s:31:"nf_sub/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?nf_sub=$matches[1]&page=$matches[2]";s:23:"nf_sub/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"nf_sub/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"nf_sub/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"nf_sub/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"nf_sub/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"accordions/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"accordions/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"accordions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"accordions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"accordions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"accordions/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"accordions/([^/]+)/embed/?$";s:43:"index.php?accordions=$matches[1]&embed=true";s:31:"accordions/([^/]+)/trackback/?$";s:37:"index.php?accordions=$matches[1]&tb=1";s:39:"accordions/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?accordions=$matches[1]&paged=$matches[2]";s:46:"accordions/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?accordions=$matches[1]&cpage=$matches[2]";s:35:"accordions/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?accordions=$matches[1]&page=$matches[2]";s:27:"accordions/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"accordions/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"accordions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"accordions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"accordions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"accordions/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"cptbc/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"cptbc/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"cptbc/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"cptbc/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"cptbc/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"cptbc/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"cptbc/([^/]+)/embed/?$";s:38:"index.php?cptbc=$matches[1]&embed=true";s:26:"cptbc/([^/]+)/trackback/?$";s:32:"index.php?cptbc=$matches[1]&tb=1";s:46:"cptbc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?cptbc=$matches[1]&feed=$matches[2]";s:41:"cptbc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?cptbc=$matches[1]&feed=$matches[2]";s:34:"cptbc/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?cptbc=$matches[1]&paged=$matches[2]";s:41:"cptbc/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?cptbc=$matches[1]&cpage=$matches[2]";s:30:"cptbc/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?cptbc=$matches[1]&page=$matches[2]";s:22:"cptbc/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"cptbc/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"cptbc/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"cptbc/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"cptbc/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"cptbc/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"utility options/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"utility options/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"utility options/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"utility options/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"utility options/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"utility options/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"utility options/([^/]+)/embed/?$";s:47:"index.php?utilityoptions=$matches[1]&embed=true";s:36:"utility options/([^/]+)/trackback/?$";s:41:"index.php?utilityoptions=$matches[1]&tb=1";s:44:"utility options/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?utilityoptions=$matches[1]&paged=$matches[2]";s:51:"utility options/([^/]+)/comment-page-([0-9]{1,})/?$";s:54:"index.php?utilityoptions=$matches[1]&cpage=$matches[2]";s:40:"utility options/([^/]+)(?:/([0-9]+))?/?$";s:53:"index.php?utilityoptions=$matches[1]&page=$matches[2]";s:32:"utility options/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"utility options/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"utility options/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"utility options/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"utility options/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"utility options/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"utility_options/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"utility_options/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"utility_options/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"utility_options/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"utility_options/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"utility_options/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"utility_options/([^/]+)/embed/?$";s:48:"index.php?utility_options=$matches[1]&embed=true";s:36:"utility_options/([^/]+)/trackback/?$";s:42:"index.php?utility_options=$matches[1]&tb=1";s:44:"utility_options/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?utility_options=$matches[1]&paged=$matches[2]";s:51:"utility_options/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?utility_options=$matches[1]&cpage=$matches[2]";s:40:"utility_options/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?utility_options=$matches[1]&page=$matches[2]";s:32:"utility_options/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"utility_options/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"utility_options/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"utility_options/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"utility_options/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"utility_options/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"retailers/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"retailers/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"retailers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"retailers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"retailers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"retailers/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"retailers/([^/]+)/embed/?$";s:42:"index.php?retailers=$matches[1]&embed=true";s:30:"retailers/([^/]+)/trackback/?$";s:36:"index.php?retailers=$matches[1]&tb=1";s:38:"retailers/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?retailers=$matches[1]&paged=$matches[2]";s:45:"retailers/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?retailers=$matches[1]&cpage=$matches[2]";s:34:"retailers/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?retailers=$matches[1]&page=$matches[2]";s:26:"retailers/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"retailers/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"retailers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"retailers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"retailers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"retailers/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"plugin_filter/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"plugin_filter/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"plugin_filter/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"plugin_filter/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"plugin_filter/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"plugin_filter/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"plugin_filter/([^/]+)/embed/?$";s:46:"index.php?plugin_filter=$matches[1]&embed=true";s:34:"plugin_filter/([^/]+)/trackback/?$";s:40:"index.php?plugin_filter=$matches[1]&tb=1";s:42:"plugin_filter/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?plugin_filter=$matches[1]&paged=$matches[2]";s:49:"plugin_filter/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?plugin_filter=$matches[1]&cpage=$matches[2]";s:38:"plugin_filter/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?plugin_filter=$matches[1]&page=$matches[2]";s:30:"plugin_filter/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"plugin_filter/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"plugin_filter/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"plugin_filter/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"plugin_filter/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"plugin_filter/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"plugin_group/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"plugin_group/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"plugin_group/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"plugin_group/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"plugin_group/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"plugin_group/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"plugin_group/([^/]+)/embed/?$";s:45:"index.php?plugin_group=$matches[1]&embed=true";s:33:"plugin_group/([^/]+)/trackback/?$";s:39:"index.php?plugin_group=$matches[1]&tb=1";s:41:"plugin_group/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?plugin_group=$matches[1]&paged=$matches[2]";s:48:"plugin_group/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?plugin_group=$matches[1]&cpage=$matches[2]";s:37:"plugin_group/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?plugin_group=$matches[1]&page=$matches[2]";s:29:"plugin_group/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"plugin_group/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"plugin_group/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"plugin_group/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"plugin_group/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"plugin_group/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"filter_group/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?filter_group=$matches[1]&feed=$matches[2]";s:48:"filter_group/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?filter_group=$matches[1]&feed=$matches[2]";s:41:"filter_group/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?filter_group=$matches[1]&paged=$matches[2]";s:23:"filter_group/([^/]+)/?$";s:34:"index.php?filter_group=$matches[1]";s:31:"faq/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"faq/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"faq/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:20:"faq/([^/]+)/embed/?$";s:36:"index.php?faq=$matches[1]&embed=true";s:24:"faq/([^/]+)/trackback/?$";s:30:"index.php?faq=$matches[1]&tb=1";s:44:"faq/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:39:"faq/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?faq=$matches[1]&feed=$matches[2]";s:32:"faq/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&paged=$matches[2]";s:39:"faq/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?faq=$matches[1]&cpage=$matches[2]";s:28:"faq/([^/]+)(?:/([0-9]+))?/?$";s:42:"index.php?faq=$matches[1]&page=$matches[2]";s:20:"faq/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"faq/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:"faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"faq/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:"faq_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?faq_cat=$matches[1]&feed=$matches[2]";s:43:"faq_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?faq_cat=$matches[1]&feed=$matches[2]";s:36:"faq_cat/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?faq_cat=$matches[1]&paged=$matches[2]";s:18:"faq_cat/([^/]+)/?$";s:29:"index.php?faq_cat=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:41:"index.php?&page_id=1741&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'); 
INSERT INTO `wp_options` VALUES (15201, 'cptui_post_types', 'a:2:{s:15:"utility_options";a:27:{s:4:"name";s:15:"utility_options";s:5:"label";s:9:"Utilities";s:14:"singular_label";s:7:"Utility";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}s:9:"retailers";a:27:{s:4:"name";s:9:"retailers";s:5:"label";s:9:"Retailers";s:14:"singular_label";s:0:"";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:2:{i:0;s:5:"title";i:1;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:13:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:4:"edit";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:4:"view";s:0:"";s:9:"view_item";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:6:"parent";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'); 
INSERT INTO `wp_options` VALUES (15281, 'custom_login_tracking_last_send', '1457293992', 'yes'); 
INSERT INTO `wp_options` VALUES (15361, 'custom_login_design', 'a:51:{s:21:"html_background_color";s:0:"";s:30:"html_background_color_checkbox";s:3:"off";s:29:"html_background_color_opacity";s:1:"1";s:19:"html_background_url";s:89:"http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/1.4.0_background.jpg";s:24:"html_background_position";s:13:"center center";s:22:"html_background_repeat";s:9:"no-repeat";s:20:"html_background_size";s:5:"cover";s:12:"hide_wp_logo";s:3:"off";s:19:"logo_background_url";s:0:"";s:26:"logo_background_size_width";s:0:"";s:27:"logo_background_size_height";s:0:"";s:24:"logo_background_position";s:8:"left top";s:22:"logo_background_repeat";s:9:"no-repeat";s:20:"logo_background_size";s:4:"none";s:25:"logo_force_form_max_width";s:3:"off";s:16:"login_form_width";s:3:"320";s:27:"login_form_background_color";s:0:"";s:36:"login_form_background_color_checkbox";s:3:"off";s:35:"login_form_background_color_opacity";s:1:"1";s:25:"login_form_background_url";s:0:"";s:30:"login_form_background_position";s:8:"left top";s:28:"login_form_background_repeat";s:9:"no-repeat";s:26:"login_form_background_size";s:4:"none";s:24:"login_form_border_radius";s:0:"";s:22:"login_form_border_size";s:0:"";s:23:"login_form_border_color";s:0:"";s:32:"login_form_border_color_checkbox";s:3:"off";s:31:"login_form_border_color_opacity";s:1:"1";s:21:"login_form_box_shadow";s:12:"5px 5px 10px";s:27:"login_form_box_shadow_color";s:0:"";s:36:"login_form_box_shadow_color_checkbox";s:3:"off";s:35:"login_form_box_shadow_color_opacity";s:1:"1";s:11:"label_color";s:0:"";s:20:"label_color_checkbox";s:3:"off";s:19:"label_color_opacity";s:1:"1";s:9:"nav_color";s:0:"";s:18:"nav_color_checkbox";s:3:"off";s:17:"nav_color_opacity";s:1:"1";s:21:"nav_text_shadow_color";s:0:"";s:30:"nav_text_shadow_color_checkbox";s:3:"off";s:29:"nav_text_shadow_color_opacity";s:1:"1";s:15:"nav_hover_color";s:0:"";s:24:"nav_hover_color_checkbox";s:3:"off";s:23:"nav_hover_color_opacity";s:1:"1";s:27:"nav_text_shadow_hover_color";s:0:"";s:36:"nav_text_shadow_hover_color_checkbox";s:3:"off";s:35:"nav_text_shadow_hover_color_opacity";s:1:"1";s:10:"custom_css";s:0:"";s:11:"animate.css";s:3:"off";s:11:"custom_html";s:0:"";s:13:"custom_jquery";s:0:"";}', 'yes'); 
INSERT INTO `wp_options` VALUES (16821, 'PO_ignore_protocol', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (16831, 'PO_ignore_arguments', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (16841, 'PO_order_access_net_admin', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (16851, 'PO_auto_trailing_slash', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (16861, 'PO_disable_plugins', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (16871, 'PO_disable_mobile_plugins', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (16881, 'PO_admin_disable_plugins', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (16891, 'wpsupercache_gc_time', '1459009648', 'yes'); 
INSERT INTO `wp_options` VALUES (17031, 'wdev-frash', 'a:3:{s:7:"plugins";a:1:{s:23:"wp-smushit/wp-smush.php";i:1457724258;}s:5:"queue";a:0:{}s:4:"done";a:2:{i:0;a:6:{s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:4:"type";s:5:"email";s:7:"show_at";i:1457724258;s:5:"state";s:2:"ok";s:4:"hash";s:32:"fc50097023d0d34c5a66f6cddcf77694";s:10:"handled_at";i:1457724740;}i:1;a:6:{s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:4:"type";s:4:"rate";s:7:"show_at";i:1458329058;s:5:"state";s:6:"ignore";s:4:"hash";s:32:"fc50097023d0d34c5a66f6cddcf77694";s:10:"handled_at";i:1458762581;}}}', 'yes'); 
INSERT INTO `wp_options` VALUES (17161, 'wp-smush-auto', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (17171, 'wp-smush-original', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (17181, 'wp-smush-lossy', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (17191, 'wp-smush-backup', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (17201, 'wp-smush-nextgen', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (17671, 'dismiss_smush_upgrade', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (20031, 'jetpack_file_data', 'a:1:{s:5:"3.9.4";a:49:{s:32:"31e5b9ae08b62c2b0cd8a7792242298b";a:14:{s:4:"name";s:20:"Spelling and Grammar";s:11:"description";s:89:"Check your spelling, style, and grammar with the After the Deadline proofreading service.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"6";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:115:"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche";}s:32:"3f41b2d629265b5de8108b463abbe8e2";a:14:{s:4:"name";s:8:"Carousel";s:11:"description";s:63:"Transform standard image galleries into full-screen slideshows.";s:14:"jumpstart_desc";s:79:"Brings your photos and images to life as full-size, easily navigable galleries.";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:9:"Jumpstart";s:25:"additional_search_queries";s:80:"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image";}s:32:"c6ebb418dde302de09600a6025370583";a:14:{s:4:"name";s:8:"Comments";s:11:"description";s:79:"Let readers comment with WordPress.com, Twitter, Facebook, or Google+ accounts.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:53:"comments, comment, facebook, twitter, google+, social";}s:32:"836f9485669e1bbb02920cb474730df0";a:14:{s:4:"name";s:12:"Contact Form";s:11:"description";s:44:"Insert a contact form anywhere on your site.";s:14:"jumpstart_desc";s:111:"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:9:"Jumpstart";s:25:"additional_search_queries";s:44:"contact, form, grunion, feedback, submission";}s:32:"ea3970eebf8aac55fc3eca5dca0e0157";a:14:{s:4:"name";s:20:"Custom Content Types";s:11:"description";s:92:"Organize and display different types of content on your site, separate from posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:72:"cpt, custom post types, portfolio, portfolios, testimonial, testimonials";}s:32:"d2bb05ccad3d8789df40ca3abb97336c";a:14:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:57:"Customize your site’s CSS without modifying your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:108:"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet";}s:32:"a2064eec5b9c7e0d816af71dee7a715f";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"53a4ec755022ef3953699734c343da02";a:14:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:27:"Increase reach and traffic.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Traffic";s:25:"additional_search_queries";s:54:"google, seo, firehose, search, broadcast, broadcasting";}s:32:"72fecb67ee6704ba0a33e0225316ad06";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"d56e2886185a9eace719cc57d46770df";a:14:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:14:"jumpstart_desc";s:131:"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:9:"Jumpstart";s:25:"additional_search_queries";s:20:"gravatar, hovercards";}s:32:"e391e760617bd0e0736550e34a73d7fe";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:8:"2.0.3 ??";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"2e345370766346c616b3c5046e817720";a:14:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:46:"Add support for infinite scroll to your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:33:"scroll, infinite, infinite scroll";}s:32:"bd69edbf134de5fae8fdcf2e70a45b56";a:14:{s:4:"name";s:8:"JSON API";s:11:"description";s:69:"Allow applications to securely access your content through the cloud.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:50:"api, rest, develop, developers, json, klout, oauth";}s:32:"8110b7a4423aaa619dfa46b8843e10d1";a:14:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:85:"Use LaTeX markup language in posts and pages for complex equations and other geekery.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:47:"latex, math, equation, equations, formula, code";}s:32:"fd7e85d3b4887fa6b6f997d6592c1f33";a:14:{s:4:"name";s:5:"Likes";s:11:"description";s:70:"Give visitors an easy way to show their appreciation for your content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:26:"like, likes, wordpress.com";}s:32:"c5dfef41fad5bcdcaae8e315e5cfc420";a:14:{s:4:"name";s:6:"Manage";s:11:"description";s:76:"Manage all your sites from a centralized place, https://wordpress.com/sites.";s:14:"jumpstart_desc";s:151:"Helps you remotely manage plugins, turn on automated updates, and more from <a href="https://wordpress.com/plugins/" target="_blank">wordpress.com</a>.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"3";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:35:"Centralized Management, Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";s:25:"additional_search_queries";s:26:"manage, management, remote";}s:32:"fd6dc399b92bce76013427e3107c314f";a:14:{s:4:"name";s:8:"Markdown";s:11:"description";s:51:"Write posts or pages in plain-text Markdown syntax.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:12:"md, markdown";}s:32:"c49a35b6482b0426cb07ad28ecf5d7df";a:14:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:64:"Optimize your site with a mobile-friendly theme for smartphones.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:11:"Recommended";s:25:"additional_search_queries";s:24:"mobile, theme, minileven";}s:32:"b42e38f6fafd2e4104ebe5bf39b4be47";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"771cfeeba0d3d23ec344d5e781fb0ae2";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"54f0661d27c814fc8bde39580181d939";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"46c4c413b5c72bbd3c3dbd14ff8f8adc";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"9ea52fa25783e5ceeb6bfaed3268e64e";a:14:{s:4:"name";s:7:"Monitor";s:11:"description";s:25:"Reports on site downtime.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:33:"Recommended, Performance-Security";s:25:"additional_search_queries";s:37:"monitor, uptime, downtime, monitoring";}s:32:"cfcaafd0fcad087899d715e0b877474d";a:14:{s:4:"name";s:13:"Notifications";s:11:"description";s:84:"Receive notification of site activity via the admin toolbar and your Mobile devices.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:62:"notification, notifications, toolbar, adminbar, push, comments";}s:32:"0d18bfa69bec61550c1d813ce64149b0";a:14:{s:4:"name";s:10:"Omnisearch";s:11:"description";s:66:"Search your entire database from a single field in your Dashboard.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"16";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:6:"search";}s:32:"3f0a11e23118f0788d424b646a6d465f";a:14:{s:4:"name";s:6:"Photon";s:11:"description";s:27:"Speed up images and photos.";s:14:"jumpstart_desc";s:141:"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:44:"Recommended, Jumpstart, Performance-Security";s:25:"additional_search_queries";s:38:"photon, image, cdn, performance, speed";}s:32:"e37cfbcb72323fb1fe8255a2edb4d738";a:14:{s:4:"name";s:13:"Post by Email";s:11:"description";s:58:"Publish posts by email, using any device and email client.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:20:"post by email, email";}s:32:"728290d131a480bfe7b9e405d7cd925f";a:14:{s:4:"name";s:7:"Protect";s:11:"description";s:28:"Prevent brute force attacks.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:33:"Recommended, Performance-Security";s:25:"additional_search_queries";s:65:"security, secure, protection, botnet, brute force, protect, login";}s:32:"f9ce784babbbf4dcca99b8cd2ceb420c";a:14:{s:4:"name";s:9:"Publicize";s:11:"description";s:30:"Automatically promote content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:20:"Recommended, Traffic";s:25:"additional_search_queries";s:107:"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing";}s:32:"052c03877dd3d296a71531cb07ad939a";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"52edecb2a75222e75b2dce4356a4efce";a:14:{s:4:"name";s:13:"Related Posts";s:11:"description";s:24:"Display similar content.";s:14:"jumpstart_desc";s:113:"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:31:"Recommended, Jumpstart, Traffic";s:25:"additional_search_queries";s:22:"related, related posts";}s:32:"8b059cb50a66b717f1ec842e736b858c";a:14:{s:4:"name";s:7:"Sharing";s:11:"description";s:32:"Visitors can share your content.";s:14:"jumpstart_desc";s:116:"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:31:"Recommended, Jumpstart, Traffic";s:25:"additional_search_queries";s:141:"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr";}s:32:"a6d2394329871857401255533a9873f7";a:14:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:77:"Embed content from YouTube, Vimeo, SlideShare, and more, no coding necessary.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:251:"shortcodes, shortcode, embeds, media, bandcamp, blip.tv, dailymotion, digg, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube";}s:32:"21496e2897ea5f81605e2f2ac3beb921";a:14:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:56:"Enable WP.me-powered shortlinks for all posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:17:"shortlinks, wp.me";}s:32:"e2a54a5d7879a4162709e6ffb540dd08";a:14:{s:4:"name";s:9:"Site Icon";s:11:"description";s:29:"Add a site icon to your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:5:"Other";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:24:"favicon, icon, site icon";}s:32:"f5c537bc304f55b29c1a87e30be0cd24";a:14:{s:4:"name";s:8:"Sitemaps";s:11:"description";s:75:"Creates sitemaps to allow your site to be easily indexed by search engines.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:20:"Recommended, Traffic";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:39:"sitemap, traffic, search, site map, seo";}s:32:"59a23643437358a9b557f1d1e20ab040";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"6a90f97c3194cfca5671728eaaeaf15e";a:14:{s:4:"name";s:14:"Single Sign On";s:11:"description";s:27:"Secure user authentication.";s:14:"jumpstart_desc";s:98:"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:31:"Jumpstart, Performance-Security";s:25:"additional_search_queries";s:34:"sso, single sign on, login, log in";}s:32:"b65604e920392e2f7134b646760b75e8";a:14:{s:4:"name";s:10:"Site Stats";s:11:"description";s:35:"Collect traffic stats and insights.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:23:"Site Stats, Recommended";s:7:"feature";s:20:"Recommended, Traffic";s:25:"additional_search_queries";s:54:"statistics, tracking, analytics, views, traffic, stats";}s:32:"23a586dd7ead00e69ec53eb32ef740e4";a:14:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:88:"Allow users to subscribe to your posts and comments and receive notifications via email.";s:14:"jumpstart_desc";s:126:"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:9:"Jumpstart";s:25:"additional_search_queries";s:74:"subscriptions, subscription, email, follow, followers, subscribers, signup";}s:32:"1d978b8d84d2f378fe1a702a67633b6d";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"b3b983461d7f3d27322a3551ed8a9405";a:14:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:73:"Display your image galleries in a variety of sleek, graphic arrangements.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:43:"gallery, tiles, tiled, grid, mosaic, images";}s:32:"d924e5b05722b0e104448543598f54c0";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}s:32:"36741583b10c521997e563ad8e1e8b77";a:14:{s:4:"name";s:12:"Data Backups";s:11:"description";s:27:"Daily or real-time backups.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:20:"Performance-Security";s:25:"additional_search_queries";s:28:"vaultpress, backup, security";}s:32:"2b9b44f09b5459617d68dd82ee17002a";a:14:{s:4:"name";s:17:"Site Verification";s:11:"description";s:77:"Verify your site or domain with Google Search Console, Pinterest, and others.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:56:"webmaster, seo, google, bing, pinterest, search, console";}s:32:"5ab4c0db7c42e10e646342da0274c491";a:14:{s:4:"name";s:10:"VideoPress";s:11:"description";s:68:"Upload and embed videos right on your site. (Subscription required.)";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:25:"video, videos, videopress";}s:32:"60a1d3aa38bc0fe1039e59dd60888543";a:14:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:57:"Specify which widgets appear on which pages of your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:54:"widget visibility, logic, conditional, widgets, widget";}s:32:"174ed3416476c2cb9ff5b0f671280b15";a:14:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:79:"Add images, Twitter streams, your site’s RSS links, and more to your sidebar.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:65:"widget, widgets, facebook, gallery, twitter, gravatar, image, rss";}s:32:"28b931a1db19bd24869bd54b14e733d5";a:14:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";}}}', 'yes'); 
INSERT INTO `wp_options` VALUES (20041, 'jetpack_available_modules', 'a:1:{s:5:"3.9.4";a:37:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:10:"omnisearch";s:3:"2.3";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:13:"related-posts";s:3:"2.9";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:9:"site-icon";s:3:"3.2";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";}}', 'yes'); 
INSERT INTO `wp_options` VALUES (20071, 'jetpack_security_report', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (22081, 'jetpack_unique_connection', 'a:1:{s:12:"disconnected";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (22261, 'ninja_forms_load_deprecated', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (22361, '_transient_timeout_feed_696c5cae47c2819ede33327da4ef81e5', '1458804989', 'no'); 
INSERT INTO `wp_options` VALUES (22371, '_transient_feed_696c5cae47c2819ede33327da4ef81e5', 'a:4:{s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"feed";a:1:{i:0;a:6:{s:4:"data";s:21:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"lang";s:2:"en";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-Optimize";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:6:"Jekyll";s:7:"attribs";a:1:{s:0:"";a:1:{s:3:"uri";s:33:"https://github.com/mojombo/jekyll";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:4:"self";s:4:"type";s:20:"application/atom+xml";s:4:"href";s:43:"http://wp-optimize.ruhanirabin.com/feed.xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:9:"alternate";s:4:"type";s:9:"text/html";s:4:"href";s:35:"http://wp-optimize.ruhanirabin.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-06-23T15:11:53+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:35:"http://wp-optimize.ruhanirabin.com/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:10:"\n  \n  \n  \n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:3:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:12:"Ruhani Rabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:35:"http://wp-optimize.ruhanirabin.com/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:5:"email";a:1:{i:0;a:5:{s:4:"data";s:13:"get@email.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}}s:5:"entry";a:4:{i:0;a:6:{s:4:"data";s:25:"\n  \n  \n  \n  \n  \n  \n  \n  \n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"What\'s new in release v.1.8.9.10";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:9:"alternate";s:4:"type";s:9:"text/html";s:4:"href";s:79:"http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9-dot-10/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9-dot-10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:40:"2015-05-13 23:06:06 +0000T00:00:00-00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-05-12T00:00:00+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:18:"\n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:3:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:12:"Ruhani Rabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:34:"http://wp-optimize.ruhanirabin.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:5:"email";a:1:{i:0;a:5:{s:4:"data";s:13:"get@email.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:847:"<p>There are a lot of stuff that has been re-coded in this release. </p>\n\n<h3 id="most-notable-changes-are">Most notable changes are:</h3>\n\n<h2 id="section">1.8.9.10</h2>\n<ol>\n  <li>Security Patch - Update your plugin.</li>\n  <li>Security Patch provided by Dion at WordPress.org and Security report provided by http://planetzuda.com .</li>\n  <li>Language files update</li>\n</ol>\n\n<h2 id="section-1">1.8.9.8</h2>\n<ol>\n  <li>Daily Schedule Option Added</li>\n  <li>Email notification on automatic optimization, default email is admin email address. You can change this in settings</li>\n</ol>\n\n  <p><a href="http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9-dot-10/">What\'s new in release v.1.8.9.10</a> was originally published by Ruhani Rabin at <a href="http://wp-optimize.ruhanirabin.com">WP-Optimize</a> on May 12, 2015.</p>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}i:1;a:6:{s:4:"data";s:22:"\n  \n  \n  \n  \n  \n  \n  \n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"URGENT BugFix: 1.8.9.7";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:9:"alternate";s:4:"type";s:9:"text/html";s:4:"href";s:57:"http://wp-optimize.ruhanirabin.com/urgent-bugfix-1-8-9-7/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:56:"http://wp-optimize.ruhanirabin.com/urgent-bugfix-1-8-9-7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-08T10:19:26+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-08T10:19:26+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:18:"\n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:3:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:12:"Ruhani Rabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:34:"http://wp-optimize.ruhanirabin.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:5:"email";a:1:{i:0;a:5:{s:4:"data";s:13:"get@email.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:1496:"<p>Just after releasing the previous update with new changes; I have noticed that the <strong>Disable/Enable trackback/comments buttons</strong> on the setting screen causing the <strong>AUTO SCHEDULE</strong> option to reset itself. </p>\n\n<p>In fact, executing any of the <strong>Disable/Enable trackback/comments buttons</strong> will disable the <strong>AUTO SCHEDULE</strong> option, ==you will still be able to enable it by clicking the checkbox==. </p>\n\n<p><img src="http://wp-optimize.ruhanirabin.com/images/enable-disable-trackback-comments-update2.png" alt="Image" /></p>\n\n<p><em>I’ve made the _necessary changes_ and re-organize the Settings Screen so this does not happen again. Refer to the new screen above.</em></p>\n\n<h2 id="how-does-the-new-screen-work">How does the new screen work?</h2>\n<ol>\n  <li>If you want to disable or enable trackbacks and comments, select the dropdown list for each of them. </li>\n  <li>Press <strong>SAVE SETTINGS</strong>, it will enable or disable the corresponding feature such as Trackbacks and Comments.</li>\n  <li><strong>This only reflects the ==published posts==</strong>, the reason of doing that is - ==Drafts or unpublished post you may choose to enable comments or trackbacks, it is up to you.== </li>\n</ol>\n\n  <p><a href="http://wp-optimize.ruhanirabin.com/urgent-bugfix-1-8-9-7/">URGENT BugFix: 1.8.9.7</a> was originally published by Ruhani Rabin at <a href="http://wp-optimize.ruhanirabin.com">WP-Optimize</a> on September 08, 2014.</p>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}i:2;a:6:{s:4:"data";s:22:"\n  \n  \n  \n  \n  \n  \n  \n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Changes in v1.8.9.6";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:9:"alternate";s:4:"type";s:9:"text/html";s:4:"href";s:55:"http://wp-optimize.ruhanirabin.com/changes-in-v1-8-9-6/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:54:"http://wp-optimize.ruhanirabin.com/changes-in-v1-8-9-6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-04T11:21:19+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-04T11:21:19+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:18:"\n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:3:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:12:"Ruhani Rabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:34:"http://wp-optimize.ruhanirabin.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:5:"email";a:1:{i:0;a:5:{s:4:"data";s:13:"get@email.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:925:"<h3 id="whats-changed">What’s changed</h3>\n<p><img src="http://wp-optimize.ruhanirabin.com/images/enable-disable-trackbacks.png" alt="Image" /></p>\n\n<ol>\n  <li>There were few <strong>number formatting problem</strong> and detection of InnoDB table format. Charles Dee Rice solved the problems that I missed out. Thank you!</li>\n  <li>Now has the ability to batch <strong>enable/disable trackbacks and comments</strong> for <strong><em>all your published posts</em></strong>. Please remember this is a batch operation. If there is a post that was disabled but the rest of the other posts were enabled, the batch operation will reset it. </li>\n  <li>Other code optimizations and cleanup</li>\n</ol>\n\n  <p><a href="http://wp-optimize.ruhanirabin.com/changes-in-v1-8-9-6/">Changes in v1.8.9.6</a> was originally published by Ruhani Rabin at <a href="http://wp-optimize.ruhanirabin.com">WP-Optimize</a> on September 04, 2014.</p>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}i:3;a:6:{s:4:"data";s:25:"\n  \n  \n  \n  \n  \n  \n  \n  \n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"What\'s new in release v.1.8.9";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"rel";s:9:"alternate";s:4:"type";s:9:"text/html";s:4:"href";s:72:"http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:71:"http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:40:"2014-06-13 23:06:06 +0000T00:00:00-00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:9:"published";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-05-12T00:00:00+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:18:"\n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:3:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:12:"Ruhani Rabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:34:"http://wp-optimize.ruhanirabin.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}s:5:"email";a:1:{i:0;a:5:{s:4:"data";s:13:"get@email.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:2514:"<p>There are a lot of stuff that has been re-coded in this release. </p>\n\n<h3 id="most-notable-changes-are">Most notable changes are:</h3>\n\n<ol>\n  <li>\n    <p>Persistent settings for main screen: Allows user to save the checkbox selection on the main screen so next time they do not need to select the items they use frequently. Red marked items could not be saved. <img src="http://wp-optimize.ruhanirabin.com/images/2014-05-12-1.png" alt="Image" /></p>\n  </li>\n  <li>\n    <p>Credits page has been re-organized with proper information and links. Now includes GitHub master branch commits.</p>\n  </li>\n  <li>\n    <p>Now cleans up redundant comment meta data and akismet left over data from comments meta data table. </p>\n  </li>\n  <li>\n    <p>Time settings according to the blog local time, so schedules and time display will show time properly. This would only work if the blog time has been set up properly</p>\n  </li>\n  <li>\n    <p>I have enabled mixed type tables optimization. So basically what will it do? It will enable you to run optimization if you have mixed of innoDB and MyISAM tables. But, it will skip the optimization commands on innoDB tables. Some tables may report wrong size, haven’t been able to find a proper workaround to this. </p>\n  </li>\n  <li>\n    <p>New table type column - this gives you an overlook of what types of tables you have on your database.  <img src="http://wp-optimize.ruhanirabin.com/images/table-type-display.png" alt="Image" /></p>\n  </li>\n  <li>\n    <p>InnoDB table type <strong>Overhead Size</strong>  are set to <strong>0 bytes</strong> because most of the time they report wrong overhead size.</p>\n  </li>\n  <li>\n    <p>Shows last blog post from GitHub Pages for WP-Optimize at the <strong>Status Log</strong></p>\n  </li>\n  <li>\n    <p><strong>Independent translation portal</strong> for Translators to live update translations before actual releases. So their translation at always in sync. <strong><a href="http://wp-optimize.ruhanirabin.com/translations/">Read instructions</a></strong> <img src="http://wp-optimize.ruhanirabin.com/images/translations-interface.png" alt="Image" /></p>\n  </li>\n  <li>\n    <p>Updated SQL Queries to include backticks for better compatibilty with reserved names. </p>\n  </li>\n</ol>\n\n\n  <p><a href="http://wp-optimize.ruhanirabin.com/whats-new-in-release-v-dot-1-8-dot-9/">What\'s new in release v.1.8.9</a> was originally published by Ruhani Rabin at <a href="http://wp-optimize.ruhanirabin.com">WP-Optimize</a> on May 12, 2014.</p>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:2:"en";}}}}}}}}}}}}s:4:"type";i:512;s:7:"headers";a:20:{s:6:"server";s:10:"GitHub.com";s:12:"content-type";s:15:"application/xml";s:13:"last-modified";s:29:"Tue, 23 Jun 2015 15:11:55 GMT";s:27:"access-control-allow-origin";s:1:"*";s:7:"expires";s:29:"Thu, 17 Mar 2016 03:28:31 GMT";s:13:"cache-control";s:11:"max-age=600";s:16:"content-encoding";s:4:"gzip";s:19:"x-github-request-id";s:29:"17EB2E14:38FF:709CB4:56EA2207";s:14:"content-length";s:4:"2937";s:13:"accept-ranges";s:5:"bytes";s:4:"date";s:29:"Wed, 23 Mar 2016 19:36:28 GMT";s:3:"via";s:11:"1.1 varnish";s:3:"age";s:2:"12";s:10:"connection";s:5:"close";s:11:"x-served-by";s:17:"cache-iad2136-IAD";s:7:"x-cache";s:3:"HIT";s:12:"x-cache-hits";s:1:"1";s:7:"x-timer";s:26:"S1458761788.274642,VS0,VE0";s:4:"vary";s:15:"Accept-Encoding";s:19:"x-fastly-request-id";s:40:"6c1aa0465ba4703234f8e4faf6e2bff7549c1098";}s:5:"build";s:14:"20130910200210";}', 'no'); 
INSERT INTO `wp_options` VALUES (22381, '_transient_timeout_feed_mod_696c5cae47c2819ede33327da4ef81e5', '1458804989', 'no'); 
INSERT INTO `wp_options` VALUES (22391, '_transient_feed_mod_696c5cae47c2819ede33327da4ef81e5', '1458761789', 'no'); 
INSERT INTO `wp_options` VALUES (22421, '_transient_timeout_bfa-css', '1461353801', 'no'); 
INSERT INTO `wp_options` VALUES (22431, '_transient_bfa-css', 'a:1:{s:5:"4.5.0";s:27466:"/*!\n *  Font Awesome 4.5.0 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */@font-face{font-family:\'FontAwesome\';src:url(\'../fonts/fontawesome-webfont.eot?v=4.5.0\');src:url(\'../fonts/fontawesome-webfont.eot?#iefix&v=4.5.0\') format(\'embedded-opentype\'),url(\'../fonts/fontawesome-webfont.woff2?v=4.5.0\') format(\'woff2\'),url(\'../fonts/fontawesome-webfont.woff?v=4.5.0\') format(\'woff\'),url(\'../fonts/fontawesome-webfont.ttf?v=4.5.0\') format(\'truetype\'),url(\'../fonts/fontawesome-webfont.svg?v=4.5.0#fontawesomeregular\') format(\'svg\');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=1);-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=2);-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=3);-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1);-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1);-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:"\\f000"}.fa-music:before{content:"\\f001"}.fa-search:before{content:"\\f002"}.fa-envelope-o:before{content:"\\f003"}.fa-heart:before{content:"\\f004"}.fa-star:before{content:"\\f005"}.fa-star-o:before{content:"\\f006"}.fa-user:before{content:"\\f007"}.fa-film:before{content:"\\f008"}.fa-th-large:before{content:"\\f009"}.fa-th:before{content:"\\f00a"}.fa-th-list:before{content:"\\f00b"}.fa-check:before{content:"\\f00c"}.fa-remove:before,.fa-close:before,.fa-times:before{content:"\\f00d"}.fa-search-plus:before{content:"\\f00e"}.fa-search-minus:before{content:"\\f010"}.fa-power-off:before{content:"\\f011"}.fa-signal:before{content:"\\f012"}.fa-gear:before,.fa-cog:before{content:"\\f013"}.fa-trash-o:before{content:"\\f014"}.fa-home:before{content:"\\f015"}.fa-file-o:before{content:"\\f016"}.fa-clock-o:before{content:"\\f017"}.fa-road:before{content:"\\f018"}.fa-download:before{content:"\\f019"}.fa-arrow-circle-o-down:before{content:"\\f01a"}.fa-arrow-circle-o-up:before{content:"\\f01b"}.fa-inbox:before{content:"\\f01c"}.fa-play-circle-o:before{content:"\\f01d"}.fa-rotate-right:before,.fa-repeat:before{content:"\\f01e"}.fa-refresh:before{content:"\\f021"}.fa-list-alt:before{content:"\\f022"}.fa-lock:before{content:"\\f023"}.fa-flag:before{content:"\\f024"}.fa-headphones:before{content:"\\f025"}.fa-volume-off:before{content:"\\f026"}.fa-volume-down:before{content:"\\f027"}.fa-volume-up:before{content:"\\f028"}.fa-qrcode:before{content:"\\f029"}.fa-barcode:before{content:"\\f02a"}.fa-tag:before{content:"\\f02b"}.fa-tags:before{content:"\\f02c"}.fa-book:before{content:"\\f02d"}.fa-bookmark:before{content:"\\f02e"}.fa-print:before{content:"\\f02f"}.fa-camera:before{content:"\\f030"}.fa-font:before{content:"\\f031"}.fa-bold:before{content:"\\f032"}.fa-italic:before{content:"\\f033"}.fa-text-height:before{content:"\\f034"}.fa-text-width:before{content:"\\f035"}.fa-align-left:before{content:"\\f036"}.fa-align-center:before{content:"\\f037"}.fa-align-right:before{content:"\\f038"}.fa-align-justify:before{content:"\\f039"}.fa-list:before{content:"\\f03a"}.fa-dedent:before,.fa-outdent:before{content:"\\f03b"}.fa-indent:before{content:"\\f03c"}.fa-video-camera:before{content:"\\f03d"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:"\\f03e"}.fa-pencil:before{content:"\\f040"}.fa-map-marker:before{content:"\\f041"}.fa-adjust:before{content:"\\f042"}.fa-tint:before{content:"\\f043"}.fa-edit:before,.fa-pencil-square-o:before{content:"\\f044"}.fa-share-square-o:before{content:"\\f045"}.fa-check-square-o:before{content:"\\f046"}.fa-arrows:before{content:"\\f047"}.fa-step-backward:before{content:"\\f048"}.fa-fast-backward:before{content:"\\f049"}.fa-backward:before{content:"\\f04a"}.fa-play:before{content:"\\f04b"}.fa-pause:before{content:"\\f04c"}.fa-stop:before{content:"\\f04d"}.fa-forward:before{content:"\\f04e"}.fa-fast-forward:before{content:"\\f050"}.fa-step-forward:before{content:"\\f051"}.fa-eject:before{content:"\\f052"}.fa-chevron-left:before{content:"\\f053"}.fa-chevron-right:before{content:"\\f054"}.fa-plus-circle:before{content:"\\f055"}.fa-minus-circle:before{content:"\\f056"}.fa-times-circle:before{content:"\\f057"}.fa-check-circle:before{content:"\\f058"}.fa-question-circle:before{content:"\\f059"}.fa-info-circle:before{content:"\\f05a"}.fa-crosshairs:before{content:"\\f05b"}.fa-times-circle-o:before{content:"\\f05c"}.fa-check-circle-o:before{content:"\\f05d"}.fa-ban:before{content:"\\f05e"}.fa-arrow-left:before{content:"\\f060"}.fa-arrow-right:before{content:"\\f061"}.fa-arrow-up:before{content:"\\f062"}.fa-arrow-down:before{content:"\\f063"}.fa-mail-forward:before,.fa-share:before{content:"\\f064"}.fa-expand:before{content:"\\f065"}.fa-compress:before{content:"\\f066"}.fa-plus:before{content:"\\f067"}.fa-minus:before{content:"\\f068"}.fa-asterisk:before{content:"\\f069"}.fa-exclamation-circle:before{content:"\\f06a"}.fa-gift:before{content:"\\f06b"}.fa-leaf:before{content:"\\f06c"}.fa-fire:before{content:"\\f06d"}.fa-eye:before{content:"\\f06e"}.fa-eye-slash:before{content:"\\f070"}.fa-warning:before,.fa-exclamation-triangle:before{content:"\\f071"}.fa-plane:before{content:"\\f072"}.fa-calendar:before{content:"\\f073"}.fa-random:before{content:"\\f074"}.fa-comment:before{content:"\\f075"}.fa-magnet:before{content:"\\f076"}.fa-chevron-up:before{content:"\\f077"}.fa-chevron-down:before{content:"\\f078"}.fa-retweet:before{content:"\\f079"}.fa-shopping-cart:before{content:"\\f07a"}.fa-folder:before{content:"\\f07b"}.fa-folder-open:before{content:"\\f07c"}.fa-arrows-v:before{content:"\\f07d"}.fa-arrows-h:before{content:"\\f07e"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:"\\f080"}.fa-twitter-square:before{content:"\\f081"}.fa-facebook-square:before{content:"\\f082"}.fa-camera-retro:before{content:"\\f083"}.fa-key:before{content:"\\f084"}.fa-gears:before,.fa-cogs:before{content:"\\f085"}.fa-comments:before{content:"\\f086"}.fa-thumbs-o-up:before{content:"\\f087"}.fa-thumbs-o-down:before{content:"\\f088"}.fa-star-half:before{content:"\\f089"}.fa-heart-o:before{content:"\\f08a"}.fa-sign-out:before{content:"\\f08b"}.fa-linkedin-square:before{content:"\\f08c"}.fa-thumb-tack:before{content:"\\f08d"}.fa-external-link:before{content:"\\f08e"}.fa-sign-in:before{content:"\\f090"}.fa-trophy:before{content:"\\f091"}.fa-github-square:before{content:"\\f092"}.fa-upload:before{content:"\\f093"}.fa-lemon-o:before{content:"\\f094"}.fa-phone:before{content:"\\f095"}.fa-square-o:before{content:"\\f096"}.fa-bookmark-o:before{content:"\\f097"}.fa-phone-square:before{content:"\\f098"}.fa-twitter:before{content:"\\f099"}.fa-facebook-f:before,.fa-facebook:before{content:"\\f09a"}.fa-github:before{content:"\\f09b"}.fa-unlock:before{content:"\\f09c"}.fa-credit-card:before{content:"\\f09d"}.fa-feed:before,.fa-rss:before{content:"\\f09e"}.fa-hdd-o:before{content:"\\f0a0"}.fa-bullhorn:before{content:"\\f0a1"}.fa-bell:before{content:"\\f0f3"}.fa-certificate:before{content:"\\f0a3"}.fa-hand-o-right:before{content:"\\f0a4"}.fa-hand-o-left:before{content:"\\f0a5"}.fa-hand-o-up:before{content:"\\f0a6"}.fa-hand-o-down:before{content:"\\f0a7"}.fa-arrow-circle-left:before{content:"\\f0a8"}.fa-arrow-circle-right:before{content:"\\f0a9"}.fa-arrow-circle-up:before{content:"\\f0aa"}.fa-arrow-circle-down:before{content:"\\f0ab"}.fa-globe:before{content:"\\f0ac"}.fa-wrench:before{content:"\\f0ad"}.fa-tasks:before{content:"\\f0ae"}.fa-filter:before{content:"\\f0b0"}.fa-briefcase:before{content:"\\f0b1"}.fa-arrows-alt:before{content:"\\f0b2"}.fa-group:before,.fa-users:before{content:"\\f0c0"}.fa-chain:before,.fa-link:before{content:"\\f0c1"}.fa-cloud:before{content:"\\f0c2"}.fa-flask:before{content:"\\f0c3"}.fa-cut:before,.fa-scissors:before{content:"\\f0c4"}.fa-copy:before,.fa-files-o:before{content:"\\f0c5"}.fa-paperclip:before{content:"\\f0c6"}.fa-save:before,.fa-floppy-o:before{content:"\\f0c7"}.fa-square:before{content:"\\f0c8"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:"\\f0c9"}.fa-list-ul:before{content:"\\f0ca"}.fa-list-ol:before{content:"\\f0cb"}.fa-strikethrough:before{content:"\\f0cc"}.fa-underline:before{content:"\\f0cd"}.fa-table:before{content:"\\f0ce"}.fa-magic:before{content:"\\f0d0"}.fa-truck:before{content:"\\f0d1"}.fa-pinterest:before{content:"\\f0d2"}.fa-pinterest-square:before{content:"\\f0d3"}.fa-google-plus-square:before{content:"\\f0d4"}.fa-google-plus:before{content:"\\f0d5"}.fa-money:before{content:"\\f0d6"}.fa-caret-down:before{content:"\\f0d7"}.fa-caret-up:before{content:"\\f0d8"}.fa-caret-left:before{content:"\\f0d9"}.fa-caret-right:before{content:"\\f0da"}.fa-columns:before{content:"\\f0db"}.fa-unsorted:before,.fa-sort:before{content:"\\f0dc"}.fa-sort-down:before,.fa-sort-desc:before{content:"\\f0dd"}.fa-sort-up:before,.fa-sort-asc:before{content:"\\f0de"}.fa-envelope:before{content:"\\f0e0"}.fa-linkedin:before{content:"\\f0e1"}.fa-rotate-left:before,.fa-undo:before{content:"\\f0e2"}.fa-legal:before,.fa-gavel:before{content:"\\f0e3"}.fa-dashboard:before,.fa-tachometer:before{content:"\\f0e4"}.fa-comment-o:before{content:"\\f0e5"}.fa-comments-o:before{content:"\\f0e6"}.fa-flash:before,.fa-bolt:before{content:"\\f0e7"}.fa-sitemap:before{content:"\\f0e8"}.fa-umbrella:before{content:"\\f0e9"}.fa-paste:before,.fa-clipboard:before{content:"\\f0ea"}.fa-lightbulb-o:before{content:"\\f0eb"}.fa-exchange:before{content:"\\f0ec"}.fa-cloud-download:before{content:"\\f0ed"}.fa-cloud-upload:before{content:"\\f0ee"}.fa-user-md:before{content:"\\f0f0"}.fa-stethoscope:before{content:"\\f0f1"}.fa-suitcase:before{content:"\\f0f2"}.fa-bell-o:before{content:"\\f0a2"}.fa-coffee:before{content:"\\f0f4"}.fa-cutlery:before{content:"\\f0f5"}.fa-file-text-o:before{content:"\\f0f6"}.fa-building-o:before{content:"\\f0f7"}.fa-hospital-o:before{content:"\\f0f8"}.fa-ambulance:before{content:"\\f0f9"}.fa-medkit:before{content:"\\f0fa"}.fa-fighter-jet:before{content:"\\f0fb"}.fa-beer:before{content:"\\f0fc"}.fa-h-square:before{content:"\\f0fd"}.fa-plus-square:before{content:"\\f0fe"}.fa-angle-double-left:before{content:"\\f100"}.fa-angle-double-right:before{content:"\\f101"}.fa-angle-double-up:before{content:"\\f102"}.fa-angle-double-down:before{content:"\\f103"}.fa-angle-left:before{content:"\\f104"}.fa-angle-right:before{content:"\\f105"}.fa-angle-up:before{content:"\\f106"}.fa-angle-down:before{content:"\\f107"}.fa-desktop:before{content:"\\f108"}.fa-laptop:before{content:"\\f109"}.fa-tablet:before{content:"\\f10a"}.fa-mobile-phone:before,.fa-mobile:before{content:"\\f10b"}.fa-circle-o:before{content:"\\f10c"}.fa-quote-left:before{content:"\\f10d"}.fa-quote-right:before{content:"\\f10e"}.fa-spinner:before{content:"\\f110"}.fa-circle:before{content:"\\f111"}.fa-mail-reply:before,.fa-reply:before{content:"\\f112"}.fa-github-alt:before{content:"\\f113"}.fa-folder-o:before{content:"\\f114"}.fa-folder-open-o:before{content:"\\f115"}.fa-smile-o:before{content:"\\f118"}.fa-frown-o:before{content:"\\f119"}.fa-meh-o:before{content:"\\f11a"}.fa-gamepad:before{content:"\\f11b"}.fa-keyboard-o:before{content:"\\f11c"}.fa-flag-o:before{content:"\\f11d"}.fa-flag-checkered:before{content:"\\f11e"}.fa-terminal:before{content:"\\f120"}.fa-code:before{content:"\\f121"}.fa-mail-reply-all:before,.fa-reply-all:before{content:"\\f122"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:"\\f123"}.fa-location-arrow:before{content:"\\f124"}.fa-crop:before{content:"\\f125"}.fa-code-fork:before{content:"\\f126"}.fa-unlink:before,.fa-chain-broken:before{content:"\\f127"}.fa-question:before{content:"\\f128"}.fa-info:before{content:"\\f129"}.fa-exclamation:before{content:"\\f12a"}.fa-superscript:before{content:"\\f12b"}.fa-subscript:before{content:"\\f12c"}.fa-eraser:before{content:"\\f12d"}.fa-puzzle-piece:before{content:"\\f12e"}.fa-microphone:before{content:"\\f130"}.fa-microphone-slash:before{content:"\\f131"}.fa-shield:before{content:"\\f132"}.fa-calendar-o:before{content:"\\f133"}.fa-fire-extinguisher:before{content:"\\f134"}.fa-rocket:before{content:"\\f135"}.fa-maxcdn:before{content:"\\f136"}.fa-chevron-circle-left:before{content:"\\f137"}.fa-chevron-circle-right:before{content:"\\f138"}.fa-chevron-circle-up:before{content:"\\f139"}.fa-chevron-circle-down:before{content:"\\f13a"}.fa-html5:before{content:"\\f13b"}.fa-css3:before{content:"\\f13c"}.fa-anchor:before{content:"\\f13d"}.fa-unlock-alt:before{content:"\\f13e"}.fa-bullseye:before{content:"\\f140"}.fa-ellipsis-h:before{content:"\\f141"}.fa-ellipsis-v:before{content:"\\f142"}.fa-rss-square:before{content:"\\f143"}.fa-play-circle:before{content:"\\f144"}.fa-ticket:before{content:"\\f145"}.fa-minus-square:before{content:"\\f146"}.fa-minus-square-o:before{content:"\\f147"}.fa-level-up:before{content:"\\f148"}.fa-level-down:before{content:"\\f149"}.fa-check-square:before{content:"\\f14a"}.fa-pencil-square:before{content:"\\f14b"}.fa-external-link-square:before{content:"\\f14c"}.fa-share-square:before{content:"\\f14d"}.fa-compass:before{content:"\\f14e"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:"\\f150"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:"\\f151"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:"\\f152"}.fa-euro:before,.fa-eur:before{content:"\\f153"}.fa-gbp:before{content:"\\f154"}.fa-dollar:before,.fa-usd:before{content:"\\f155"}.fa-rupee:before,.fa-inr:before{content:"\\f156"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:"\\f157"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:"\\f158"}.fa-won:before,.fa-krw:before{content:"\\f159"}.fa-bitcoin:before,.fa-btc:before{content:"\\f15a"}.fa-file:before{content:"\\f15b"}.fa-file-text:before{content:"\\f15c"}.fa-sort-alpha-asc:before{content:"\\f15d"}.fa-sort-alpha-desc:before{content:"\\f15e"}.fa-sort-amount-asc:before{content:"\\f160"}.fa-sort-amount-desc:before{content:"\\f161"}.fa-sort-numeric-asc:before{content:"\\f162"}.fa-sort-numeric-desc:before{content:"\\f163"}.fa-thumbs-up:before{content:"\\f164"}.fa-thumbs-down:before{content:"\\f165"}.fa-youtube-square:before{content:"\\f166"}.fa-youtube:before{content:"\\f167"}.fa-xing:before{content:"\\f168"}.fa-xing-square:before{content:"\\f169"}.fa-youtube-play:before{content:"\\f16a"}.fa-dropbox:before{content:"\\f16b"}.fa-stack-overflow:before{content:"\\f16c"}.fa-instagram:before{content:"\\f16d"}.fa-flickr:before{content:"\\f16e"}.fa-adn:before{content:"\\f170"}.fa-bitbucket:before{content:"\\f171"}.fa-bitbucket-square:before{content:"\\f172"}.fa-tumblr:before{content:"\\f173"}.fa-tumblr-square:before{content:"\\f174"}.fa-long-arrow-down:before{content:"\\f175"}.fa-long-arrow-up:before{content:"\\f176"}.fa-long-arrow-left:before{content:"\\f177"}.fa-long-arrow-right:before{content:"\\f178"}.fa-apple:before{content:"\\f179"}.fa-windows:before{content:"\\f17a"}.fa-android:before{content:"\\f17b"}.fa-linux:before{content:"\\f17c"}.fa-dribbble:before{content:"\\f17d"}.fa-skype:before{content:"\\f17e"}.fa-foursquare:before{content:"\\f180"}.fa-trello:before{content:"\\f181"}.fa-female:before{content:"\\f182"}.fa-male:before{content:"\\f183"}.fa-gittip:before,.fa-gratipay:before{content:"\\f184"}.fa-sun-o:before{content:"\\f185"}.fa-moon-o:before{content:"\\f186"}.fa-archive:before{content:"\\f187"}.fa-bug:before{content:"\\f188"}.fa-vk:before{content:"\\f189"}.fa-weibo:before{content:"\\f18a"}.fa-renren:before{content:"\\f18b"}.fa-pagelines:before{content:"\\f18c"}.fa-stack-exchange:before{content:"\\f18d"}.fa-arrow-circle-o-right:before{content:"\\f18e"}.fa-arrow-circle-o-left:before{content:"\\f190"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:"\\f191"}.fa-dot-circle-o:before{content:"\\f192"}.fa-wheelchair:before{content:"\\f193"}.fa-vimeo-square:before{content:"\\f194"}.fa-turkish-lira:before,.fa-try:before{content:"\\f195"}.fa-plus-square-o:before{content:"\\f196"}.fa-space-shuttle:before{content:"\\f197"}.fa-slack:before{content:"\\f198"}.fa-envelope-square:before{content:"\\f199"}.fa-wordpress:before{content:"\\f19a"}.fa-openid:before{content:"\\f19b"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:"\\f19c"}.fa-mortar-board:before,.fa-graduation-cap:before{content:"\\f19d"}.fa-yahoo:before{content:"\\f19e"}.fa-google:before{content:"\\f1a0"}.fa-reddit:before{content:"\\f1a1"}.fa-reddit-square:before{content:"\\f1a2"}.fa-stumbleupon-circle:before{content:"\\f1a3"}.fa-stumbleupon:before{content:"\\f1a4"}.fa-delicious:before{content:"\\f1a5"}.fa-digg:before{content:"\\f1a6"}.fa-pied-piper:before{content:"\\f1a7"}.fa-pied-piper-alt:before{content:"\\f1a8"}.fa-drupal:before{content:"\\f1a9"}.fa-joomla:before{content:"\\f1aa"}.fa-language:before{content:"\\f1ab"}.fa-fax:before{content:"\\f1ac"}.fa-building:before{content:"\\f1ad"}.fa-child:before{content:"\\f1ae"}.fa-paw:before{content:"\\f1b0"}.fa-spoon:before{content:"\\f1b1"}.fa-cube:before{content:"\\f1b2"}.fa-cubes:before{content:"\\f1b3"}.fa-behance:before{content:"\\f1b4"}.fa-behance-square:before{content:"\\f1b5"}.fa-steam:before{content:"\\f1b6"}.fa-steam-square:before{content:"\\f1b7"}.fa-recycle:before{content:"\\f1b8"}.fa-automobile:before,.fa-car:before{content:"\\f1b9"}.fa-cab:before,.fa-taxi:before{content:"\\f1ba"}.fa-tree:before{content:"\\f1bb"}.fa-spotify:before{content:"\\f1bc"}.fa-deviantart:before{content:"\\f1bd"}.fa-soundcloud:before{content:"\\f1be"}.fa-database:before{content:"\\f1c0"}.fa-file-pdf-o:before{content:"\\f1c1"}.fa-file-word-o:before{content:"\\f1c2"}.fa-file-excel-o:before{content:"\\f1c3"}.fa-file-powerpoint-o:before{content:"\\f1c4"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:"\\f1c5"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:"\\f1c6"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:"\\f1c7"}.fa-file-movie-o:before,.fa-file-video-o:before{content:"\\f1c8"}.fa-file-code-o:before{content:"\\f1c9"}.fa-vine:before{content:"\\f1ca"}.fa-codepen:before{content:"\\f1cb"}.fa-jsfiddle:before{content:"\\f1cc"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:"\\f1cd"}.fa-circle-o-notch:before{content:"\\f1ce"}.fa-ra:before,.fa-rebel:before{content:"\\f1d0"}.fa-ge:before,.fa-empire:before{content:"\\f1d1"}.fa-git-square:before{content:"\\f1d2"}.fa-git:before{content:"\\f1d3"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:"\\f1d4"}.fa-tencent-weibo:before{content:"\\f1d5"}.fa-qq:before{content:"\\f1d6"}.fa-wechat:before,.fa-weixin:before{content:"\\f1d7"}.fa-send:before,.fa-paper-plane:before{content:"\\f1d8"}.fa-send-o:before,.fa-paper-plane-o:before{content:"\\f1d9"}.fa-history:before{content:"\\f1da"}.fa-circle-thin:before{content:"\\f1db"}.fa-header:before{content:"\\f1dc"}.fa-paragraph:before{content:"\\f1dd"}.fa-sliders:before{content:"\\f1de"}.fa-share-alt:before{content:"\\f1e0"}.fa-share-alt-square:before{content:"\\f1e1"}.fa-bomb:before{content:"\\f1e2"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:"\\f1e3"}.fa-tty:before{content:"\\f1e4"}.fa-binoculars:before{content:"\\f1e5"}.fa-plug:before{content:"\\f1e6"}.fa-slideshare:before{content:"\\f1e7"}.fa-twitch:before{content:"\\f1e8"}.fa-yelp:before{content:"\\f1e9"}.fa-newspaper-o:before{content:"\\f1ea"}.fa-wifi:before{content:"\\f1eb"}.fa-calculator:before{content:"\\f1ec"}.fa-paypal:before{content:"\\f1ed"}.fa-google-wallet:before{content:"\\f1ee"}.fa-cc-visa:before{content:"\\f1f0"}.fa-cc-mastercard:before{content:"\\f1f1"}.fa-cc-discover:before{content:"\\f1f2"}.fa-cc-amex:before{content:"\\f1f3"}.fa-cc-paypal:before{content:"\\f1f4"}.fa-cc-stripe:before{content:"\\f1f5"}.fa-bell-slash:before{content:"\\f1f6"}.fa-bell-slash-o:before{content:"\\f1f7"}.fa-trash:before{content:"\\f1f8"}.fa-copyright:before{content:"\\f1f9"}.fa-at:before{content:"\\f1fa"}.fa-eyedropper:before{content:"\\f1fb"}.fa-paint-brush:before{content:"\\f1fc"}.fa-birthday-cake:before{content:"\\f1fd"}.fa-area-chart:before{content:"\\f1fe"}.fa-pie-chart:before{content:"\\f200"}.fa-line-chart:before{content:"\\f201"}.fa-lastfm:before{content:"\\f202"}.fa-lastfm-square:before{content:"\\f203"}.fa-toggle-off:before{content:"\\f204"}.fa-toggle-on:before{content:"\\f205"}.fa-bicycle:before{content:"\\f206"}.fa-bus:before{content:"\\f207"}.fa-ioxhost:before{content:"\\f208"}.fa-angellist:before{content:"\\f209"}.fa-cc:before{content:"\\f20a"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:"\\f20b"}.fa-meanpath:before{content:"\\f20c"}.fa-buysellads:before{content:"\\f20d"}.fa-connectdevelop:before{content:"\\f20e"}.fa-dashcube:before{content:"\\f210"}.fa-forumbee:before{content:"\\f211"}.fa-leanpub:before{content:"\\f212"}.fa-sellsy:before{content:"\\f213"}.fa-shirtsinbulk:before{content:"\\f214"}.fa-simplybuilt:before{content:"\\f215"}.fa-skyatlas:before{content:"\\f216"}.fa-cart-plus:before{content:"\\f217"}.fa-cart-arrow-down:before{content:"\\f218"}.fa-diamond:before{content:"\\f219"}.fa-ship:before{content:"\\f21a"}.fa-user-secret:before{content:"\\f21b"}.fa-motorcycle:before{content:"\\f21c"}.fa-street-view:before{content:"\\f21d"}.fa-heartbeat:before{content:"\\f21e"}.fa-venus:before{content:"\\f221"}.fa-mars:before{content:"\\f222"}.fa-mercury:before{content:"\\f223"}.fa-intersex:before,.fa-transgender:before{content:"\\f224"}.fa-transgender-alt:before{content:"\\f225"}.fa-venus-double:before{content:"\\f226"}.fa-mars-double:before{content:"\\f227"}.fa-venus-mars:before{content:"\\f228"}.fa-mars-stroke:before{content:"\\f229"}.fa-mars-stroke-v:before{content:"\\f22a"}.fa-mars-stroke-h:before{content:"\\f22b"}.fa-neuter:before{content:"\\f22c"}.fa-genderless:before{content:"\\f22d"}.fa-facebook-official:before{content:"\\f230"}.fa-pinterest-p:before{content:"\\f231"}.fa-whatsapp:before{content:"\\f232"}.fa-server:before{content:"\\f233"}.fa-user-plus:before{content:"\\f234"}.fa-user-times:before{content:"\\f235"}.fa-hotel:before,.fa-bed:before{content:"\\f236"}.fa-viacoin:before{content:"\\f237"}.fa-train:before{content:"\\f238"}.fa-subway:before{content:"\\f239"}.fa-medium:before{content:"\\f23a"}.fa-yc:before,.fa-y-combinator:before{content:"\\f23b"}.fa-optin-monster:before{content:"\\f23c"}.fa-opencart:before{content:"\\f23d"}.fa-expeditedssl:before{content:"\\f23e"}.fa-battery-4:before,.fa-battery-full:before{content:"\\f240"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:"\\f241"}.fa-battery-2:before,.fa-battery-half:before{content:"\\f242"}.fa-battery-1:before,.fa-battery-quarter:before{content:"\\f243"}.fa-battery-0:before,.fa-battery-empty:before{content:"\\f244"}.fa-mouse-pointer:before{content:"\\f245"}.fa-i-cursor:before{content:"\\f246"}.fa-object-group:before{content:"\\f247"}.fa-object-ungroup:before{content:"\\f248"}.fa-sticky-note:before{content:"\\f249"}.fa-sticky-note-o:before{content:"\\f24a"}.fa-cc-jcb:before{content:"\\f24b"}.fa-cc-diners-club:before{content:"\\f24c"}.fa-clone:before{content:"\\f24d"}.fa-balance-scale:before{content:"\\f24e"}.fa-hourglass-o:before{content:"\\f250"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:"\\f251"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:"\\f252"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:"\\f253"}.fa-hourglass:before{content:"\\f254"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:"\\f255"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:"\\f256"}.fa-hand-scissors-o:before{content:"\\f257"}.fa-hand-lizard-o:before{content:"\\f258"}.fa-hand-spock-o:before{content:"\\f259"}.fa-hand-pointer-o:before{content:"\\f25a"}.fa-hand-peace-o:before{content:"\\f25b"}.fa-trademark:before{content:"\\f25c"}.fa-registered:before{content:"\\f25d"}.fa-creative-commons:before{content:"\\f25e"}.fa-gg:before{content:"\\f260"}.fa-gg-circle:before{content:"\\f261"}.fa-tripadvisor:before{content:"\\f262"}.fa-odnoklassniki:before{content:"\\f263"}.fa-odnoklassniki-square:before{content:"\\f264"}.fa-get-pocket:before{content:"\\f265"}.fa-wikipedia-w:before{content:"\\f266"}.fa-safari:before{content:"\\f267"}.fa-chrome:before{content:"\\f268"}.fa-firefox:before{content:"\\f269"}.fa-opera:before{content:"\\f26a"}.fa-internet-explorer:before{content:"\\f26b"}.fa-tv:before,.fa-television:before{content:"\\f26c"}.fa-contao:before{content:"\\f26d"}.fa-500px:before{content:"\\f26e"}.fa-amazon:before{content:"\\f270"}.fa-calendar-plus-o:before{content:"\\f271"}.fa-calendar-minus-o:before{content:"\\f272"}.fa-calendar-times-o:before{content:"\\f273"}.fa-calendar-check-o:before{content:"\\f274"}.fa-industry:before{content:"\\f275"}.fa-map-pin:before{content:"\\f276"}.fa-map-signs:before{content:"\\f277"}.fa-map-o:before{content:"\\f278"}.fa-map:before{content:"\\f279"}.fa-commenting:before{content:"\\f27a"}.fa-commenting-o:before{content:"\\f27b"}.fa-houzz:before{content:"\\f27c"}.fa-vimeo:before{content:"\\f27d"}.fa-black-tie:before{content:"\\f27e"}.fa-fonticons:before{content:"\\f280"}.fa-reddit-alien:before{content:"\\f281"}.fa-edge:before{content:"\\f282"}.fa-credit-card-alt:before{content:"\\f283"}.fa-codiepie:before{content:"\\f284"}.fa-modx:before{content:"\\f285"}.fa-fort-awesome:before{content:"\\f286"}.fa-usb:before{content:"\\f287"}.fa-product-hunt:before{content:"\\f288"}.fa-mixcloud:before{content:"\\f289"}.fa-scribd:before{content:"\\f28a"}.fa-pause-circle:before{content:"\\f28b"}.fa-pause-circle-o:before{content:"\\f28c"}.fa-stop-circle:before{content:"\\f28d"}.fa-stop-circle-o:before{content:"\\f28e"}.fa-shopping-bag:before{content:"\\f290"}.fa-shopping-basket:before{content:"\\f291"}.fa-hashtag:before{content:"\\f292"}.fa-bluetooth:before{content:"\\f293"}.fa-bluetooth-b:before{content:"\\f294"}.fa-percent:before{content:"\\f295"}\n";}', 'no'); 
INSERT INTO `wp_options` VALUES (22461, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1459461607;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'); 
INSERT INTO `wp_options` VALUES (22511, '_transient_timeout_feed_ddcff069d149d382cec43a83333e931b', '1458805041', 'no'); 
INSERT INTO `wp_options` VALUES (22521, '_transient_feed_ddcff069d149d382cec43a83333e931b', 'a:4:{s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"feed";a:1:{i:0;a:6:{s:4:"data";s:76:"\n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"lang";s:5:"en-US";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:5:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:59:"tag:github.com,2008:/ruhanirabin/WP-Optimize/commits/master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:57:"https://github.com/ruhanirabin/WP-Optimize/commits/master";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:20:"application/atom+xml";s:3:"rel";s:4:"self";s:4:"href";s:62:"https://github.com/ruhanirabin/WP-Optimize/commits/master.atom";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Recent Commits to WP-Optimize:master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-03-18T16:05:18+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"entry";a:20:{i:0;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/52498c31299cd1c5d908f6aebd4342e1846373dd";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/52498c31299cd1c5d908f6aebd4342e1846373dd";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"\n        fix correct version number and updated language\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-03-18T16:05:18+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:110:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>fix correct version number and updated language</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:1;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/d788199060bb29766ad94e235b5f3c1bccf96f3a";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/d788199060bb29766ad94e235b5f3c1bccf96f3a";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"\n        Touched version, readme file update, language files update\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-03-18T11:32:56+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:121:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Touched version, readme file update, language files update</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:2;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/4e9eafedaae2f78ab34081f325f678d63fea719f";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/4e9eafedaae2f78ab34081f325f678d63fea719f";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"\n        Security Fix\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-03-18T11:14:50+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:75:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Security Fix</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:3;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/a1473acf01881daa97d67ce74ecd3eb59452f97f";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/a1473acf01881daa97d67ce74ecd3eb59452f97f";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"\n        Updated POT file for translation\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-03-02T23:41:27+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:95:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Updated POT file for translation</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:4;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/70ce54efcbf7a9e5aa9941714f18f577864345b9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/70ce54efcbf7a9e5aa9941714f18f577864345b9";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"\n        Merge branch \'develop\'\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-03-02T23:17:00+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:85:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Merge branch \'develop\'</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:5;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/66fd7c4955547cf0af89f8745cac067e5c53d80a";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/66fd7c4955547cf0af89f8745cac067e5c53d80a";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"\n        Updated readme with minimum requirements\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-02-05T10:27:12+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:103:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Updated readme with minimum requirements</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:6;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/37fb6229e06519405ff2841d62fa60402f30bc64";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/37fb6229e06519405ff2841d62fa60402f30bc64";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"\n        version update 1.8.9.8 - email notifications, daily schedules\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2015-02-05T10:24:59+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:124:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>version update 1.8.9.8 - email notifications, daily schedules</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:7;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/eeb3973a562ff61f7757c591404d173e3c35555c";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/eeb3973a562ff61f7757c591404d173e3c35555c";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"\n        Changes for variable names and trying to fix some other things related to variables.\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-12-02T18:48:58+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:147:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Changes for variable names and trying to fix some other things related to variables.</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:8;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/105ce996ab421933ff384d4528a743233211caf6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/105ce996ab421933ff384d4528a743233211caf6";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"\n        enabled email notification by default\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-11-28T01:26:26+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:100:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>enabled email notification by default</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:9;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/670bfe0f2308eb378e595b8d6f5f4a32d0d6a832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/670bfe0f2308eb378e595b8d6f5f4a32d0d6a832";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:106:"\n        version revision update and enabled email notification options. defaults to blog admin email\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-11-25T02:12:43+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:155:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>version revision update and enabled email notification options. defaults to blog admin email</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:10;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/0b373a49a991903825ef8c1f381f40980e580276";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/0b373a49a991903825ef8c1f381f40980e580276";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"\n        Merge branch \'feature/Email_notification\' into develop\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-11-21T16:16:31+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:117:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Merge branch \'feature/Email_notification\' into develop</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:11;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/54dd45b998d35a55b7df8538c99a766ac1e20466";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/54dd45b998d35a55b7df8538c99a766ac1e20466";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"\n        updated email notifications and also added daily schedules\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-11-21T16:15:45+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:121:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>updated email notifications and also added daily schedules</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:12;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/476f031d94ab1d536ce348d12c63ffd0d7f1a325";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/476f031d94ab1d536ce348d12c63ffd0d7f1a325";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"\n        Primary initialization of email notification. Test is queued.\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-15T14:07:40+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:124:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Primary initialization of email notification. Test is queued.</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:13;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/9959e72aefacfbc141bfaead12b06a5722782fc2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/9959e72aefacfbc141bfaead12b06a5722782fc2";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"\n        Merge pull request #44 from LehaMotovilov/notices\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-09T21:51:04+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:137:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Merge pull request #44 from LehaMotovilov/notices\n\nfix php related notices</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:14;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/2900fb2c23174d61931abceb46b5384ddada63fe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/2900fb2c23174d61931abceb46b5384ddada63fe";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"\n        fix notices\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-09T18:11:16+03:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:13:"LehaMotovilov";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:32:"https://github.com/LehaMotovilov";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:74:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>fix notices</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars3.githubusercontent.com/u/6247404?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:15;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/5089901b98cbffdf501d736a77db13778e383dc0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/5089901b98cbffdf501d736a77db13778e383dc0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"\n        Merge pull request #43 from ruhanirabin/develop\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-08T21:41:52+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:133:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Merge pull request #43 from ruhanirabin/develop\n\nURGENT BugFix 1.8.9.7</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:16;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/42b79fccf4230f884888957d74c41eadcd85a3b4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/42b79fccf4230f884888957d74c41eadcd85a3b4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"\n        Pot file for 1.8.9.7\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-08T21:35:18+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:83:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Pot file for 1.8.9.7</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:17;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/61325ecec119d61fdd2877dd56c9300b0fcbd663";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/61325ecec119d61fdd2877dd56c9300b0fcbd663";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:178:"\n        BUGFIX: Auto Schedule get\'s disabled when running trackback/comments related query. Changed Settings screen formation. Updated version build number to reflect this.\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-08T17:28:58+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:227:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>BUGFIX: Auto Schedule get\'s disabled when running trackback/comments related query. Changed Settings screen formation. Updated version build number to reflect this.</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:18;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/bdf83ae128b3efeaa56c65aabd98d945bd0f2afd";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/bdf83ae128b3efeaa56c65aabd98d945bd0f2afd";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"\n        Merge branch \'release/v1.8.9.6\'\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-07T22:54:13+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:94:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Merge branch \'release/v1.8.9.6\'</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}i:19;a:6:{s:4:"data";s:38:"\n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:2:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:73:"tag:github.com,2008:Grit::Commit/7658e042657025ce9c15d4216641eeef514f5943";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"type";s:9:"text/html";s:3:"rel";s:9:"alternate";s:4:"href";s:90:"https://github.com/ruhanirabin/WP-Optimize/commit/7658e042657025ce9c15d4216641eeef514f5943";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"\n        Merge branch \'release/v1.8.9.6\' into develop\n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2014-09-07T22:54:13+08:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:19:"\n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:2:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:11:"ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}s:3:"uri";a:1:{i:0;a:5:{s:4:"data";s:30:"https://github.com/ruhanirabin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:107:"\n      <pre style=\'white-space:pre-wrap;width:81ex\'>Merge branch \'release/v1.8.9.6\' into develop</pre>\n    ";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}s:29:"http://search.yahoo.com/mrss/";a:1:{s:9:"thumbnail";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:6:"height";s:2:"30";s:5:"width";s:2:"30";s:3:"url";s:57:"https://avatars0.githubusercontent.com/u/7077250?v=3&s=30";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:5:"en-US";}}}}}}}}}}}}s:4:"type";i:512;s:7:"headers";a:19:{s:6:"server";s:10:"GitHub.com";s:4:"date";s:29:"Wed, 23 Mar 2016 19:37:20 GMT";s:12:"content-type";s:35:"application/atom+xml; charset=utf-8";s:10:"connection";s:5:"close";s:6:"status";s:6:"200 OK";s:13:"cache-control";s:8:"no-cache";s:4:"vary";a:2:{i:0;s:6:"X-PJAX";i:1;s:15:"Accept-Encoding";}s:4:"etag";s:34:""529d1c7f765196b291e1614442da7869"";s:15:"x-ua-compatible";s:16:"IE=Edge,chrome=1";s:12:"x-request-id";s:32:"e8316be1b4a6c24c98f6863b564ce7d3";s:9:"x-runtime";s:8:"0.021603";s:23:"content-security-policy";s:817:"default-src \'none\'; base-uri \'self\'; block-all-mixed-content; child-src render.githubusercontent.com; connect-src \'self\' uploads.github.com status.github.com api.github.com www.google-analytics.com github-cloud.s3.amazonaws.com api.braintreegateway.com client-analytics.braintreegateway.com wss://live.github.com; font-src assets-cdn.github.com; form-action \'self\' github.com gist.github.com; frame-ancestors \'none\'; frame-src render.githubusercontent.com; img-src \'self\' data: assets-cdn.github.com identicons.github.com www.google-analytics.com collector.githubapp.com *.gravatar.com *.wp.com checkout.paypal.com *.githubusercontent.com; media-src \'none\'; object-src assets-cdn.github.com; plugin-types application/x-shockwave-flash; script-src assets-cdn.github.com; style-src \'unsafe-inline\' assets-cdn.github.com";s:25:"strict-transport-security";s:44:"max-age=31536000; includeSubdomains; preload";s:15:"public-key-pins";s:443:"max-age=300; pin-sha256="WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="; pin-sha256="RRM1dGqnDFsCJXBTHky16vi1obOlCgFFn/yOhI/y+ho="; pin-sha256="k2v657xBsOVe1PQRwOsHsw3bsGT2VzIqz5K+59sNQws="; pin-sha256="K87oWBWM9UZfyddvDfoxL+8lpNyoUB2ptGtn0fv6G2Q="; pin-sha256="IQBnNBEiFuhj+8x6X8XLgh01V9Ic5/V3IRQLNFFc7v4="; pin-sha256="iie1VXtL7HzAMF+/PVPR9xzT80kQxdZeJ+zduCB3uj0="; pin-sha256="LvRiGEjRqfzurezaWuj8Wie2gyHMrW5Q06LspMnox7A="; includeSubDomains";s:22:"x-content-type-options";s:7:"nosniff";s:15:"x-frame-options";s:4:"deny";s:16:"x-xss-protection";s:13:"1; mode=block";s:11:"x-served-by";s:32:"3f38dada85f97412f7f824e59f77fa9d";s:19:"x-github-request-id";s:31:"176022C4:7CE0:1148DB61:56F2F070";}s:5:"build";s:14:"20130910200210";}', 'no'); 
INSERT INTO `wp_options` VALUES (22531, '_transient_timeout_feed_mod_ddcff069d149d382cec43a83333e931b', '1458805041', 'no'); 
INSERT INTO `wp_options` VALUES (22541, '_transient_feed_mod_ddcff069d149d382cec43a83333e931b', '1458761841', 'no'); 
INSERT INTO `wp_options` VALUES (23251, '_site_transient_timeout_browser_d10dd24a345c5e69eb2a6f75a3edc72e', '1459614374', 'yes'); 
INSERT INTO `wp_options` VALUES (23261, '_site_transient_browser_d10dd24a345c5e69eb2a6f75a3edc72e', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"49.0.2623.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'); 
INSERT INTO `wp_options` VALUES (23271, '_transient_timeout_plugin_slugs', '1459548016', 'no'); 
INSERT INTO `wp_options` VALUES (23281, '_transient_plugin_slugs', 'a:25:{i:0;s:25:"accordions/accordions.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:35:"backupwordpress/backupwordpress.php";i:3;s:43:"better-font-awesome/better-font-awesome.php";i:4;s:45:"category-wise-search/category-wise-search.php";i:5;s:36:"contact-form-7/wp-contact-form-7.php";i:6;s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";i:7;s:29:"custom-login/custom-login.php";i:8;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:9;s:25:"duplicator/duplicator.php";i:10;s:37:"fruitful-shortcodes/ff-shortcodes.php";i:11;s:46:"jquery-image-lazy-loading/jq_img_lazy_load.php";i:12;s:27:"ninja-forms/ninja-forms.php";i:13;s:37:"plugin-organizer/plugin-organizer.php";i:14;s:25:"relevanssi/relevanssi.php";i:15;s:45:"sendgrid-mailing-list/sendgridMailingList.php";i:16;s:37:"tinymce-advanced/tinymce-advanced.php";i:17;s:25:"widget-shortcode/init.php";i:18;s:38:"wonderplugin-tabs/wonderplugintabs.php";i:19;s:29:"wp-db-backup/wp-db-backup.php";i:20;s:27:"wp-optimize/wp-optimize.php";i:21;s:24:"wp-awesome-faq/index.php";i:22;s:51:"wp-deferred-javascripts/wp-deferred-javascripts.php";i:23;s:31:"wp-migrate-db/wp-migrate-db.php";i:24;s:23:"wp-smushit/wp-smush.php";}', 'no'); 
INSERT INTO `wp_options` VALUES (23351, '_transient_timeout_w3tc.verify_plugins', '1459614652', 'no'); 
INSERT INTO `wp_options` VALUES (23361, '_transient_w3tc.verify_plugins', '1', 'no'); 
INSERT INTO `wp_options` VALUES (23391, '_transient_timeout_w3tc_license_status', '1459441932', 'no'); 
INSERT INTO `wp_options` VALUES (23401, '_transient_w3tc_license_status', 'no_key', 'no'); 
INSERT INTO `wp_options` VALUES (24151, 'hmbkp_plugin_version', '3.5', 'yes'); 
INSERT INTO `wp_options` VALUES (24161, 'hmbkp_schedule_1459348719', 'a:7:{s:11:"max_backups";i:7;s:8:"excludes";a:0:{}s:4:"type";s:8:"database";s:12:"reoccurrence";s:5:"daily";s:19:"schedule_start_time";i:1459378800;s:14:"duration_total";d:2918727669;s:16:"backup_run_count";i:2;}', 'yes'); 
INSERT INTO `wp_options` VALUES (24171, 'hmbkp_schedule_1459348720', 'a:5:{s:11:"max_backups";i:3;s:8:"excludes";a:0:{}s:4:"type";s:8:"complete";s:12:"reoccurrence";s:6:"weekly";s:19:"schedule_start_time";i:1459652400;}', 'yes'); 
INSERT INTO `wp_options` VALUES (24253, 'hmbkp_notices', 'a:1:{s:13:"backup_errors";a:1:{i:0;s:107:"Mysqldump: \'mysql\' is not recognized as an internal or external command,\r\noperable program or batch file.\r\n";}}', 'yes'); 
INSERT INTO `wp_options` VALUES (24281, 'duplicator_settings', 'a:8:{s:7:"version";s:5:"0.5.2";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:17:"package_zip_flush";b:0;}', 'yes'); 
INSERT INTO `wp_options` VALUES (24291, 'duplicator_version_plugin', '0.5.2', 'yes'); 
INSERT INTO `wp_options` VALUES (24301, 'duplicator_ui_view_state', 'a:3:{s:14:"dup-wpnotice01";b:1;s:24:"dup-pack-installer-panel";s:1:"1";s:22:"dup-pack-archive-panel";s:1:"1";}', 'yes'); 
INSERT INTO `wp_options` VALUES (24371, 'duplicator_package_active', 's:1391:"O:11:"DUP_Package":15:{s:2:"ID";N;s:4:"Name";s:17:"20160330_wiserair";s:4:"Hash";N;s:8:"NameHash";N;s:7:"Version";s:5:"0.5.2";s:4:"Type";i:0;s:5:"Notes";s:27:"Transferring to new server.";s:9:"StorePath";s:37:"D:/home/site/wwwroot/wp-snapshots/tmp";s:8:"StoreURL";s:55:"http://dev-wiserair-mlp.azurewebsites.net/wp-snapshots/";s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:7:"Archive";O:11:"DUP_Archive":15:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:8:"FilterOn";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:20:"D:/home/site/wwwroot";s:8:"DirCount";i:0;s:9:"FileCount";i:0;s:9:"LinkCount";i:0;s:4:"Size";i:0;s:11:"BigFileList";a:0:{}s:15:"InvalidFileList";a:0:{}s:10:"\0*\0Package";r:1;s:28:"\0DUP_Archive\0filterDirsArray";a:0:{}s:28:"\0DUP_Archive\0filterExtsArray";a:0:{}}s:9:"Installer";O:13:"DUP_Installer":11:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:33:"us-cdbr-azure-east-a.cloudapp.net";s:10:"OptsDBName";s:11:"devwisermlp";s:10:"OptsDBUser";s:14:"b8acf9f35603fb";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:29:"wiserairmlp-dev.cloudapp.net ";s:10:"\0*\0Package";r:1;}s:8:"Database";O:12:"DUP_Database":9:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"\0*\0Package";r:1;s:25:"\0DUP_Database\0dbStorePath";N;}}";', 'yes'); 
INSERT INTO `wp_options` VALUES (24531, '_site_transient_timeout_PO_delete_missing_posts', '1459971621', 'yes'); 
INSERT INTO `wp_options` VALUES (24541, '_site_transient_PO_delete_missing_posts', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (24841, 'wpmdb_settings', 'a:9:{s:3:"key";s:40:"FkvGJNl/zqDEoEuSMYsLpnQib+X3Xaj6q9CAq91W";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;}', 'yes'); 
INSERT INTO `wp_options` VALUES (24851, 'wpmdb_schema_version', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (25253, '_transient_timeout_nf_form_1', '1459521075', 'no'); 
INSERT INTO `wp_options` VALUES (25263, '_transient_nf_form_1', 'O:7:"NF_Form":5:{s:7:"form_id";s:1:"1";s:8:"settings";a:18:{s:12:"date_updated";s:10:"2016-02-03";s:10:"form_title";s:12:"Contact Form";s:10:"show_title";s:1:"0";s:9:"save_subs";s:1:"1";s:9:"logged_in";s:1:"0";s:11:"append_page";s:0:"";s:4:"ajax";s:1:"0";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:11:"success_msg";s:42:"Your form has been successfully submitted.";s:10:"email_from";s:0:"";s:10:"email_type";s:4:"html";s:14:"user_email_msg";s:69:"Thank you so much for contacting us. We will get back to you shortly.";s:17:"user_email_fields";s:1:"0";s:15:"admin_email_msg";s:0:"";s:18:"admin_email_fields";s:1:"1";s:16:"admin_attach_csv";s:1:"0";s:15:"email_from_name";s:0:"";}s:6:"fields";a:5:{i:1;a:7:{s:2:"id";s:1:"1";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_text";s:5:"order";s:1:"0";s:4:"data";a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:11;a:7:{s:2:"id";s:2:"11";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_text";s:5:"order";s:1:"1";s:4:"data";a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:2:"14";}i:21;a:7:{s:2:"id";s:2:"21";s:7:"form_id";s:1:"1";s:4:"type";s:9:"_textarea";s:5:"order";s:1:"2";s:4:"data";a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:31;a:7:{s:2:"id";s:2:"31";s:7:"form_id";s:1:"1";s:4:"type";s:5:"_spam";s:5:"order";s:1:"3";s:4:"data";a:10:{s:5:"label";s:25:"What is thirteen minus 6?";s:9:"label_pos";s:4:"left";s:11:"spam_answer";s:1:"7";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}i:41;a:7:{s:2:"id";s:2:"41";s:7:"form_id";s:1:"1";s:4:"type";s:7:"_submit";s:5:"order";s:1:"4";s:4:"data";a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";s:1:"0";s:6:"def_id";s:1:"0";}}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'); 
INSERT INTO `wp_options` VALUES (25273, '_transient_timeout_nf_form_41', '1459521076', 'no'); 
INSERT INTO `wp_options` VALUES (25283, '_transient_nf_form_41', 'O:7:"NF_Form":5:{s:7:"form_id";s:2:"41";s:8:"settings";a:6:{s:12:"date_updated";s:19:"2016-02-03 20:27:22";s:14:"clear_complete";s:1:"1";s:13:"hide_complete";s:1:"1";s:10:"show_title";s:1:"0";s:6:"status";s:0:"";s:10:"form_title";s:15:"Support Contact";}s:6:"fields";a:6:{i:51;a:7:{s:2:"id";s:2:"51";s:7:"form_id";s:2:"41";s:4:"type";s:5:"_text";s:5:"order";s:1:"0";s:4:"data";a:35:{s:5:"label";s:0:"";s:15:"input_limit_msg";s:17:"character(s) left";s:9:"label_pos";s:5:"above";s:11:"placeholder";s:4:"Name";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:1:"1";s:5:"email";s:1:"0";s:13:"disable_input";s:1:"0";s:3:"req";s:1:"0";s:4:"mask";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:17:"calc_auto_include";s:1:"0";s:10:"datepicker";s:1:"0";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:13:"default_value";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";N;}i:71;a:7:{s:2:"id";s:2:"71";s:7:"form_id";s:2:"41";s:4:"type";s:5:"_text";s:5:"order";s:1:"1";s:4:"data";a:40:{s:5:"label";s:0:"";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:11:"placeholder";s:5:"Email";s:13:"disable_input";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:15:"input_limit_msg";s:0:"";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";s:3:"101";}i:81;a:7:{s:2:"id";s:2:"81";s:7:"form_id";s:2:"41";s:4:"type";s:5:"_text";s:5:"order";s:1:"2";s:4:"data";a:40:{s:5:"label";s:0:"";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:14:"(999) 999-9999";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"1";s:10:"user_email";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:11:"placeholder";s:5:"Phone";s:13:"disable_input";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:15:"input_limit_msg";s:0:"";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";s:3:"111";}i:91;a:7:{s:2:"id";s:2:"91";s:7:"form_id";s:2:"41";s:4:"type";s:9:"_textarea";s:5:"order";s:1:"3";s:4:"data";a:19:{s:5:"label";s:0:"";s:15:"input_limit_msg";s:17:"character(s) left";s:9:"label_pos";s:5:"above";s:13:"default_value";s:55:"Please explain in detail what you need assistance with.";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:17:"calc_auto_include";s:1:"0";s:8:"num_sort";s:1:"0";s:11:"admin_label";s:0:"";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";N;}i:101;a:7:{s:2:"id";s:3:"101";s:7:"form_id";s:2:"41";s:4:"type";s:9:"_checkbox";s:5:"order";s:1:"4";s:4:"data";a:15:{s:5:"label";s:21:"Do you own Wiser Air?";s:15:"input_limit_msg";s:17:"character(s) left";s:9:"label_pos";s:5:"right";s:13:"default_value";s:9:"unchecked";s:3:"req";s:1:"0";s:10:"calc_value";a:2:{s:7:"checked";s:1:"0";s:9:"unchecked";s:1:"0";}s:17:"calc_auto_include";s:1:"0";s:8:"num_sort";s:1:"0";s:11:"admin_label";s:0:"";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";N;}i:61;a:7:{s:2:"id";s:2:"61";s:7:"form_id";s:2:"41";s:4:"type";s:7:"_submit";s:5:"order";s:1:"5";s:4:"data";a:8:{s:5:"label";s:6:"Submit";s:15:"input_limit_msg";s:17:"character(s) left";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}s:6:"fav_id";N;s:6:"def_id";N;}}s:10:"field_keys";a:0:{}s:6:"errors";a:0:{}}', 'no'); 
INSERT INTO `wp_options` VALUES (25291, '_transient_timeout_bfa-api-versions', '1459478172', 'no'); 
INSERT INTO `wp_options` VALUES (25301, '_transient_bfa-api-versions', 'O:8:"stdClass":2:{s:8:"versions";a:15:{i:0;s:5:"4.5.0";i:1;s:5:"4.4.0";i:2;s:5:"4.3.0";i:3;s:5:"4.2.0";i:4;s:5:"4.1.0";i:5;s:5:"4.0.3";i:6;s:5:"4.0.1";i:7;s:5:"4.0.0";i:8;s:5:"3.2.1";i:9;s:5:"3.2.0";i:10;s:5:"3.1.1";i:11;s:5:"3.0.2";i:12;s:3:"3.0";i:13;s:3:"2.0";i:14;s:5:"1.0.0";}s:11:"lastversion";s:5:"4.5.0";}', 'no'); 
INSERT INTO `wp_options` VALUES (25531, '_site_transient_timeout_theme_roots', '1459461685', 'yes'); 
INSERT INTO `wp_options` VALUES (25541, '_site_transient_theme_roots', 'a:4:{s:10:"_tk-master";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'); 
INSERT INTO `wp_options` VALUES (25551, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1459461608;s:7:"checked";a:4:{s:10:"_tk-master";s:0:"";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.0";}s:8:"response";a:1:{s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.1.zip";}}s:12:"translations";a:0:{}}', 'yes'); 
INSERT INTO `wp_options` VALUES (25571, '_site_transient_timeout_browser_93c424ae4d0e7469a4221c7407b7931e', '1460066281', 'yes'); 
INSERT INTO `wp_options` VALUES (25581, '_site_transient_browser_93c424ae4d0e7469a4221c7407b7931e', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"48.0.2564.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'); 
INSERT INTO `wp_options` VALUES (25591, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1459472389', 'yes'); 
INSERT INTO `wp_options` VALUES (25601, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5800";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3598";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3560";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3071";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2756";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2287";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2191";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2062";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2009";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1981";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1967";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1922";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1843";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1654";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1572";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1549";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1523";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1351";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1292";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1276";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1194";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1091";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1056";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1002";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"965";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"949";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"909";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"901";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"900";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"887";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"882";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"828";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"806";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"786";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"758";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"753";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"748";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"741";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"741";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"740";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"733";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"731";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"693";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"686";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"678";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"675";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"670";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"666";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"649";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"640";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"638";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"632";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"610";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"594";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"589";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"588";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"585";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"585";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"574";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"566";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"558";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"553";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"544";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"540";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"528";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"524";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"513";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"510";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"509";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"496";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"496";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"494";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"486";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"469";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"457";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"453";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"439";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"439";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"437";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"437";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"436";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"423";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"418";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"415";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"414";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"410";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"407";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"405";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"405";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"399";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"396";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"392";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"388";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"388";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"388";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"388";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"388";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"386";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"384";}}', 'yes'); 
INSERT INTO `wp_options` VALUES (25631, '_transient_is_multi_author', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (25633, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1459461694;s:8:"response";a:5:{s:35:"backupwordpress/backupwordpress.php";O:8:"stdClass":8:{s:2:"id";s:3:"885";s:4:"slug";s:15:"backupwordpress";s:6:"plugin";s:35:"backupwordpress/backupwordpress.php";s:11:"new_version";s:5:"3.6.0";s:3:"url";s:46:"https://wordpress.org/plugins/backupwordpress/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/backupwordpress.3.6.0.zip";s:6:"tested";s:5:"4.4.2";s:13:"compatibility";b:0;}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":8:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.4.1.zip";s:6:"tested";s:3:"4.5";s:13:"compatibility";b:0;}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":8:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.3.1";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.3.1.zip";s:6:"tested";s:3:"4.5";s:13:"compatibility";b:0;}s:25:"duplicator/duplicator.php";O:8:"stdClass":8:{s:2:"id";s:5:"22600";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:5:"1.1.6";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/duplicator.1.1.6.zip";s:6:"tested";s:5:"4.4.2";s:13:"compatibility";b:0;}s:27:"ninja-forms/ninja-forms.php";O:8:"stdClass":8:{s:2:"id";s:5:"27901";s:4:"slug";s:11:"ninja-forms";s:6:"plugin";s:27:"ninja-forms/ninja-forms.php";s:11:"new_version";s:6:"2.9.39";s:3:"url";s:42:"https://wordpress.org/plugins/ninja-forms/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/ninja-forms.2.9.39.zip";s:6:"tested";s:5:"4.4.2";s:13:"compatibility";b:0;}}s:12:"translations";a:0:{}s:9:"no_update";a:19:{s:25:"accordions/accordions.php";O:8:"stdClass":6:{s:2:"id";s:5:"54742";s:4:"slug";s:10:"accordions";s:6:"plugin";s:25:"accordions/accordions.php";s:11:"new_version";s:5:"2.0.6";s:3:"url";s:41:"https://wordpress.org/plugins/accordions/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/accordions.zip";}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.5";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.5.zip";}s:43:"better-font-awesome/better-font-awesome.php";O:8:"stdClass":7:{s:2:"id";s:5:"49298";s:4:"slug";s:19:"better-font-awesome";s:6:"plugin";s:43:"better-font-awesome/better-font-awesome.php";s:11:"new_version";s:5:"1.5.0";s:3:"url";s:50:"https://wordpress.org/plugins/better-font-awesome/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/better-font-awesome.1.5.0.zip";s:14:"upgrade_notice";s:106:"Update fallback Font Awesome to v4.5.0.\nAdd new bfa_icon_tag to allow for filtering default &lt;i&gt; tag.";}s:45:"category-wise-search/category-wise-search.php";O:8:"stdClass":6:{s:2:"id";s:5:"38728";s:4:"slug";s:20:"category-wise-search";s:6:"plugin";s:45:"category-wise-search/category-wise-search.php";s:11:"new_version";s:3:"1.3";s:3:"url";s:51:"https://wordpress.org/plugins/category-wise-search/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/category-wise-search.zip";}s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";O:8:"stdClass":6:{s:2:"id";s:5:"40275";s:4:"slug";s:22:"cpt-bootstrap-carousel";s:6:"plugin";s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";s:11:"new_version";s:5:"1.9.1";s:3:"url";s:53:"https://wordpress.org/plugins/cpt-bootstrap-carousel/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/cpt-bootstrap-carousel.1.9.1.zip";}s:29:"custom-login/custom-login.php";O:8:"stdClass":6:{s:2:"id";s:4:"9612";s:4:"slug";s:12:"custom-login";s:6:"plugin";s:29:"custom-login/custom-login.php";s:11:"new_version";s:5:"3.2.4";s:3:"url";s:43:"https://wordpress.org/plugins/custom-login/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/custom-login.zip";}s:37:"fruitful-shortcodes/ff-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"50801";s:4:"slug";s:19:"fruitful-shortcodes";s:6:"plugin";s:37:"fruitful-shortcodes/ff-shortcodes.php";s:11:"new_version";s:3:"1.5";s:3:"url";s:50:"https://wordpress.org/plugins/fruitful-shortcodes/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/fruitful-shortcodes.1.5.zip";}s:46:"jquery-image-lazy-loading/jq_img_lazy_load.php";O:8:"stdClass":6:{s:2:"id";s:4:"8126";s:4:"slug";s:25:"jquery-image-lazy-loading";s:6:"plugin";s:46:"jquery-image-lazy-loading/jq_img_lazy_load.php";s:11:"new_version";s:5:"v0.21";s:3:"url";s:56:"https://wordpress.org/plugins/jquery-image-lazy-loading/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/jquery-image-lazy-loading.0.21.zip";}s:37:"plugin-organizer/plugin-organizer.php";O:8:"stdClass":7:{s:2:"id";s:5:"19456";s:4:"slug";s:16:"plugin-organizer";s:6:"plugin";s:37:"plugin-organizer/plugin-organizer.php";s:11:"new_version";s:5:"6.0.4";s:3:"url";s:47:"https://wordpress.org/plugins/plugin-organizer/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/plugin-organizer.6.0.4.zip";s:14:"upgrade_notice";s:245:"Fixed issue with missing css and javascript on certain custom post types.\nFixed issue with saving post type plugins.  An error was encountered some times when saving the plugins.\nAdded code to ensure the sql indexes exist to improve query times.";}s:25:"relevanssi/relevanssi.php";O:8:"stdClass":7:{s:2:"id";s:4:"8812";s:4:"slug";s:10:"relevanssi";s:6:"plugin";s:25:"relevanssi/relevanssi.php";s:11:"new_version";s:5:"3.5.2";s:3:"url";s:41:"https://wordpress.org/plugins/relevanssi/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/relevanssi.3.5.2.zip";s:14:"upgrade_notice";s:76:"Small fix: Relevanssi now supports term_taxonomy_id parameter in tax_queries";}s:45:"sendgrid-mailing-list/sendgridMailingList.php";O:8:"stdClass":6:{s:2:"id";s:5:"41968";s:4:"slug";s:21:"sendgrid-mailing-list";s:6:"plugin";s:45:"sendgrid-mailing-list/sendgridMailingList.php";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:52:"https://wordpress.org/plugins/sendgrid-mailing-list/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/sendgrid-mailing-list.1.1.2.zip";}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":6:{s:2:"id";s:3:"731";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.2.8";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.2.8.zip";}s:25:"widget-shortcode/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"27968";s:4:"slug";s:16:"widget-shortcode";s:6:"plugin";s:25:"widget-shortcode/init.php";s:11:"new_version";s:5:"0.2.3";s:3:"url";s:47:"https://wordpress.org/plugins/widget-shortcode/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/widget-shortcode.zip";}s:29:"wp-db-backup/wp-db-backup.php";O:8:"stdClass":6:{s:2:"id";s:3:"419";s:4:"slug";s:12:"wp-db-backup";s:6:"plugin";s:29:"wp-db-backup/wp-db-backup.php";s:11:"new_version";s:5:"2.3.1";s:3:"url";s:43:"https://wordpress.org/plugins/wp-db-backup/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-db-backup.2.3.1.zip";}s:27:"wp-optimize/wp-optimize.php";O:8:"stdClass":6:{s:2:"id";s:4:"6250";s:4:"slug";s:11:"wp-optimize";s:6:"plugin";s:27:"wp-optimize/wp-optimize.php";s:11:"new_version";s:8:"1.8.9.10";s:3:"url";s:42:"https://wordpress.org/plugins/wp-optimize/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-optimize.1.8.9.10.zip";}s:24:"wp-awesome-faq/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"41766";s:4:"slug";s:14:"wp-awesome-faq";s:6:"plugin";s:24:"wp-awesome-faq/index.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/wp-awesome-faq/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-awesome-faq.zip";}s:51:"wp-deferred-javascripts/wp-deferred-javascripts.php";O:8:"stdClass":6:{s:2:"id";s:5:"38080";s:4:"slug";s:23:"wp-deferred-javascripts";s:6:"plugin";s:51:"wp-deferred-javascripts/wp-deferred-javascripts.php";s:11:"new_version";s:5:"2.0.5";s:3:"url";s:54:"https://wordpress.org/plugins/wp-deferred-javascripts/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/wp-deferred-javascripts.zip";}s:31:"wp-migrate-db/wp-migrate-db.php";O:8:"stdClass":6:{s:2:"id";s:4:"9135";s:4:"slug";s:13:"wp-migrate-db";s:6:"plugin";s:31:"wp-migrate-db/wp-migrate-db.php";s:11:"new_version";s:5:"0.7.2";s:3:"url";s:44:"https://wordpress.org/plugins/wp-migrate-db/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-migrate-db.0.7.2.zip";}s:23:"wp-smushit/wp-smush.php";O:8:"stdClass":6:{s:2:"id";s:4:"5534";s:4:"slug";s:10:"wp-smushit";s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:11:"new_version";s:5:"2.1.5";s:3:"url";s:41:"https://wordpress.org/plugins/wp-smushit/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/wp-smushit.2.1.5.zip";}}}', 'yes'); 
INSERT INTO `wp_options` VALUES (25641, 'wp_db_backup_excs', 'a:2:{s:9:"revisions";a:1:{i:0;s:8:"wp_posts";}s:4:"spam";a:1:{i:0;s:11:"wp_comments";}}', 'yes');
#
# End of data contents of table `wp_options`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_postmeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_postmeta`
#
 
INSERT INTO `wp_postmeta` VALUES (1, 2, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (71, 11, '_edit_lock', '1454464886:1'); 
INSERT INTO `wp_postmeta` VALUES (81, 11, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (131, 151, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (141, 151, '_edit_lock', '1454962766:1'); 
INSERT INTO `wp_postmeta` VALUES (151, 171, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (161, 171, '_edit_lock', '1455722346:1'); 
INSERT INTO `wp_postmeta` VALUES (171, 191, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (181, 191, '_edit_lock', '1454519918:1'); 
INSERT INTO `wp_postmeta` VALUES (191, 221, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (201, 221, '_edit_lock', '1454698519:1'); 
INSERT INTO `wp_postmeta` VALUES (211, 241, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (221, 241, '_edit_lock', '1454527922:1'); 
INSERT INTO `wp_postmeta` VALUES (231, 261, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (241, 261, '_edit_lock', '1454520989:1'); 
INSERT INTO `wp_postmeta` VALUES (251, 271, '_wp_attached_file', '2016/02/2_Feature-Update-Email-Main_email-optimized-1024x921.png'); 
INSERT INTO `wp_postmeta` VALUES (261, 271, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:921;s:4:"file";s:64:"2016/02/2_Feature-Update-Email-Main_email-optimized-1024x921.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:64:"2_Feature-Update-Email-Main_email-optimized-1024x921-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:64:"2_Feature-Update-Email-Main_email-optimized-1024x921-300x270.png";s:5:"width";i:300;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:64:"2_Feature-Update-Email-Main_email-optimized-1024x921-768x691.png";s:5:"width";i:768;s:6:"height";i:691;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:65:"2_Feature-Update-Email-Main_email-optimized-1024x921-1024x921.png";s:5:"width";i:1024;s:6:"height";i:921;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (271, 311, '_wp_attached_file', '2016/02/support-section-1-bg.jpg'); 
INSERT INTO `wp_postmeta` VALUES (281, 311, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:720;s:4:"file";s:32:"2016/02/support-section-1-bg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"support-section-1-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"support-section-1-bg-300x114.jpg";s:5:"width";i:300;s:6:"height";i:114;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"support-section-1-bg-768x291.jpg";s:5:"width";i:768;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"support-section-1-bg-1024x388.jpg";s:5:"width";i:1024;s:6:"height";i:388;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (291, 171, '_thumbnail_id', '311'); 
INSERT INTO `wp_postmeta` VALUES (401, 421, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (411, 421, '_edit_lock', '1454555906:1'); 
INSERT INTO `wp_postmeta` VALUES (421, 421, 'accordions_collapsible', 'true'); 
INSERT INTO `wp_postmeta` VALUES (431, 421, 'accordions_heightStyle', 'content'); 
INSERT INTO `wp_postmeta` VALUES (441, 421, 'accordions_container_padding', ''); 
INSERT INTO `wp_postmeta` VALUES (451, 421, 'accordions_container_bg_color', ''); 
INSERT INTO `wp_postmeta` VALUES (461, 421, 'accordions_container_text_align', 'left'); 
INSERT INTO `wp_postmeta` VALUES (471, 421, 'accordions_bg_img', ''); 
INSERT INTO `wp_postmeta` VALUES (481, 421, 'accordions_themes', 'flat'); 
INSERT INTO `wp_postmeta` VALUES (491, 421, 'accordions_icons_plus', 'fa-chevron-up'); 
INSERT INTO `wp_postmeta` VALUES (501, 421, 'accordions_icons_minus', 'fa-chevron-down'); 
INSERT INTO `wp_postmeta` VALUES (511, 421, 'accordions_icons_font_size', ''); 
INSERT INTO `wp_postmeta` VALUES (521, 421, 'accordions_default_bg_color', '#ffffff'); 
INSERT INTO `wp_postmeta` VALUES (531, 421, 'accordions_active_bg_color', '#ffffff'); 
INSERT INTO `wp_postmeta` VALUES (541, 421, 'accordions_items_title_color', '#333333'); 
INSERT INTO `wp_postmeta` VALUES (551, 421, 'accordions_items_title_font_size', '14px'); 
INSERT INTO `wp_postmeta` VALUES (561, 421, 'accordions_items_content_color', '#333333'); 
INSERT INTO `wp_postmeta` VALUES (571, 421, 'accordions_items_content_font_size', '13px'); 
INSERT INTO `wp_postmeta` VALUES (581, 421, 'accordions_content_title', 'a:2:{i:0;s:41:"Will Wiser Air lower my electricity bill?";s:13:"1454527437134";s:64:"Will Wiser Air work with my heating and air conditioning system?";}'); 
INSERT INTO `wp_postmeta` VALUES (591, 421, 'accordions_content_body', 'a:2:{i:0;s:139:"Wiser Air has many tools to help you reduce your utility bill, such as Ready Mode scheduling, Comfort Boost, and EcoIQ (coming early 2016).";s:13:"1454527437134";s:50:"Please refer to our installation and wiring guide.";}'); 
INSERT INTO `wp_postmeta` VALUES (601, 421, 'accordions_hide', ''); 
INSERT INTO `wp_postmeta` VALUES (611, 421, 'accordions_custom_css', '#accordions-421{}\r\n#accordions-421 .accordions-head{}\r\n#accordions-421 .accordion-content{}'); 
INSERT INTO `wp_postmeta` VALUES (621, 471, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (631, 471, '_edit_lock', '1454555877:1'); 
INSERT INTO `wp_postmeta` VALUES (641, 471, 'accordions_collapsible', 'true'); 
INSERT INTO `wp_postmeta` VALUES (651, 471, 'accordions_heightStyle', 'content'); 
INSERT INTO `wp_postmeta` VALUES (661, 471, 'accordions_container_padding', ''); 
INSERT INTO `wp_postmeta` VALUES (671, 471, 'accordions_container_bg_color', ''); 
INSERT INTO `wp_postmeta` VALUES (681, 471, 'accordions_container_text_align', 'left'); 
INSERT INTO `wp_postmeta` VALUES (691, 471, 'accordions_bg_img', ''); 
INSERT INTO `wp_postmeta` VALUES (701, 471, 'accordions_themes', 'flat'); 
INSERT INTO `wp_postmeta` VALUES (711, 471, 'accordions_icons_plus', 'fa-chevron-up'); 
INSERT INTO `wp_postmeta` VALUES (721, 471, 'accordions_icons_minus', 'fa-chevron-down'); 
INSERT INTO `wp_postmeta` VALUES (731, 471, 'accordions_icons_font_size', ''); 
INSERT INTO `wp_postmeta` VALUES (741, 471, 'accordions_default_bg_color', '#ffffff'); 
INSERT INTO `wp_postmeta` VALUES (751, 471, 'accordions_active_bg_color', '#ffffff'); 
INSERT INTO `wp_postmeta` VALUES (761, 471, 'accordions_items_title_color', '#333333'); 
INSERT INTO `wp_postmeta` VALUES (771, 471, 'accordions_items_title_font_size', '14px'); 
INSERT INTO `wp_postmeta` VALUES (781, 471, 'accordions_items_content_color', '#333333'); 
INSERT INTO `wp_postmeta` VALUES (791, 471, 'accordions_items_content_font_size', '13px'); 
INSERT INTO `wp_postmeta` VALUES (801, 471, 'accordions_content_title', 'a:1:{i:0;s:31:"Where can I purchase wiser air?";}'); 
INSERT INTO `wp_postmeta` VALUES (811, 471, 'accordions_content_body', 'a:1:{i:0;s:4:"Etc.";}'); 
INSERT INTO `wp_postmeta` VALUES (821, 471, 'accordions_hide', ''); 
INSERT INTO `wp_postmeta` VALUES (831, 471, 'accordions_custom_css', '#accordions-471{}\r\n#accordions-471 .accordions-head{}\r\n#accordions-471 .accordion-content{}'); 
INSERT INTO `wp_postmeta` VALUES (841, 171, '_wp_page_template', 'page-support.php'); 
INSERT INTO `wp_postmeta` VALUES (851, 551, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (861, 551, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (871, 551, '_menu_item_object_id', '551'); 
INSERT INTO `wp_postmeta` VALUES (881, 551, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (891, 551, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (901, 551, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (911, 551, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (921, 551, '_menu_item_url', 'http://dev-wiserair-mlp.azurewebsites.net/'); 
INSERT INTO `wp_postmeta` VALUES (931, 551, '_menu_item_orphaned', '1454531802'); 
INSERT INTO `wp_postmeta` VALUES (941, 561, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (951, 561, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (961, 561, '_menu_item_object_id', '151'); 
INSERT INTO `wp_postmeta` VALUES (971, 561, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (981, 561, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (991, 561, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1001, 561, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1011, 561, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (1021, 561, '_menu_item_orphaned', '1454531802'); 
INSERT INTO `wp_postmeta` VALUES (1031, 571, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (1041, 571, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (1051, 571, '_menu_item_object_id', '221'); 
INSERT INTO `wp_postmeta` VALUES (1061, 571, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (1071, 571, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (1081, 571, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1091, 571, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1101, 571, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (1111, 571, '_menu_item_orphaned', '1454531803'); 
INSERT INTO `wp_postmeta` VALUES (1121, 581, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (1131, 581, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (1141, 581, '_menu_item_object_id', '191'); 
INSERT INTO `wp_postmeta` VALUES (1151, 581, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (1161, 581, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (1171, 581, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1181, 581, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1191, 581, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (1201, 581, '_menu_item_orphaned', '1454531803'); 
INSERT INTO `wp_postmeta` VALUES (1211, 591, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (1221, 591, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (1231, 591, '_menu_item_object_id', '11'); 
INSERT INTO `wp_postmeta` VALUES (1241, 591, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (1251, 591, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (1261, 591, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1271, 591, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1281, 591, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (1291, 591, '_menu_item_orphaned', '1454531803'); 
INSERT INTO `wp_postmeta` VALUES (1301, 601, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (1311, 601, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (1321, 601, '_menu_item_object_id', '171'); 
INSERT INTO `wp_postmeta` VALUES (1331, 601, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (1341, 601, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (1351, 601, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1361, 601, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1371, 601, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (1381, 601, '_menu_item_orphaned', '1454531803'); 
INSERT INTO `wp_postmeta` VALUES (1391, 611, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (1401, 611, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (1411, 611, '_menu_item_object_id', '241'); 
INSERT INTO `wp_postmeta` VALUES (1421, 611, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (1431, 611, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (1441, 611, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1451, 611, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1461, 611, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (1471, 611, '_menu_item_orphaned', '1454531803'); 
INSERT INTO `wp_postmeta` VALUES (1481, 621, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (1491, 621, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (1501, 621, '_menu_item_object_id', '261'); 
INSERT INTO `wp_postmeta` VALUES (1511, 621, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (1521, 621, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (1531, 621, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1541, 621, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1551, 621, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (1561, 621, '_menu_item_orphaned', '1454531803'); 
INSERT INTO `wp_postmeta` VALUES (1571, 631, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (1581, 631, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (1591, 631, '_menu_item_object_id', '631'); 
INSERT INTO `wp_postmeta` VALUES (1601, 631, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (1611, 631, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (1621, 631, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (1631, 631, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (1641, 631, '_menu_item_url', 'https://www.wiserair.com/'); 
INSERT INTO `wp_postmeta` VALUES (1651, 631, '_menu_item_orphaned', '1454531873'); 
INSERT INTO `wp_postmeta` VALUES (2103, 683, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2113, 683, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (2123, 683, '_menu_item_object_id', '683'); 
INSERT INTO `wp_postmeta` VALUES (2133, 683, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2143, 683, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (2153, 683, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (2163, 683, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (2173, 683, '_menu_item_url', 'https://air.wiserhome.com/#signin'); 
INSERT INTO `wp_postmeta` VALUES (2281, 701, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2291, 701, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (2301, 701, '_menu_item_object_id', '701'); 
INSERT INTO `wp_postmeta` VALUES (2311, 701, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2321, 701, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (2331, 701, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (2341, 701, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (2351, 701, '_menu_item_url', '#'); 
INSERT INTO `wp_postmeta` VALUES (2371, 711, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2381, 711, '_menu_item_menu_item_parent', '701'); 
INSERT INTO `wp_postmeta` VALUES (2391, 711, '_menu_item_object_id', '711'); 
INSERT INTO `wp_postmeta` VALUES (2401, 711, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2411, 711, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (2421, 711, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (2431, 711, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (2441, 711, '_menu_item_url', 'http://www.amazon.com/dp/B00X6BCRK6'); 
INSERT INTO `wp_postmeta` VALUES (2461, 721, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2471, 721, '_menu_item_menu_item_parent', '701'); 
INSERT INTO `wp_postmeta` VALUES (2481, 721, '_menu_item_object_id', '721'); 
INSERT INTO `wp_postmeta` VALUES (2491, 721, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2501, 721, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (2511, 721, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (2521, 721, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (2531, 721, '_menu_item_url', 'http://www.homedepot.com/p/Schneider-Electric-Wiser-Air-Wi-Fi-Smart-Programmable-Thermostat-with-Comfort-Boost-and-Touch-Screen-Display-in-White-WISERAIR10WHTUS/206369501'); 
INSERT INTO `wp_postmeta` VALUES (2551, 731, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2561, 731, '_menu_item_menu_item_parent', '701'); 
INSERT INTO `wp_postmeta` VALUES (2571, 731, '_menu_item_object_id', '731'); 
INSERT INTO `wp_postmeta` VALUES (2581, 731, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (2591, 731, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (2601, 731, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (2611, 731, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (2621, 731, '_menu_item_url', 'http://controlscentral.com/eCatalog/tabid/63/ProductID/733618/'); 
INSERT INTO `wp_postmeta` VALUES (2641, 151, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (2691, 771, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (2701, 771, '_rtbs_tabs_head', 'a:2:{i:0;a:3:{s:16:"_rtbs_tab_header";s:0:"";s:11:"_rtbs_title";s:4:"Test";s:13:"_rtbs_content";s:2:"hi";}i:1;a:1:{s:11:"_rtbs_title";s:4:"Test";}}'); 
INSERT INTO `wp_postmeta` VALUES (2711, 771, '_rtbs_breakpoint', '600'); 
INSERT INTO `wp_postmeta` VALUES (2721, 771, '_edit_lock', '1454533783:1'); 
INSERT INTO `wp_postmeta` VALUES (2751, 221, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (2781, 901, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'); 
INSERT INTO `wp_postmeta` VALUES (2791, 901, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:58:"[your-name] <wordpress@dev-wiserair-mlp.azurewebsites.net>";s:4:"body";s:188:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Wiser Air (http://dev-wiserair-mlp.azurewebsites.net)";s:9:"recipient";s:15:"brittg88@me.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (2801, 901, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:56:"Wiser Air <wordpress@dev-wiserair-mlp.azurewebsites.net>";s:4:"body";s:130:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Wiser Air (http://dev-wiserair-mlp.azurewebsites.net)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:25:"Reply-To: brittg88@me.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (2811, 901, '_messages', 'a:8:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";}'); 
INSERT INTO `wp_postmeta` VALUES (2821, 901, '_additional_settings', ''); 
INSERT INTO `wp_postmeta` VALUES (2831, 901, '_locale', 'en_US'); 
INSERT INTO `wp_postmeta` VALUES (2841, 911, '_form', '<div class="left">\n<p>[text* your-name placeholder="Full Name"] </p>\n<p>[email* your-email placeholder="Email Address" ] </p>\n<p>[text your-subject placeholder="Phone Number"] </p>\n<p>[checkbox checkbox-931 label_first "Do you own a Wiser Air?"] </p>\n</div>\n\n<div class="right">\n<p>[textarea your-message placeholder="Please explain in detail what you need help with?"] </p>\n</div>\n<div class="clear"></div>\n<div class="text-center upload">\n<p>Click to Upload a relevant file<br />\n[file UploadFile]</p>\n</div>\n<div class="text-center">\n<p>[submit "Send"]</p>\n</div>'); 
INSERT INTO `wp_postmeta` VALUES (2851, 911, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:58:"[your-name] <wordpress@dev-wiserair-mlp.azurewebsites.net>";s:4:"body";s:188:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Wiser Air (http://dev-wiserair-mlp.azurewebsites.net)";s:9:"recipient";s:15:"brittg88@me.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'); 
INSERT INTO `wp_postmeta` VALUES (2861, 911, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:56:"Wiser Air <wordpress@dev-wiserair-mlp.azurewebsites.net>";s:4:"body";s:130:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Wiser Air (http://dev-wiserair-mlp.azurewebsites.net)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:25:"Reply-To: brittg88@me.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'); 
INSERT INTO `wp_postmeta` VALUES (2871, 911, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";}'); 
INSERT INTO `wp_postmeta` VALUES (2881, 911, '_additional_settings', ''); 
INSERT INTO `wp_postmeta` VALUES (2891, 911, '_locale', 'en_US'); 
INSERT INTO `wp_postmeta` VALUES (2941, 961, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (2951, 961, 'field_56b8f8016f0a4', 'a:14:{s:3:"key";s:19:"field_56b8f8016f0a4";s:5:"label";s:16:"Support Subtitle";s:4:"name";s:16:"support_subtitle";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (2961, 961, 'field_56b8f80d6f0a5', 'a:11:{s:3:"key";s:19:"field_56b8f80d6f0a5";s:5:"label";s:21:"Subtitle Support Text";s:4:"name";s:15:"support_content";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'); 
INSERT INTO `wp_postmeta` VALUES (2991, 961, 'position', 'normal'); 
INSERT INTO `wp_postmeta` VALUES (3001, 961, 'layout', 'no_box'); 
INSERT INTO `wp_postmeta` VALUES (3011, 961, 'hide_on_screen', ''); 
INSERT INTO `wp_postmeta` VALUES (3021, 961, '_edit_lock', '1455663730:1'); 
INSERT INTO `wp_postmeta` VALUES (3041, 971, 'support_subtitle', 'This is a subtitle'); 
INSERT INTO `wp_postmeta` VALUES (3051, 971, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3061, 971, 'support_', 'Try me.'); 
INSERT INTO `wp_postmeta` VALUES (3071, 971, '_support_', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3081, 971, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3091, 171, 'support_subtitle', 'Support'); 
INSERT INTO `wp_postmeta` VALUES (3101, 171, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3111, 171, 'support_', 'Try me.'); 
INSERT INTO `wp_postmeta` VALUES (3121, 171, '_support_', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3131, 171, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3191, 1001, 'support_subtitle', 'This is a subtitle'); 
INSERT INTO `wp_postmeta` VALUES (3201, 1001, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3211, 1001, 'support_content', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'); 
INSERT INTO `wp_postmeta` VALUES (3221, 1001, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3231, 1001, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3241, 171, 'support_content', 'Having trouble? We’re here to help.\r\n\r\nCheck out our resources below, or contact our technical support team with your question.'); 
INSERT INTO `wp_postmeta` VALUES (3251, 171, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3361, 1061, 'support_subtitle', 'This is a subtitle'); 
INSERT INTO `wp_postmeta` VALUES (3371, 1061, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3381, 1061, 'support_content', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'); 
INSERT INTO `wp_postmeta` VALUES (3391, 1061, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3401, 1061, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3411, 1081, 'support_subtitle', 'This is a subtitle'); 
INSERT INTO `wp_postmeta` VALUES (3421, 1081, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3431, 1081, 'support_content', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'); 
INSERT INTO `wp_postmeta` VALUES (3441, 1081, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3451, 1081, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3461, 1091, 'support_subtitle', 'This is a subtitle'); 
INSERT INTO `wp_postmeta` VALUES (3471, 1091, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3481, 1091, 'support_content', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'); 
INSERT INTO `wp_postmeta` VALUES (3491, 1091, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3501, 1091, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3511, 1101, 'support_subtitle', 'This is a subtitle'); 
INSERT INTO `wp_postmeta` VALUES (3521, 1101, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3531, 1101, 'support_content', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer.'); 
INSERT INTO `wp_postmeta` VALUES (3541, 1101, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3551, 1101, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3561, 1111, '_wp_attached_file', '2016/02/favicon.png'); 
INSERT INTO `wp_postmeta` VALUES (3571, 1111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:60;s:6:"height";i:60;s:4:"file";s:19:"2016/02/favicon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (3581, 1121, '_wp_attached_file', '2016/02/favicon-1.png'); 
INSERT INTO `wp_postmeta` VALUES (3591, 1121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:70;s:6:"height";i:70;s:4:"file";s:21:"2016/02/favicon-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (3601, 1131, 'support_subtitle', 'Support'); 
INSERT INTO `wp_postmeta` VALUES (3611, 1131, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (3621, 1131, 'support_content', 'Having trouble? We’re here to help. Check out our guides and resources below, or contact our technical support team with your question.\r\n\r\n<a href="https://m.wiserair.com/up-close/" class="button">Quickstart Guide</a>'); 
INSERT INTO `wp_postmeta` VALUES (3631, 1131, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (3641, 1131, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (3711, 1141, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3721, 1141, '_edit_lock', '1455047145:1'); 
INSERT INTO `wp_postmeta` VALUES (3731, 1151, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3741, 1151, '_edit_lock', '1455047197:1'); 
INSERT INTO `wp_postmeta` VALUES (3751, 1161, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3761, 1161, '_edit_lock', '1455047248:1'); 
INSERT INTO `wp_postmeta` VALUES (3771, 1171, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3781, 1171, '_edit_lock', '1455047298:1'); 
INSERT INTO `wp_postmeta` VALUES (3791, 1181, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3801, 1181, '_edit_lock', '1455047350:1'); 
INSERT INTO `wp_postmeta` VALUES (3811, 1191, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3821, 1191, '_edit_lock', '1455047535:1'); 
INSERT INTO `wp_postmeta` VALUES (3831, 1201, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3841, 1201, '_edit_lock', '1455047486:1'); 
INSERT INTO `wp_postmeta` VALUES (3851, 1211, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3861, 1211, '_edit_lock', '1455047680:1'); 
INSERT INTO `wp_postmeta` VALUES (3871, 1221, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3881, 1221, '_edit_lock', '1455047741:1'); 
INSERT INTO `wp_postmeta` VALUES (3891, 1223, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3901, 1223, '_edit_lock', '1455048047:1'); 
INSERT INTO `wp_postmeta` VALUES (3911, 1231, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3921, 1231, '_edit_lock', '1455048159:1'); 
INSERT INTO `wp_postmeta` VALUES (3931, 1241, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3941, 1241, '_edit_lock', '1455048200:1'); 
INSERT INTO `wp_postmeta` VALUES (3951, 1251, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3961, 1251, '_edit_lock', '1455048252:1'); 
INSERT INTO `wp_postmeta` VALUES (3971, 1261, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (3981, 1261, '_edit_lock', '1455048292:1'); 
INSERT INTO `wp_postmeta` VALUES (3991, 1271, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4001, 1271, '_edit_lock', '1455048416:1'); 
INSERT INTO `wp_postmeta` VALUES (4011, 1281, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4021, 1281, '_edit_lock', '1455048451:1'); 
INSERT INTO `wp_postmeta` VALUES (4031, 1291, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4041, 1291, '_edit_lock', '1455048472:1'); 
INSERT INTO `wp_postmeta` VALUES (4051, 1301, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4061, 1301, '_edit_lock', '1455048502:1'); 
INSERT INTO `wp_postmeta` VALUES (4071, 1311, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4081, 1311, '_edit_lock', '1455048545:1'); 
INSERT INTO `wp_postmeta` VALUES (4091, 1321, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4101, 1321, '_edit_lock', '1455048578:1'); 
INSERT INTO `wp_postmeta` VALUES (4111, 1323, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4121, 1323, '_edit_lock', '1455048597:1'); 
INSERT INTO `wp_postmeta` VALUES (4131, 1331, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4141, 1331, '_edit_lock', '1455048624:1'); 
INSERT INTO `wp_postmeta` VALUES (4151, 1341, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4161, 1341, '_edit_lock', '1455048642:1'); 
INSERT INTO `wp_postmeta` VALUES (4171, 1351, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4181, 1351, '_edit_lock', '1455048669:1'); 
INSERT INTO `wp_postmeta` VALUES (4191, 1361, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4201, 1361, '_edit_lock', '1455573060:1'); 
INSERT INTO `wp_postmeta` VALUES (4211, 1371, 'support_subtitle', 'Support'); 
INSERT INTO `wp_postmeta` VALUES (4221, 1371, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (4231, 1371, 'support_content', 'Having trouble? We’re here to help. Check out our guides and resources below, or contact our technical support team with your question.\r\n\r\n<br /><a href="https://m.wiserair.com/up-close/" class="button">Quickstart Guide</a>'); 
INSERT INTO `wp_postmeta` VALUES (4241, 1371, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (4251, 1371, '_', 'field_56b8f8346f0a6'); 
INSERT INTO `wp_postmeta` VALUES (4271, 1381, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4281, 1381, '_edit_lock', '1455640292:1'); 
INSERT INTO `wp_postmeta` VALUES (4381, 1441, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4391, 1441, '_wp_page_template', 'page-utilities.php'); 
INSERT INTO `wp_postmeta` VALUES (4401, 1451, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (4411, 1451, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (4421, 1451, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (4431, 1451, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (4441, 1441, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (4451, 1441, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (4461, 1441, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (4471, 1441, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (4481, 1441, '_edit_lock', '1455303276:1'); 
INSERT INTO `wp_postmeta` VALUES (4491, 1471, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (4501, 1471, 'field_56bd2543ab0cb', 'a:14:{s:3:"key";s:19:"field_56bd2543ab0cb";s:5:"label";s:16:"Section 1: Title";s:4:"name";s:15:"section_1_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (4511, 1471, 'field_56bd2566ab0cc', 'a:13:{s:3:"key";s:19:"field_56bd2566ab0cc";s:5:"label";s:19:"Section 1: Subtitle";s:4:"name";s:18:"section_1_subtitle";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"5";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'); 
INSERT INTO `wp_postmeta` VALUES (4531, 1471, 'position', 'normal'); 
INSERT INTO `wp_postmeta` VALUES (4541, 1471, 'layout', 'no_box'); 
INSERT INTO `wp_postmeta` VALUES (4551, 1471, 'hide_on_screen', ''); 
INSERT INTO `wp_postmeta` VALUES (4561, 1471, '_edit_lock', '1455296374:1'); 
INSERT INTO `wp_postmeta` VALUES (4631, 1481, 'section_1_utility_title', 'Tailored for Utilities. Personalized by Customers.'); 
INSERT INTO `wp_postmeta` VALUES (4641, 1481, '_section_1_utility_title', 'field_56bd2543ab0cb'); 
INSERT INTO `wp_postmeta` VALUES (4651, 1481, 'section_1_subtitle', 'Wiser Air is just one part of an end-to-end solution from Schneider Electric. Wiser residential energy management, you\'ll have the confidence to balance the grid, meet regulations, and increase customer happiness.'); 
INSERT INTO `wp_postmeta` VALUES (4661, 1481, '_section_1_subtitle', 'field_56bd2566ab0cc'); 
INSERT INTO `wp_postmeta` VALUES (4671, 1441, 'section_1_utility_title', 'Tailored for Utilities. Personalized by Customers.'); 
INSERT INTO `wp_postmeta` VALUES (4681, 1441, '_section_1_utility_title', 'field_56bd2543ab0cb'); 
INSERT INTO `wp_postmeta` VALUES (4691, 1441, 'section_1_subtitle', 'Wiser Air is just one part of an end-to-end solution from Schneider Electric. Wiser residential energy management, you\'ll have the confidence to balance the grid, meet regulations, and increase customer happiness.'); 
INSERT INTO `wp_postmeta` VALUES (4701, 1441, '_section_1_subtitle', 'field_56bd2566ab0cc'); 
INSERT INTO `wp_postmeta` VALUES (4721, 1471, 'field_56bd28c9e4f3b', 'a:14:{s:3:"key";s:19:"field_56bd28c9e4f3b";s:5:"label";s:16:"Section 2: Title";s:4:"name";s:15:"section_2_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'); 
INSERT INTO `wp_postmeta` VALUES (4731, 1471, 'field_56bd2907e4f3c', 'a:13:{s:3:"key";s:19:"field_56bd2907e4f3c";s:5:"label";s:19:"Section 2: Subtitle";s:4:"name";s:18:"section_2_subtitle";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"5";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'); 
INSERT INTO `wp_postmeta` VALUES (4751, 1491, 'section_1_title', 'Tailored by Utilities. Personalized by Customers.'); 
INSERT INTO `wp_postmeta` VALUES (4761, 1491, '_section_1_title', 'field_56bd2543ab0cb'); 
INSERT INTO `wp_postmeta` VALUES (4771, 1491, 'section_1_subtitle', 'Wiser Air is just one part of an end-to-end solution from Schneider Electric. Wiser residential energy management, you\'ll have the confidence to balance the grid, meet regulations, and increase customer happiness.'); 
INSERT INTO `wp_postmeta` VALUES (4781, 1491, '_section_1_subtitle', 'field_56bd2566ab0cc'); 
INSERT INTO `wp_postmeta` VALUES (4791, 1491, 'section_2_title', ''); 
INSERT INTO `wp_postmeta` VALUES (4801, 1491, '_section_2_title', 'field_56bd28c9e4f3b'); 
INSERT INTO `wp_postmeta` VALUES (4811, 1491, 'section_2:_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (4821, 1491, '_section_2:_subtitle', 'field_56bd2907e4f3c'); 
INSERT INTO `wp_postmeta` VALUES (4831, 1441, 'section_1_title', 'Tailored by Utilities. Personalized by Customers.'); 
INSERT INTO `wp_postmeta` VALUES (4841, 1441, '_section_1_title', 'field_56bd2543ab0cb'); 
INSERT INTO `wp_postmeta` VALUES (4851, 1441, 'section_2_title', 'Customized End-to-End Energy Management'); 
INSERT INTO `wp_postmeta` VALUES (4861, 1441, '_section_2_title', 'field_56bd28c9e4f3b'); 
INSERT INTO `wp_postmeta` VALUES (4871, 1441, 'section_2:_subtitle', 'Bringing your utility new levels of insight and engagement. Wiser Air is an unrivaled smart thermostat touchpoint for connecting with your customers. From utility-specific branding on all user interfaces, to a message center that enables direct communication, it just the beginning of an complete solution to help you manage residential demand. '); 
INSERT INTO `wp_postmeta` VALUES (4881, 1441, '_section_2:_subtitle', 'field_56bd2907e4f3c'); 
INSERT INTO `wp_postmeta` VALUES (4891, 1501, 'section_1_title', 'Tailored by Utilities. Personalized by Customers.'); 
INSERT INTO `wp_postmeta` VALUES (4901, 1501, '_section_1_title', 'field_56bd2543ab0cb'); 
INSERT INTO `wp_postmeta` VALUES (4911, 1501, 'section_1_subtitle', 'Wiser Air is just one part of an end-to-end solution from Schneider Electric. Wiser residential energy management, you\'ll have the confidence to balance the grid, meet regulations, and increase customer happiness.'); 
INSERT INTO `wp_postmeta` VALUES (4921, 1501, '_section_1_subtitle', 'field_56bd2566ab0cc'); 
INSERT INTO `wp_postmeta` VALUES (4931, 1501, 'section_2_title', 'Customized End-to-End Energy Management'); 
INSERT INTO `wp_postmeta` VALUES (4941, 1501, '_section_2_title', 'field_56bd28c9e4f3b'); 
INSERT INTO `wp_postmeta` VALUES (4951, 1501, 'section_2:_subtitle', 'Bringing your utility new levels of insight and engagement. Wiser Air is an unrivaled smart thermostat touchpoint for connecting with your customers. From utility-specific branding on all user interfaces, to a message center that enables direct communication, it just the beginning of an complete solution to help you manage residential demand. '); 
INSERT INTO `wp_postmeta` VALUES (4961, 1501, '_section_2:_subtitle', 'field_56bd2907e4f3c'); 
INSERT INTO `wp_postmeta` VALUES (4971, 1471, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:18:"page-utilities.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (4981, 1441, 'section_2_subtitle', 'Bringing your utility new levels of insight and engagement. Wiser Air is an unrivaled smart thermostat touchpoint for connecting with your customers. From utility-specific branding on all user interfaces, to a message center that enables direct communication, it just the beginning of an complete solution to help you manage residential demand. '); 
INSERT INTO `wp_postmeta` VALUES (4991, 1441, '_section_2_subtitle', 'field_56bd2907e4f3c'); 
INSERT INTO `wp_postmeta` VALUES (5001, 1511, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5011, 1511, '_edit_lock', '1455295195:1'); 
INSERT INTO `wp_postmeta` VALUES (5021, 1521, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5031, 1521, '_edit_lock', '1455238263:1'); 
INSERT INTO `wp_postmeta` VALUES (5081, 1541, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5091, 1541, '_edit_lock', '1455295355:1'); 
INSERT INTO `wp_postmeta` VALUES (5101, 1551, '_wp_attached_file', '2016/02/5.0.0_reduced_risk.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5111, 1551, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:220;s:4:"file";s:30:"2016/02/5.0.0_reduced_risk.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"5.0.0_reduced_risk-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5121, 1541, '_thumbnail_id', '1551'); 
INSERT INTO `wp_postmeta` VALUES (5131, 1561, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5141, 1561, '_edit_lock', '1455295429:1'); 
INSERT INTO `wp_postmeta` VALUES (5151, 1571, '_wp_attached_file', '2016/02/5.0.0_operational_efficiency.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5161, 1571, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:220;s:4:"file";s:40:"2016/02/5.0.0_operational_efficiency.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"5.0.0_operational_efficiency-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5171, 1561, '_thumbnail_id', '1571'); 
INSERT INTO `wp_postmeta` VALUES (5181, 1581, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5191, 1581, '_edit_lock', '1455295475:1'); 
INSERT INTO `wp_postmeta` VALUES (5201, 1591, '_wp_attached_file', '2016/02/5.0.0_visibility_feedback.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5211, 1591, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:220;s:4:"file";s:37:"2016/02/5.0.0_visibility_feedback.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"5.0.0_visibility_feedback-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5221, 1581, '_thumbnail_id', '1591'); 
INSERT INTO `wp_postmeta` VALUES (5231, 1601, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5241, 1601, '_edit_lock', '1455295813:1'); 
INSERT INTO `wp_postmeta` VALUES (5251, 1611, '_wp_attached_file', '2016/02/5.0.0_consumer_engagement.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5261, 1611, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:220;s:4:"file";s:37:"2016/02/5.0.0_consumer_engagement.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"5.0.0_consumer_engagement-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5271, 1601, '_thumbnail_id', '1611'); 
INSERT INTO `wp_postmeta` VALUES (5281, 1621, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5291, 1621, '_edit_lock', '1455297321:1'); 
INSERT INTO `wp_postmeta` VALUES (5301, 1621, '_thumbnail_id', '1551'); 
INSERT INTO `wp_postmeta` VALUES (5311, 1631, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5321, 1631, '_edit_lock', '1455297382:1'); 
INSERT INTO `wp_postmeta` VALUES (5331, 1631, '_thumbnail_id', '1571'); 
INSERT INTO `wp_postmeta` VALUES (5341, 1633, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5351, 1633, '_edit_lock', '1455297422:1'); 
INSERT INTO `wp_postmeta` VALUES (5361, 1633, '_thumbnail_id', '1591'); 
INSERT INTO `wp_postmeta` VALUES (5371, 1641, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5381, 1641, '_edit_lock', '1455297586:1'); 
INSERT INTO `wp_postmeta` VALUES (5391, 1641, '_thumbnail_id', '1611'); 
INSERT INTO `wp_postmeta` VALUES (5401, 1661, '_wp_attached_file', '2016/02/1.4.0_background.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5411, 1661, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:720;s:4:"file";s:28:"2016/02/1.4.0_background.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"1.4.0_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"1.4.0_background-300x114.jpg";s:5:"width";i:300;s:6:"height";i:114;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"1.4.0_background-768x291.jpg";s:5:"width";i:768;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"1.4.0_background-1024x388.jpg";s:5:"width";i:1024;s:6:"height";i:388;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:27:"1.4.0_background-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5421, 1651, '_thumbnail_id', '1661'); 
INSERT INTO `wp_postmeta` VALUES (5431, 1651, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5441, 1651, '_edit_lock', '1455304379:1'); 
INSERT INTO `wp_postmeta` VALUES (5451, 1651, 'cptbc_image_url', ''); 
INSERT INTO `wp_postmeta` VALUES (5461, 1651, 'cptbc_image_url_openblank', '0'); 
INSERT INTO `wp_postmeta` VALUES (5471, 1651, 'cptbc_image_link_text', ''); 
INSERT INTO `wp_postmeta` VALUES (5481, 1671, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5491, 1671, '_edit_lock', '1455304436:1'); 
INSERT INTO `wp_postmeta` VALUES (5501, 1681, '_wp_attached_file', '2016/02/5.3.0_background.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5511, 1681, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1902;s:6:"height";i:720;s:4:"file";s:28:"2016/02/5.3.0_background.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"5.3.0_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"5.3.0_background-300x114.jpg";s:5:"width";i:300;s:6:"height";i:114;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"5.3.0_background-768x291.jpg";s:5:"width";i:768;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"5.3.0_background-1024x388.jpg";s:5:"width";i:1024;s:6:"height";i:388;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:27:"5.3.0_background-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5521, 1671, '_thumbnail_id', '1681'); 
INSERT INTO `wp_postmeta` VALUES (5531, 1671, 'cptbc_image_url', ''); 
INSERT INTO `wp_postmeta` VALUES (5541, 1671, 'cptbc_image_url_openblank', '0'); 
INSERT INTO `wp_postmeta` VALUES (5551, 1671, 'cptbc_image_link_text', ''); 
INSERT INTO `wp_postmeta` VALUES (5561, 1691, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5571, 1691, '_edit_lock', '1455304525:1'); 
INSERT INTO `wp_postmeta` VALUES (5581, 1701, '_wp_attached_file', '2016/02/5.4.0_background.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5591, 1701, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1990;s:6:"height";i:720;s:4:"file";s:28:"2016/02/5.4.0_background.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"5.4.0_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"5.4.0_background-300x109.jpg";s:5:"width";i:300;s:6:"height";i:109;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"5.4.0_background-768x278.jpg";s:5:"width";i:768;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"5.4.0_background-1024x370.jpg";s:5:"width";i:1024;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:27:"5.4.0_background-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5601, 1691, '_thumbnail_id', '1701'); 
INSERT INTO `wp_postmeta` VALUES (5611, 1691, 'cptbc_image_url', ''); 
INSERT INTO `wp_postmeta` VALUES (5621, 1691, 'cptbc_image_url_openblank', '0'); 
INSERT INTO `wp_postmeta` VALUES (5631, 1691, 'cptbc_image_link_text', ''); 
INSERT INTO `wp_postmeta` VALUES (5641, 1711, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5651, 1711, '_edit_lock', '1456844744:1'); 
INSERT INTO `wp_postmeta` VALUES (5661, 1721, '_wp_attached_file', '2016/02/5.5.0_background.jpg'); 
INSERT INTO `wp_postmeta` VALUES (5671, 1721, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:720;s:4:"file";s:28:"2016/02/5.5.0_background.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"5.5.0_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"5.5.0_background-300x114.jpg";s:5:"width";i:300;s:6:"height";i:114;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"5.5.0_background-768x291.jpg";s:5:"width";i:768;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"5.5.0_background-1024x388.jpg";s:5:"width";i:1024;s:6:"height";i:388;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:27:"5.5.0_background-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (5681, 1711, '_thumbnail_id', '1721'); 
INSERT INTO `wp_postmeta` VALUES (5691, 1711, 'cptbc_image_url', ''); 
INSERT INTO `wp_postmeta` VALUES (5701, 1711, 'cptbc_image_url_openblank', '0'); 
INSERT INTO `wp_postmeta` VALUES (5711, 1711, 'cptbc_image_link_text', ''); 
INSERT INTO `wp_postmeta` VALUES (5721, 1731, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5731, 1731, 'field_56be388b6ad6d', 'a:14:{s:3:"key";s:19:"field_56be388b6ad6d";s:5:"label";s:25:"Homepage Section 1: Title";s:4:"name";s:24:"homepage_section_1_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (5741, 1731, 'field_56be38a56ad6e', 'a:13:{s:3:"key";s:19:"field_56be38a56ad6e";s:5:"label";s:28:"Homepage Section 1: Subtitle";s:4:"name";s:27:"homepage_section_1_subtitle";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:1:"5";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'); 
INSERT INTO `wp_postmeta` VALUES (5751, 1731, 'field_56be38c56ad6f', 'a:11:{s:3:"key";s:19:"field_56be38c56ad6f";s:5:"label";s:25:"Homepage Section 1: Video";s:4:"name";s:24:"homepage_section_1_video";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'); 
INSERT INTO `wp_postmeta` VALUES (5761, 1731, 'field_56be39576ad70', 'a:11:{s:3:"key";s:19:"field_56be39576ad70";s:5:"label";s:27:"Homepage Section 1: Video 2";s:4:"name";s:25:"homepage_section_1_video2";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'); 
INSERT INTO `wp_postmeta` VALUES (5771, 1731, 'field_56be39db6ad71', 'a:14:{s:3:"key";s:19:"field_56be39db6ad71";s:5:"label";s:25:"Homepage Section 2: Title";s:4:"name";s:24:"homepage_section_2_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'); 
INSERT INTO `wp_postmeta` VALUES (5781, 1731, 'field_56be3ade6ad72', 'a:13:{s:3:"key";s:19:"field_56be3ade6ad72";s:5:"label";s:28:"Homepage Section 2: Subtitle";s:4:"name";s:27:"homepage_section_2_subtitle";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'); 
INSERT INTO `wp_postmeta` VALUES (5811, 1731, 'position', 'acf_after_title'); 
INSERT INTO `wp_postmeta` VALUES (5821, 1731, 'layout', 'no_box'); 
INSERT INTO `wp_postmeta` VALUES (5831, 1731, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'); 
INSERT INTO `wp_postmeta` VALUES (5841, 1731, '_edit_lock', '1457291547:1'); 
INSERT INTO `wp_postmeta` VALUES (5871, 1741, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (5881, 1741, '_edit_lock', '1457289849:1'); 
INSERT INTO `wp_postmeta` VALUES (5891, 1741, '_oembed_61cf3798db104aa75b9623e3d812e333', '<iframe width="750" height="422" src="https://www.youtube.com/embed/Z6Cw-ucxkJk?feature=oembed" frameborder="0" allowfullscreen></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (5901, 1741, '_oembed_time_61cf3798db104aa75b9623e3d812e333', '1455307902'); 
INSERT INTO `wp_postmeta` VALUES (5911, 1741, '_oembed_14dbb6e97302d5d56e9ae9faa1d77c72', '<iframe width="750" height="422" src="https://www.youtube.com/embed/GeXl9wpmeV4?feature=oembed" frameborder="0" allowfullscreen></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (5921, 1741, '_oembed_time_14dbb6e97302d5d56e9ae9faa1d77c72', '1455307910'); 
INSERT INTO `wp_postmeta` VALUES (5931, 1741, '_wp_page_template', 'page-homepage.php'); 
INSERT INTO `wp_postmeta` VALUES (5941, 1751, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (5951, 1751, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (5961, 1751, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (5971, 1751, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (5981, 1751, 'homepage_section_1_video', 'https://youtu.be/Z6Cw-ucxkJk'); 
INSERT INTO `wp_postmeta` VALUES (5991, 1751, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (6001, 1751, 'homepage_section_1_video2', 'https://youtu.be/GeXl9wpmeV4'); 
INSERT INTO `wp_postmeta` VALUES (6011, 1751, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (6021, 1751, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (6031, 1751, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (6041, 1751, 'homepage_section_2:_title', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.\r\n\r\n&lt;button&gt;See How To Get Started&lt;/button&gt;'); 
INSERT INTO `wp_postmeta` VALUES (6051, 1751, '_homepage_section_2:_title', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (6061, 1751, 'homepage_section_2_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (6071, 1751, '_homepage_section_2_subtitle', 'field_56be3b0a6ad73'); 
INSERT INTO `wp_postmeta` VALUES (6081, 1741, 'homepage_section_1_title', 'The smart thermostat, made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (6091, 1741, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (6101, 1741, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (6111, 1741, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (6121, 1741, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (6131, 1741, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (6141, 1741, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (6151, 1741, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (6161, 1741, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (6171, 1741, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (6181, 1741, 'homepage_section_2:_title', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.\r\n\r\n&lt;button&gt;See How To Get Started&lt;/button&gt;'); 
INSERT INTO `wp_postmeta` VALUES (6191, 1741, '_homepage_section_2:_title', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (6201, 1741, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (6211, 1741, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (6241, 1761, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (6251, 1761, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (6261, 1761, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (6271, 1761, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (6281, 1761, 'homepage_section_1_video', 'https://youtu.be/Z6Cw-ucxkJk'); 
INSERT INTO `wp_postmeta` VALUES (6291, 1761, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (6301, 1761, 'homepage_section_1_video2', 'https://youtu.be/GeXl9wpmeV4'); 
INSERT INTO `wp_postmeta` VALUES (6311, 1761, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (6321, 1761, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (6331, 1761, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (6341, 1761, 'homepage_section_2_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (6351, 1761, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (6381, 1771, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (6391, 1771, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (6401, 1771, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (6411, 1771, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (6421, 1771, 'homepage_section_1_video', 'https://youtu.be/Z6Cw-ucxkJk'); 
INSERT INTO `wp_postmeta` VALUES (6431, 1771, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (6441, 1771, 'homepage_section_1_video2', 'https://youtu.be/GeXl9wpmeV4'); 
INSERT INTO `wp_postmeta` VALUES (6451, 1771, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (6461, 1771, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (6471, 1771, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (6481, 1771, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (6491, 1771, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (6501, 1731, 'field_56be40177d629', 'a:14:{s:3:"key";s:19:"field_56be40177d629";s:5:"label";s:25:"Homepage Section 3: Title";s:4:"name";s:24:"homepage_section_3_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'); 
INSERT INTO `wp_postmeta` VALUES (6511, 1731, 'field_56be402c7d62a', 'a:14:{s:3:"key";s:19:"field_56be402c7d62a";s:5:"label";s:26:"Homepage Section 3: Button";s:4:"name";s:25:"homepage_section_3_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'); 
INSERT INTO `wp_postmeta` VALUES (6521, 1731, 'field_56be404b7d62b', 'a:14:{s:3:"key";s:19:"field_56be404b7d62b";s:5:"label";s:26:"Homepage Section 2: Button";s:4:"name";s:25:"homepage_section_2_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'); 
INSERT INTO `wp_postmeta` VALUES (6541, 1781, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (6551, 1781, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (6561, 1781, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (6571, 1781, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (6581, 1781, 'homepage_section_1_video', 'https://youtu.be/Z6Cw-ucxkJk'); 
INSERT INTO `wp_postmeta` VALUES (6591, 1781, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (6601, 1781, 'homepage_section_1_video2', 'https://youtu.be/GeXl9wpmeV4'); 
INSERT INTO `wp_postmeta` VALUES (6611, 1781, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (6621, 1781, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (6631, 1781, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (6641, 1781, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (6651, 1781, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (6661, 1781, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (6671, 1781, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (6681, 1781, 'homepage_section_3:_button', 'Explore the System'); 
INSERT INTO `wp_postmeta` VALUES (6691, 1781, '_homepage_section_3:_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (6701, 1781, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (6711, 1781, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (6721, 1741, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (6731, 1741, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (6741, 1741, 'homepage_section_3:_button', 'Explore the System'); 
INSERT INTO `wp_postmeta` VALUES (6751, 1741, '_homepage_section_3:_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (6761, 1741, 'homepage_section_2_button', '<a href="#" class="button">See How To Get Started</a>'); 
INSERT INTO `wp_postmeta` VALUES (6771, 1741, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (6801, 1791, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (6811, 1791, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (6821, 1791, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (6831, 1791, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (6841, 1791, 'homepage_section_1_video', 'https://youtu.be/Z6Cw-ucxkJk'); 
INSERT INTO `wp_postmeta` VALUES (6851, 1791, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (6861, 1791, 'homepage_section_1_video2', 'https://youtu.be/GeXl9wpmeV4'); 
INSERT INTO `wp_postmeta` VALUES (6871, 1791, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (6881, 1791, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (6891, 1791, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (6901, 1791, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (6911, 1791, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (6921, 1791, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (6931, 1791, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (6941, 1791, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (6951, 1791, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (6961, 1791, 'homepage_section_3_button', 'Explore The System'); 
INSERT INTO `wp_postmeta` VALUES (6971, 1791, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (6981, 1741, 'homepage_section_3_button', '<a href="#" class="button">Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (6991, 1741, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (7001, 1731, 'field_56be41c2289d8', 'a:14:{s:3:"key";s:19:"field_56be41c2289d8";s:5:"label";s:25:"Homepage Section 4: Title";s:4:"name";s:24:"homepage_section_4_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'); 
INSERT INTO `wp_postmeta` VALUES (7041, 1731, 'field_56be42855dd42', 'a:14:{s:3:"key";s:19:"field_56be42855dd42";s:5:"label";s:26:"Homepage Section 4: Button";s:4:"name";s:25:"homepage_section_4_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'); 
INSERT INTO `wp_postmeta` VALUES (7061, 1801, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (7071, 1801, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (7081, 1801, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (7091, 1801, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (7101, 1801, 'homepage_section_1_video', 'https://youtu.be/Z6Cw-ucxkJk'); 
INSERT INTO `wp_postmeta` VALUES (7111, 1801, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (7121, 1801, 'homepage_section_1_video2', 'https://youtu.be/GeXl9wpmeV4'); 
INSERT INTO `wp_postmeta` VALUES (7131, 1801, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (7141, 1801, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (7151, 1801, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (7161, 1801, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (7171, 1801, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (7181, 1801, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (7191, 1801, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (7201, 1801, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (7211, 1801, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (7221, 1801, 'homepage_section_3_button', 'Explore The System'); 
INSERT INTO `wp_postmeta` VALUES (7231, 1801, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (7241, 1801, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (7251, 1801, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (7261, 1801, 'homepage_section_4_button', 'Learn More'); 
INSERT INTO `wp_postmeta` VALUES (7271, 1801, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (7281, 1741, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (7291, 1741, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (7301, 1741, 'homepage_section_4_button', '<a href="#" class="button">Learn More</a>'); 
INSERT INTO `wp_postmeta` VALUES (7311, 1741, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (7321, 1731, 'field_56be5d22dc9ec', 'a:14:{s:3:"key";s:19:"field_56be5d22dc9ec";s:5:"label";s:40:"Homepage Section 5: Utility Rebate Title";s:4:"name";s:24:"homepage_section_5_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'); 
INSERT INTO `wp_postmeta` VALUES (7331, 1731, 'field_56be5d45dc9ed', 'a:14:{s:3:"key";s:19:"field_56be5d45dc9ed";s:5:"label";s:41:"Homepage Section 5: Utility Rebate Button";s:4:"name";s:25:"homepage_section_5_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:14;}'); 
INSERT INTO `wp_postmeta` VALUES (7361, 1811, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (7371, 1811, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (7381, 1811, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (7391, 1811, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (7401, 1811, 'homepage_section_1_video', 'https://youtu.be/Z6Cw-ucxkJk'); 
INSERT INTO `wp_postmeta` VALUES (7411, 1811, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (7421, 1811, 'homepage_section_1_video2', 'https://youtu.be/GeXl9wpmeV4'); 
INSERT INTO `wp_postmeta` VALUES (7431, 1811, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (7441, 1811, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (7451, 1811, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (7461, 1811, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (7471, 1811, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (7481, 1811, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (7491, 1811, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (7501, 1811, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (7511, 1811, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (7521, 1811, 'homepage_section_3_button', 'Explore The System'); 
INSERT INTO `wp_postmeta` VALUES (7531, 1811, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (7541, 1811, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (7551, 1811, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (7561, 1811, 'homepage_section_4_button', 'Learn More'); 
INSERT INTO `wp_postmeta` VALUES (7571, 1811, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (7581, 1811, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (7591, 1811, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (7601, 1811, 'homepage_section_5_button', 'Search Rates'); 
INSERT INTO `wp_postmeta` VALUES (7611, 1811, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (7621, 1741, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (7631, 1741, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (7641, 1741, 'homepage_section_5_button', '<a href="http://www.dsireusa.org/" class="white-button">Search Rates</a>'); 
INSERT INTO `wp_postmeta` VALUES (7651, 1741, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (7661, 1831, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (7671, 1831, '_edit_lock', '1455316734:1'); 
INSERT INTO `wp_postmeta` VALUES (7681, 1841, '_wp_attached_file', '2016/02/0.0.0_amz_logo_300x300.jpg'); 
INSERT INTO `wp_postmeta` VALUES (7691, 1841, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:34:"2016/02/0.0.0_amz_logo_300x300.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"0.0.0_amz_logo_300x300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:33:"0.0.0_amz_logo_300x300-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (7701, 1831, '_thumbnail_id', '1841'); 
INSERT INTO `wp_postmeta` VALUES (7711, 1851, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (7721, 1851, '_edit_lock', '1455316750:1'); 
INSERT INTO `wp_postmeta` VALUES (7731, 1861, '_wp_attached_file', '2016/02/0.0.0_hd_logo_300x300.jpg'); 
INSERT INTO `wp_postmeta` VALUES (7741, 1861, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:33:"2016/02/0.0.0_hd_logo_300x300.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"0.0.0_hd_logo_300x300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:32:"0.0.0_hd_logo_300x300-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (7751, 1851, '_thumbnail_id', '1861'); 
INSERT INTO `wp_postmeta` VALUES (7761, 1881, '_wp_attached_file', '2016/02/0.0.0_cc_logo_100x100.jpg'); 
INSERT INTO `wp_postmeta` VALUES (7771, 1881, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:33:"2016/02/0.0.0_cc_logo_100x100.jpg";s:5:"sizes";a:1:{s:16:"featured_preview";a:4:{s:4:"file";s:32:"0.0.0_cc_logo_100x100-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (7781, 1871, '_thumbnail_id', '1881'); 
INSERT INTO `wp_postmeta` VALUES (7791, 1871, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (7801, 1871, '_edit_lock', '1455322288:1'); 
INSERT INTO `wp_postmeta` VALUES (7811, 1891, '_wp_attached_file', '2016/02/1.0.0_background.jpg'); 
INSERT INTO `wp_postmeta` VALUES (7821, 1891, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:28:"2016/02/1.0.0_background.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"1.0.0_background-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"1.0.0_background-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"1.0.0_background-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"1.0.0_background-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:27:"1.0.0_background-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (7831, 1741, '_thumbnail_id', '1891'); 
INSERT INTO `wp_postmeta` VALUES (7841, 1901, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (7851, 1901, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (7861, 1901, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (7871, 1901, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (7881, 1901, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (7891, 1901, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (7901, 1901, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (7911, 1901, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (7921, 1901, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (7931, 1901, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (7941, 1901, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (7951, 1901, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (7961, 1901, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (7971, 1901, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (7981, 1901, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (7991, 1901, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (8001, 1901, 'homepage_section_3_button', 'Explore The System'); 
INSERT INTO `wp_postmeta` VALUES (8011, 1901, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (8021, 1901, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (8031, 1901, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (8041, 1901, 'homepage_section_4_button', 'Learn More'); 
INSERT INTO `wp_postmeta` VALUES (8051, 1901, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (8061, 1901, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (8071, 1901, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (8081, 1901, 'homepage_section_5_button', 'Search Rates'); 
INSERT INTO `wp_postmeta` VALUES (8091, 1901, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (8101, 1911, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (8111, 1911, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (8121, 1911, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (8131, 1911, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (8141, 1911, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8151, 1911, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (8161, 1911, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8171, 1911, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (8181, 1911, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (8191, 1911, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (8201, 1911, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (8211, 1911, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (8221, 1911, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (8231, 1911, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (8241, 1911, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (8251, 1911, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (8261, 1911, 'homepage_section_3_button', '<a href="#" class="button>Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (8271, 1911, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (8281, 1911, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (8291, 1911, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (8301, 1911, 'homepage_section_4_button', 'Learn More'); 
INSERT INTO `wp_postmeta` VALUES (8311, 1911, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (8321, 1911, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (8331, 1911, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (8341, 1911, 'homepage_section_5_button', 'Search Rates'); 
INSERT INTO `wp_postmeta` VALUES (8351, 1911, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (8361, 1921, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (8371, 1921, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (8381, 1921, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (8391, 1921, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (8401, 1921, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8411, 1921, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (8421, 1921, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8431, 1921, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (8441, 1921, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (8451, 1921, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (8461, 1921, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (8471, 1921, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (8481, 1921, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (8491, 1921, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (8501, 1921, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (8511, 1921, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (8521, 1921, 'homepage_section_3_button', '<a href="#" class="button">Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (8531, 1921, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (8541, 1921, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (8551, 1921, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (8561, 1921, 'homepage_section_4_button', 'Learn More'); 
INSERT INTO `wp_postmeta` VALUES (8571, 1921, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (8581, 1921, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (8591, 1921, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (8601, 1921, 'homepage_section_5_button', 'Search Rates'); 
INSERT INTO `wp_postmeta` VALUES (8611, 1921, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (8621, 1931, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (8631, 1931, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (8641, 1931, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (8651, 1931, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (8661, 1931, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8671, 1931, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (8681, 1931, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8691, 1931, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (8701, 1931, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (8711, 1931, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (8721, 1931, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (8731, 1931, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (8741, 1931, 'homepage_section_2_button', 'See How To Get Started'); 
INSERT INTO `wp_postmeta` VALUES (8751, 1931, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (8761, 1931, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (8771, 1931, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (8781, 1931, 'homepage_section_3_button', '<a href="#" class="button">Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (8791, 1931, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (8801, 1931, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (8811, 1931, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (8821, 1931, 'homepage_section_4_button', '<a href="#" class="button">Learn More</a>'); 
INSERT INTO `wp_postmeta` VALUES (8831, 1931, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (8841, 1931, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (8851, 1931, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (8861, 1931, 'homepage_section_5_button', '<a href="#" class="white-button">Search Rates</a>'); 
INSERT INTO `wp_postmeta` VALUES (8871, 1931, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (8881, 1941, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (8891, 1941, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (8901, 1941, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (8911, 1941, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (8921, 1941, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8931, 1941, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (8941, 1941, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (8951, 1941, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (8961, 1941, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (8971, 1941, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (8981, 1941, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (8991, 1941, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (9001, 1941, 'homepage_section_2_button', '<a href="#" class="button">See How To Get Started</a>'); 
INSERT INTO `wp_postmeta` VALUES (9011, 1941, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (9021, 1941, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (9031, 1941, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (9041, 1941, 'homepage_section_3_button', '<a href="#" class="button">Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (9051, 1941, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (9061, 1941, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (9071, 1941, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (9081, 1941, 'homepage_section_4_button', '<a href="#" class="button">Learn More</a>'); 
INSERT INTO `wp_postmeta` VALUES (9091, 1941, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (9101, 1941, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (9111, 1941, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (9121, 1941, 'homepage_section_5_button', '<a href="#" class="white-button">Search Rates</a>'); 
INSERT INTO `wp_postmeta` VALUES (9131, 1941, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (9141, 1951, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9151, 1951, '_edit_lock', '1456757992:1'); 
INSERT INTO `wp_postmeta` VALUES (9161, 1951, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (9171, 1961, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9181, 1961, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9191, 1961, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9201, 1961, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9211, 1951, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9221, 1951, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9231, 1951, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9241, 1951, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9251, 1981, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9261, 1981, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9271, 1981, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9281, 1981, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9291, 1991, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9301, 1991, '_edit_lock', '1455462942:1'); 
INSERT INTO `wp_postmeta` VALUES (9311, 1991, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (9321, 2001, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9331, 2001, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9341, 2001, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9351, 2001, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9361, 1991, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9371, 1991, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9381, 1991, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9391, 1991, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9401, 2011, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9411, 2011, '_edit_lock', '1455463254:1'); 
INSERT INTO `wp_postmeta` VALUES (9421, 2011, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (9431, 2021, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9441, 2021, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9451, 2021, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9461, 2021, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9471, 2011, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9481, 2011, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9491, 2011, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9501, 2011, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9511, 2041, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9521, 2041, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9531, 2041, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9541, 2041, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9551, 2051, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9561, 2051, '_edit_lock', '1457966992:1'); 
INSERT INTO `wp_postmeta` VALUES (9571, 2051, '_wp_page_template', 'page-eco.php'); 
INSERT INTO `wp_postmeta` VALUES (9581, 2061, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9591, 2061, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9601, 2061, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9611, 2061, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9621, 2051, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9631, 2051, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9641, 2051, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9651, 2051, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9661, 2071, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9671, 2071, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9681, 2071, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9691, 2071, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9701, 2081, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9711, 2081, '_edit_lock', '1455651648:1'); 
INSERT INTO `wp_postmeta` VALUES (9721, 2081, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (9731, 2091, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9741, 2091, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9751, 2091, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9761, 2091, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9771, 2081, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9781, 2081, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9791, 2081, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9801, 2081, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9811, 2101, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9821, 2101, '_edit_lock', '1459383106:1'); 
INSERT INTO `wp_postmeta` VALUES (9831, 2101, '_wp_page_template', 'page-up-close.php'); 
INSERT INTO `wp_postmeta` VALUES (9841, 2121, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9851, 2121, '_edit_lock', '1456250880:1'); 
INSERT INTO `wp_postmeta` VALUES (9861, 2121, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (9871, 2131, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9881, 2131, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9891, 2131, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9901, 2131, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9911, 2121, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9921, 2121, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9931, 2121, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (9941, 2121, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (9951, 2141, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (9961, 2141, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (9971, 2151, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (9981, 2151, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (9991, 2151, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10001, 2151, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10011, 2141, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10021, 2141, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10031, 2141, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10041, 2141, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10051, 2141, '_edit_lock', '1455464983:1'); 
INSERT INTO `wp_postmeta` VALUES (10061, 2161, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10071, 2161, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10081, 2161, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10091, 2161, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10101, 2171, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (10111, 2171, '_edit_lock', '1455465067:1'); 
INSERT INTO `wp_postmeta` VALUES (10113, 2171, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (10123, 2173, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10133, 2173, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10143, 2173, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10153, 2173, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10163, 2171, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10173, 2171, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10183, 2171, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10193, 2171, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10201, 2181, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (10211, 2181, '_edit_lock', '1455564905:1'); 
INSERT INTO `wp_postmeta` VALUES (10221, 2181, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (10231, 2191, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10241, 2191, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10251, 2191, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10261, 2191, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10271, 2181, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10281, 2181, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10291, 2181, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10301, 2181, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10303, 2201, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (10313, 2201, '_edit_lock', '1455561673:1'); 
INSERT INTO `wp_postmeta` VALUES (10321, 2201, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (10331, 2211, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10341, 2211, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10351, 2211, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10361, 2211, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10371, 2201, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10381, 2201, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10391, 2201, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10401, 2201, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10411, 2221, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10421, 2221, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10431, 2221, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10441, 2221, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10451, 2231, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10461, 2231, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10471, 2231, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10481, 2231, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10491, 2241, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10501, 2241, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10511, 2241, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10521, 2241, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10531, 2251, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10541, 2251, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10551, 2251, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10561, 2251, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10571, 2261, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10581, 2261, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10591, 2261, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10601, 2261, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10611, 2271, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10621, 2271, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10631, 2271, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10641, 2271, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10651, 2281, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10661, 2281, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10671, 2281, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10681, 2281, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10691, 2291, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (10701, 2291, '_edit_lock', '1455568512:1'); 
INSERT INTO `wp_postmeta` VALUES (10711, 2291, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (10721, 2301, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10731, 2301, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10741, 2301, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10751, 2301, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10761, 2291, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10771, 2291, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10781, 2291, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10791, 2291, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10801, 2311, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (10811, 2311, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (10821, 2321, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10831, 2321, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10841, 2321, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10851, 2321, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10861, 2311, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (10871, 2311, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (10881, 2311, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (10891, 2311, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (10901, 2311, '_edit_lock', '1455566434:1'); 
INSERT INTO `wp_postmeta` VALUES (11041, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'); 
INSERT INTO `wp_postmeta` VALUES (11051, 2361, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11061, 2361, '_edit_lock', '1455640475:1'); 
INSERT INTO `wp_postmeta` VALUES (11091, 2381, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11101, 2381, '_edit_lock', '1455640521:1'); 
INSERT INTO `wp_postmeta` VALUES (11131, 2401, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11141, 2401, '_edit_lock', '1455640577:1'); 
INSERT INTO `wp_postmeta` VALUES (11171, 2421, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11181, 2421, '_edit_lock', '1455640763:1'); 
INSERT INTO `wp_postmeta` VALUES (11231, 2441, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11241, 2441, '_edit_lock', '1456180117:1'); 
INSERT INTO `wp_postmeta` VALUES (11291, 2461, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11301, 2461, '_edit_lock', '1455641018:1'); 
INSERT INTO `wp_postmeta` VALUES (11331, 2481, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11341, 2481, '_edit_lock', '1455641068:1'); 
INSERT INTO `wp_postmeta` VALUES (11363, 2501, '_edit_last', '11'); 
INSERT INTO `wp_postmeta` VALUES (11373, 2501, '_edit_lock', '1458056910:11'); 
INSERT INTO `wp_postmeta` VALUES (11401, 2521, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11411, 2521, '_edit_lock', '1455641265:1'); 
INSERT INTO `wp_postmeta` VALUES (11441, 2541, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11451, 2541, '_edit_lock', '1455641313:1'); 
INSERT INTO `wp_postmeta` VALUES (11481, 2561, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11491, 2561, '_edit_lock', '1455641355:1'); 
INSERT INTO `wp_postmeta` VALUES (11521, 2581, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11531, 2581, '_edit_lock', '1455641494:1'); 
INSERT INTO `wp_postmeta` VALUES (11581, 2601, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11591, 2601, '_edit_lock', '1455641589:1'); 
INSERT INTO `wp_postmeta` VALUES (11621, 2621, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11631, 2621, '_edit_lock', '1455641686:1'); 
INSERT INTO `wp_postmeta` VALUES (11661, 2641, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11671, 2641, '_edit_lock', '1455641777:1'); 
INSERT INTO `wp_postmeta` VALUES (11721, 2661, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11731, 2661, '_edit_lock', '1455641806:1'); 
INSERT INTO `wp_postmeta` VALUES (11761, 2681, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11771, 2681, '_edit_lock', '1455641849:1'); 
INSERT INTO `wp_postmeta` VALUES (11801, 2701, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11811, 2701, '_edit_lock', '1455641884:1'); 
INSERT INTO `wp_postmeta` VALUES (11841, 2721, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11851, 2721, '_edit_lock', '1455641928:1'); 
INSERT INTO `wp_postmeta` VALUES (11881, 2741, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11891, 2741, '_edit_lock', '1455642078:1'); 
INSERT INTO `wp_postmeta` VALUES (11941, 2771, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (11971, 2771, '_edit_lock', '1455642172:1'); 
INSERT INTO `wp_postmeta` VALUES (11981, 2791, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (12011, 2791, '_edit_lock', '1455642196:1'); 
INSERT INTO `wp_postmeta` VALUES (12021, 2811, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (12031, 2811, '_edit_lock', '1455642350:1'); 
INSERT INTO `wp_postmeta` VALUES (12061, 2831, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (12071, 2831, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (12081, 2831, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (12091, 2831, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (12101, 2891, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (12111, 2891, 'field_56c3a0e6b2ef8', 'a:14:{s:3:"key";s:19:"field_56c3a0e6b2ef8";s:5:"label";s:16:"Section 1: Title";s:4:"name";s:15:"section_1_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (12131, 2891, 'position', 'acf_after_title'); 
INSERT INTO `wp_postmeta` VALUES (12141, 2891, 'layout', 'no_box'); 
INSERT INTO `wp_postmeta` VALUES (12151, 2891, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'); 
INSERT INTO `wp_postmeta` VALUES (12161, 2891, '_edit_lock', '1455663452:1'); 
INSERT INTO `wp_postmeta` VALUES (12163, 2901, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (12173, 2901, '_edit_lock', '1457114595:1'); 
INSERT INTO `wp_postmeta` VALUES (12181, 2901, '_wp_page_template', 'page-getting-started.php'); 
INSERT INTO `wp_postmeta` VALUES (12191, 2911, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (12201, 2911, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (12211, 2911, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (12221, 2911, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (12231, 2901, 'support_subtitle', ''); 
INSERT INTO `wp_postmeta` VALUES (12241, 2901, '_support_subtitle', 'field_56b8f8016f0a4'); 
INSERT INTO `wp_postmeta` VALUES (12251, 2901, 'support_content', ''); 
INSERT INTO `wp_postmeta` VALUES (12261, 2901, '_support_content', 'field_56b8f80d6f0a5'); 
INSERT INTO `wp_postmeta` VALUES (12291, 2921, 'section_1_title', 'Up and running in no time flat.'); 
INSERT INTO `wp_postmeta` VALUES (12301, 2921, '_section_1_title', 'field_56c3a0e6b2ef8'); 
INSERT INTO `wp_postmeta` VALUES (12311, 2901, 'section_1_title', 'Up and running in no time flat.'); 
INSERT INTO `wp_postmeta` VALUES (12321, 2901, '_section_1_title', 'field_56c3a0e6b2ef8'); 
INSERT INTO `wp_postmeta` VALUES (12331, 2891, 'field_56c3a23995912', 'a:13:{s:3:"key";s:19:"field_56c3a23995912";s:5:"label";s:19:"Section 1: Subtitle";s:4:"name";s:18:"section_1_subtitle";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'); 
INSERT INTO `wp_postmeta` VALUES (12341, 2891, 'field_56c3a25295913', 'a:11:{s:3:"key";s:19:"field_56c3a25295913";s:5:"label";s:16:"Section 1: Image";s:4:"name";s:15:"section_1_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'); 
INSERT INTO `wp_postmeta` VALUES (12381, 2891, 'field_56c3a2b7ff4bc', 'a:14:{s:3:"key";s:19:"field_56c3a2b7ff4bc";s:5:"label";s:22:"Section 1: Button Link";s:4:"name";s:16:"section_1_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'); 
INSERT INTO `wp_postmeta` VALUES (12411, 2931, '_wp_attached_file', '2016/02/4.0.0_wiser_box.png'); 
INSERT INTO `wp_postmeta` VALUES (12421, 2931, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:551;s:6:"height";i:302;s:4:"file";s:27:"2016/02/4.0.0_wiser_box.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"4.0.0_wiser_box-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"4.0.0_wiser_box-300x164.png";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:9:"image/png";}s:16:"featured_preview";a:4:{s:4:"file";s:26:"4.0.0_wiser_box-100x55.png";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'); 
INSERT INTO `wp_postmeta` VALUES (12431, 2941, 'section_1_title', 'Up and running in no time flat.'); 
INSERT INTO `wp_postmeta` VALUES (12441, 2941, '_section_1_title', 'field_56c3a0e6b2ef8'); 
INSERT INTO `wp_postmeta` VALUES (12451, 2941, 'section_1_image', '2931'); 
INSERT INTO `wp_postmeta` VALUES (12461, 2941, '_section_1_image', 'field_56c3a25295913'); 
INSERT INTO `wp_postmeta` VALUES (12471, 2941, 'section_1_subtitle', 'Right out of the box, Wiser Air is ready for simple installation and quick setup that brings you a new level of control over your home’s energy in a flash.'); 
INSERT INTO `wp_postmeta` VALUES (12481, 2941, '_section_1_subtitle', 'field_56c3a23995912'); 
INSERT INTO `wp_postmeta` VALUES (12491, 2941, '_', 'field_56c3a2b7ff4bc'); 
INSERT INTO `wp_postmeta` VALUES (12501, 2901, 'section_1_image', '2931'); 
INSERT INTO `wp_postmeta` VALUES (12511, 2901, '_section_1_image', 'field_56c3a25295913'); 
INSERT INTO `wp_postmeta` VALUES (12521, 2901, 'section_1_subtitle', 'Right out of the box, Wiser Air is ready for simple installation and quick setup that brings you a new level of control over your home’s energy in a flash.'); 
INSERT INTO `wp_postmeta` VALUES (12531, 2901, '_section_1_subtitle', 'field_56c3a23995912'); 
INSERT INTO `wp_postmeta` VALUES (12541, 2901, '_', 'field_56c3a2b7ff4bc'); 
INSERT INTO `wp_postmeta` VALUES (12551, 2891, 'field_56c3a632c8329', 'a:14:{s:3:"key";s:19:"field_56c3a632c8329";s:5:"label";s:16:"Section 2: Title";s:4:"name";s:15:"section_2_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'); 
INSERT INTO `wp_postmeta` VALUES (12561, 2891, 'field_56c3a68bc832a', 'a:14:{s:3:"key";s:19:"field_56c3a68bc832a";s:5:"label";s:16:"Section 3: Title";s:4:"name";s:15:"section_3_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'); 
INSERT INTO `wp_postmeta` VALUES (12581, 2891, 'field_56c3a6a1dd907', 'a:14:{s:3:"key";s:19:"field_56c3a6a1dd907";s:5:"label";s:16:"Section 4: Title";s:4:"name";s:15:"section_4_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'); 
INSERT INTO `wp_postmeta` VALUES (12591, 2891, 'field_56c3a6b1dd908', 'a:14:{s:3:"key";s:19:"field_56c3a6b1dd908";s:5:"label";s:19:"Section 4: Subtitle";s:4:"name";s:18:"section_4_subtitle";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'); 
INSERT INTO `wp_postmeta` VALUES (12631, 2891, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:24:"page-getting-started.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (12633, 2943, 'section_1_title', 'Up and running in no time flat.'); 
INSERT INTO `wp_postmeta` VALUES (12643, 2943, '_section_1_title', 'field_56c3a0e6b2ef8'); 
INSERT INTO `wp_postmeta` VALUES (12653, 2943, 'section_1_image', '2931'); 
INSERT INTO `wp_postmeta` VALUES (12663, 2943, '_section_1_image', 'field_56c3a25295913'); 
INSERT INTO `wp_postmeta` VALUES (12673, 2943, 'section_1_subtitle', 'Right out of the box, Wiser Air is ready for simple installation and quick setup that brings you a new level of control over your home’s energy in a flash.'); 
INSERT INTO `wp_postmeta` VALUES (12683, 2943, '_section_1_subtitle', 'field_56c3a23995912'); 
INSERT INTO `wp_postmeta` VALUES (12693, 2943, 'section_1_button', 'Need To Purchase'); 
INSERT INTO `wp_postmeta` VALUES (12703, 2943, '_section_1_button', 'field_56c3a2b7ff4bc'); 
INSERT INTO `wp_postmeta` VALUES (12713, 2943, 'section_2_title', 'Newfound energy control, in four simple steps'); 
INSERT INTO `wp_postmeta` VALUES (12723, 2943, '_section_2_title', 'field_56c3a632c8329'); 
INSERT INTO `wp_postmeta` VALUES (12733, 2943, 'section_3_title', 'Smooth touchscreen setup'); 
INSERT INTO `wp_postmeta` VALUES (12743, 2943, '_section_3_title', 'field_56c3a68bc832a'); 
INSERT INTO `wp_postmeta` VALUES (12753, 2943, 'section_4_title', 'Sync and go'); 
INSERT INTO `wp_postmeta` VALUES (12763, 2943, '_section_4_title', 'field_56c3a6a1dd907'); 
INSERT INTO `wp_postmeta` VALUES (12773, 2943, 'section_4_subtitle', 'Keeping the convenience going, the last step of syncing Wiser Air with your home, and your life, is downloading the app for on-the-go control.'); 
INSERT INTO `wp_postmeta` VALUES (12783, 2943, '_section_4_subtitle', 'field_56c3a6b1dd908'); 
INSERT INTO `wp_postmeta` VALUES (12793, 2901, 'section_1_button', 'Need To Purchase'); 
INSERT INTO `wp_postmeta` VALUES (12803, 2901, '_section_1_button', 'field_56c3a2b7ff4bc'); 
INSERT INTO `wp_postmeta` VALUES (12813, 2901, 'section_2_title', 'Newfound energy control, in four simple steps'); 
INSERT INTO `wp_postmeta` VALUES (12823, 2901, '_section_2_title', 'field_56c3a632c8329'); 
INSERT INTO `wp_postmeta` VALUES (12833, 2901, 'section_3_title', 'Smooth touchscreen setup'); 
INSERT INTO `wp_postmeta` VALUES (12843, 2901, '_section_3_title', 'field_56c3a68bc832a'); 
INSERT INTO `wp_postmeta` VALUES (12853, 2901, 'section_4_title', 'Sync and go'); 
INSERT INTO `wp_postmeta` VALUES (12863, 2901, '_section_4_title', 'field_56c3a6a1dd907'); 
INSERT INTO `wp_postmeta` VALUES (12873, 2901, 'section_4_subtitle', 'Keeping the convenience going, the last step of syncing Wiser Air with your home, and your life, is downloading the app for on-the-go control.'); 
INSERT INTO `wp_postmeta` VALUES (12883, 2901, '_section_4_subtitle', 'field_56c3a6b1dd908'); 
INSERT INTO `wp_postmeta` VALUES (12891, 961, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:16:"page-support.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (12921, 2971, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (12931, 2971, '_edit_lock', '1456180201:1'); 
INSERT INTO `wp_postmeta` VALUES (13001, 2501, '_oembed_6a28dd8b173fcb2eda0e11d9ed23582d', '<iframe width="750" height="422" src="https://www.youtube.com/embed/-TSE9C9IYUU?feature=oembed" frameborder="0" allowfullscreen></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (13011, 2501, '_oembed_time_6a28dd8b173fcb2eda0e11d9ed23582d', '1456180887'); 
INSERT INTO `wp_postmeta` VALUES (13761, 3081, '_menu_item_type', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (13771, 3081, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (13781, 3081, '_menu_item_object_id', '3081'); 
INSERT INTO `wp_postmeta` VALUES (13791, 3081, '_menu_item_object', 'custom'); 
INSERT INTO `wp_postmeta` VALUES (13801, 3081, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (13811, 3081, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (13821, 3081, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (13831, 3081, '_menu_item_url', '#'); 
INSERT INTO `wp_postmeta` VALUES (13961, 3111, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (13971, 3111, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (13981, 3111, '_menu_item_object_id', '2101'); 
INSERT INTO `wp_postmeta` VALUES (13991, 3111, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14001, 3111, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14011, 3111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14021, 3111, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14031, 3111, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14051, 3121, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14061, 3121, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14071, 3121, '_menu_item_object_id', '171'); 
INSERT INTO `wp_postmeta` VALUES (14081, 3121, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14091, 3121, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14101, 3121, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14111, 3121, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14121, 3121, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14141, 3131, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14151, 3131, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14161, 3131, '_menu_item_object_id', '1441'); 
INSERT INTO `wp_postmeta` VALUES (14171, 3131, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14181, 3131, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14191, 3131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14201, 3131, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14211, 3131, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14231, 3141, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (14241, 3141, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (14251, 3141, '_edit_lock', '1456410576:1'); 
INSERT INTO `wp_postmeta` VALUES (14261, 3161, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (14271, 3161, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (14281, 3161, '_edit_lock', '1456410591:1'); 
INSERT INTO `wp_postmeta` VALUES (14291, 3181, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (14301, 3181, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (14311, 3181, '_edit_lock', '1456410614:1'); 
INSERT INTO `wp_postmeta` VALUES (14321, 3201, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (14331, 3201, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (14341, 3201, '_edit_lock', '1456410636:1'); 
INSERT INTO `wp_postmeta` VALUES (14351, 3221, '_edit_last', '1'); 
INSERT INTO `wp_postmeta` VALUES (14361, 3221, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (14371, 3221, '_edit_lock', '1456410658:1'); 
INSERT INTO `wp_postmeta` VALUES (14381, 3241, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14391, 3241, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14401, 3241, '_menu_item_object_id', '3181'); 
INSERT INTO `wp_postmeta` VALUES (14411, 3241, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14421, 3241, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14431, 3241, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14441, 3241, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14451, 3241, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14471, 3251, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14481, 3251, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14491, 3251, '_menu_item_object_id', '3161'); 
INSERT INTO `wp_postmeta` VALUES (14501, 3251, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14511, 3251, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14521, 3251, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14531, 3251, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14541, 3251, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14561, 3261, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14571, 3261, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14581, 3261, '_menu_item_object_id', '3141'); 
INSERT INTO `wp_postmeta` VALUES (14591, 3261, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14601, 3261, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14611, 3261, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14621, 3261, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14631, 3261, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14651, 3271, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14661, 3271, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14671, 3271, '_menu_item_object_id', '171'); 
INSERT INTO `wp_postmeta` VALUES (14681, 3271, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14691, 3271, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14701, 3271, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14711, 3271, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14721, 3271, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14741, 3281, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14751, 3281, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14761, 3281, '_menu_item_object_id', '3221'); 
INSERT INTO `wp_postmeta` VALUES (14771, 3281, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14781, 3281, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14791, 3281, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14801, 3281, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14811, 3281, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14831, 3291, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14841, 3291, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14851, 3291, '_menu_item_object_id', '3201'); 
INSERT INTO `wp_postmeta` VALUES (14861, 3291, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14871, 3291, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14881, 3291, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14891, 3291, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14901, 3291, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (14911, 3311, '_menu_item_type', 'post_type'); 
INSERT INTO `wp_postmeta` VALUES (14921, 3311, '_menu_item_menu_item_parent', '0'); 
INSERT INTO `wp_postmeta` VALUES (14931, 3311, '_menu_item_object_id', '2901'); 
INSERT INTO `wp_postmeta` VALUES (14941, 3311, '_menu_item_object', 'page'); 
INSERT INTO `wp_postmeta` VALUES (14951, 3311, '_menu_item_target', ''); 
INSERT INTO `wp_postmeta` VALUES (14961, 3311, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'); 
INSERT INTO `wp_postmeta` VALUES (14971, 3311, '_menu_item_xfn', ''); 
INSERT INTO `wp_postmeta` VALUES (14981, 3311, '_menu_item_url', ''); 
INSERT INTO `wp_postmeta` VALUES (15001, 3321, 'homepage_section_1_title', 'The Smart Thermostat, Made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (15011, 3321, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (15021, 3321, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (15031, 3321, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (15041, 3321, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (15051, 3321, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (15061, 3321, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (15071, 3321, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (15081, 3321, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (15091, 3321, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (15101, 3321, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (15111, 3321, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (15121, 3321, 'homepage_section_2_button', '<a href="#" class="button">See How To Get Started</a>'); 
INSERT INTO `wp_postmeta` VALUES (15131, 3321, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (15141, 3321, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (15151, 3321, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (15161, 3321, 'homepage_section_3_button', '<a href="#" class="button">Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (15171, 3321, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (15181, 3321, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (15191, 3321, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (15201, 3321, 'homepage_section_4_button', '<a href="#" class="button">Learn More</a>'); 
INSERT INTO `wp_postmeta` VALUES (15211, 3321, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (15221, 3321, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (15231, 3321, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (15241, 3321, 'homepage_section_5_button', '<a href="http://www.dsireusa.org/" class="white-button">Search Rates</a>'); 
INSERT INTO `wp_postmeta` VALUES (15251, 3321, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (15261, 3331, 'homepage_section_1_title', 'The smart thermostat, made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (15271, 3331, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (15281, 3331, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (15291, 3331, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (15301, 3331, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (15311, 3331, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (15321, 3331, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (15331, 3331, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (15341, 3331, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (15351, 3331, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (15361, 3331, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (15371, 3331, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (15381, 3331, 'homepage_section_2_button', '<a href="#" class="button">See How To Get Started</a>'); 
INSERT INTO `wp_postmeta` VALUES (15391, 3331, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (15401, 3331, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (15411, 3331, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (15421, 3331, 'homepage_section_3_button', '<a href="#" class="button">Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (15431, 3331, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (15441, 3331, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (15451, 3331, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (15461, 3331, 'homepage_section_4_button', '<a href="#" class="button">Learn More</a>'); 
INSERT INTO `wp_postmeta` VALUES (15471, 3331, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (15481, 3331, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (15491, 3331, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (15501, 3331, 'homepage_section_5_button', '<a href="http://www.dsireusa.org/" class="white-button">Search Rates</a>'); 
INSERT INTO `wp_postmeta` VALUES (15511, 3331, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (15521, 1731, 'field_56dc785f1f482', 'a:14:{s:3:"key";s:19:"field_56dc785f1f482";s:5:"label";s:31:"Homepage Section 1: Video Title";s:4:"name";s:30:"homepage_section_1_video_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'); 
INSERT INTO `wp_postmeta` VALUES (15531, 1731, 'field_56dc78ae1f483', 'a:14:{s:3:"key";s:19:"field_56dc78ae1f483";s:5:"label";s:33:"Homepage Section 1: Video 2 Title";s:4:"name";s:32:"homepage_section_1_video_2_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'); 
INSERT INTO `wp_postmeta` VALUES (15561, 3341, 'homepage_section_1_title', 'The smart thermostat, made Wiser'); 
INSERT INTO `wp_postmeta` VALUES (15571, 3341, '_homepage_section_1_title', 'field_56be388b6ad6d'); 
INSERT INTO `wp_postmeta` VALUES (15581, 3341, 'homepage_section_1_subtitle', 'Wiser Air isn\'t just a cutting-edge thermostat. It\'s a complete home energy management solution built with a state-of-the-art technology that gives you control of comfort and savings for peace of mind.'); 
INSERT INTO `wp_postmeta` VALUES (15591, 3341, '_homepage_section_1_subtitle', 'field_56be38a56ad6e'); 
INSERT INTO `wp_postmeta` VALUES (15601, 3341, 'homepage_section_1_video', '<iframe src="https://www.youtube.com/embed/Z6Cw-ucxkJk?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (15611, 3341, '_homepage_section_1_video', 'field_56be38c56ad6f'); 
INSERT INTO `wp_postmeta` VALUES (15621, 3341, 'homepage_section_1_video_title', 'Introducing Wiser Air'); 
INSERT INTO `wp_postmeta` VALUES (15631, 3341, '_homepage_section_1_video_title', 'field_56dc785f1f482'); 
INSERT INTO `wp_postmeta` VALUES (15641, 3341, 'homepage_section_1_video2', '<iframe src="https://www.youtube.com/embed/GeXl9wpmeV4?controls=0&amp;showinfo=0" width="356" height="200" frameborder="0" allowfullscreen="allowfullscreen"></iframe>'); 
INSERT INTO `wp_postmeta` VALUES (15651, 3341, '_homepage_section_1_video2', 'field_56be39576ad70'); 
INSERT INTO `wp_postmeta` VALUES (15661, 3341, 'homepage_section_1_video_2_title', 'The Making of Wiser'); 
INSERT INTO `wp_postmeta` VALUES (15671, 3341, '_homepage_section_1_video_2_title', 'field_56dc78ae1f483'); 
INSERT INTO `wp_postmeta` VALUES (15681, 3341, 'homepage_section_2_title', 'You\'re in control. It\'s that simple.'); 
INSERT INTO `wp_postmeta` VALUES (15691, 3341, '_homepage_section_2_title', 'field_56be39db6ad71'); 
INSERT INTO `wp_postmeta` VALUES (15701, 3341, 'homepage_section_2_subtitle', 'With a smartphone-style touchscreen, Wiser Air lets you tap into new levels of temperature control while learning your lifestyle as soon as it’s on your wall. Easily integrated into your home, operation is a breeze.'); 
INSERT INTO `wp_postmeta` VALUES (15711, 3341, '_homepage_section_2_subtitle', 'field_56be3ade6ad72'); 
INSERT INTO `wp_postmeta` VALUES (15721, 3341, 'homepage_section_2_button', '<a href="#" class="button">See How To Get Started</a>'); 
INSERT INTO `wp_postmeta` VALUES (15731, 3341, '_homepage_section_2_button', 'field_56be404b7d62b'); 
INSERT INTO `wp_postmeta` VALUES (15741, 3341, 'homepage_section_3_title', 'Control at your fingertips. Now that\'s comforting.'); 
INSERT INTO `wp_postmeta` VALUES (15751, 3341, '_homepage_section_3_title', 'field_56be40177d629'); 
INSERT INTO `wp_postmeta` VALUES (15761, 3341, 'homepage_section_3_button', '<a href="#" class="button">Explore The System</a>'); 
INSERT INTO `wp_postmeta` VALUES (15771, 3341, '_homepage_section_3_button', 'field_56be402c7d62a'); 
INSERT INTO `wp_postmeta` VALUES (15781, 3341, 'homepage_section_4_title', 'Precise weather with real, positive impacts on your energy.'); 
INSERT INTO `wp_postmeta` VALUES (15791, 3341, '_homepage_section_4_title', 'field_56be41c2289d8'); 
INSERT INTO `wp_postmeta` VALUES (15801, 3341, 'homepage_section_4_button', '<a href="#" class="button">Learn More</a>'); 
INSERT INTO `wp_postmeta` VALUES (15811, 3341, '_homepage_section_4_button', 'field_56be42855dd42'); 
INSERT INTO `wp_postmeta` VALUES (15821, 3341, 'homepage_section_5_title', 'Find it cheaper. Utility rebates in your area.'); 
INSERT INTO `wp_postmeta` VALUES (15831, 3341, '_homepage_section_5_title', 'field_56be5d22dc9ec'); 
INSERT INTO `wp_postmeta` VALUES (15841, 3341, 'homepage_section_5_button', '<a href="http://www.dsireusa.org/" class="white-button">Search Rates</a>'); 
INSERT INTO `wp_postmeta` VALUES (15851, 3341, '_homepage_section_5_button', 'field_56be5d45dc9ed'); 
INSERT INTO `wp_postmeta` VALUES (15861, 1741, 'homepage_section_1_video_title', 'Introducing Wiser Air'); 
INSERT INTO `wp_postmeta` VALUES (15871, 1741, '_homepage_section_1_video_title', 'field_56dc785f1f482'); 
INSERT INTO `wp_postmeta` VALUES (15881, 1741, 'homepage_section_1_video_2_title', 'The Making of Wiser'); 
INSERT INTO `wp_postmeta` VALUES (15891, 1741, '_homepage_section_1_video_2_title', 'field_56dc78ae1f483'); 
INSERT INTO `wp_postmeta` VALUES (15901, 1731, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"page-homepage.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'); 
INSERT INTO `wp_postmeta` VALUES (15951, 2931, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:1.9999032987223344;s:5:"bytes";i:3309;s:11:"size_before";i:165458;s:10:"size_after";i:162149;s:4:"time";d:0.82999999999999996;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:3.3700000000000001;s:5:"bytes";i:888;s:11:"size_before";i:26325;s:10:"size_after";i:25437;s:4:"time";d:0.070000000000000007;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:4.2400000000000002;s:5:"bytes";i:1795;s:11:"size_before";i:42333;s:10:"size_after";i:40538;s:4:"time";d:0.14999999999999999;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:8.6400000000000006;s:5:"bytes";i:626;s:11:"size_before";i:7248;s:10:"size_after";i:6622;s:4:"time";d:0.029999999999999999;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:89552;s:10:"size_after";i:89552;s:4:"time";d:0.57999999999999996;}}}'); 
INSERT INTO `wp_postmeta` VALUES (15961, 1891, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:10.542735964344763;s:5:"bytes";i:7333;s:11:"size_before";i:69555;s:10:"size_after";i:62222;s:4:"time";d:0.16;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:5:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:8.6600000000000001;s:5:"bytes";i:331;s:11:"size_before";i:3822;s:10:"size_after";i:3491;s:4:"time";d:0.02;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:7.5099999999999998;s:5:"bytes";i:504;s:11:"size_before";i:6711;s:10:"size_after";i:6207;s:4:"time";d:0.029999999999999999;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:10.43;s:5:"bytes";i:2339;s:11:"size_before";i:22422;s:10:"size_after";i:20083;s:4:"time";d:0.02;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:11.539999999999999;s:5:"bytes";i:4012;s:11:"size_before";i:34778;s:10:"size_after";i:30766;s:4:"time";d:0.070000000000000007;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:8.0700000000000003;s:5:"bytes";i:147;s:11:"size_before";i:1822;s:10:"size_after";i:1675;s:4:"time";d:0.02;}}}'); 
INSERT INTO `wp_postmeta` VALUES (15971, 1881, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:3.9789269374740055;s:5:"bytes";i:287;s:11:"size_before";i:7213;s:10:"size_after";i:6926;s:4:"time";d:0.029999999999999999;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:2:{s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:8.4800000000000004;s:5:"bytes";i:287;s:11:"size_before";i:3384;s:10:"size_after";i:3097;s:4:"time";d:0.01;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:3829;s:10:"size_after";i:3829;s:4:"time";d:0.02;}}}'); 
INSERT INTO `wp_postmeta` VALUES (15981, 1861, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:5.5261215451488557;s:5:"bytes";i:3369;s:11:"size_before";i:60965;s:10:"size_after";i:57596;s:4:"time";d:0.11;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:3:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:10.58;s:5:"bytes";i:1254;s:11:"size_before";i:11854;s:10:"size_after";i:10600;s:4:"time";d:0.02;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:10.09;s:5:"bytes";i:450;s:11:"size_before";i:4458;s:10:"size_after";i:4008;s:4:"time";d:0.029999999999999999;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:3.73;s:5:"bytes";i:1665;s:11:"size_before";i:44653;s:10:"size_after";i:42988;s:4:"time";d:0.059999999999999998;}}}'); 
INSERT INTO `wp_postmeta` VALUES (15991, 1841, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:7.1756496189514278;s:5:"bytes";i:1563;s:11:"size_before";i:21782;s:10:"size_after";i:20219;s:4:"time";d:0.060000000000000005;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:3:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";i:9;s:5:"bytes";i:467;s:11:"size_before";i:5188;s:10:"size_after";i:4721;s:4:"time";d:0.02;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:8.7799999999999994;s:5:"bytes";i:208;s:11:"size_before";i:2369;s:10:"size_after";i:2161;s:4:"time";d:0.029999999999999999;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:6.2400000000000002;s:5:"bytes";i:888;s:11:"size_before";i:14225;s:10:"size_after";i:13337;s:4:"time";d:0.01;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16001, 1721, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:4.5426275908462062;s:5:"bytes";i:3579;s:11:"size_before";i:78787;s:10:"size_after";i:75208;s:4:"time";d:0.28000000000000003;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:5:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:4.4699999999999998;s:5:"bytes";i:225;s:11:"size_before";i:5034;s:10:"size_after";i:4809;s:4:"time";d:0.02;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:4.9100000000000001;s:5:"bytes";i:323;s:11:"size_before";i:6573;s:10:"size_after";i:6250;s:4:"time";d:0.040000000000000001;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:4.1600000000000001;s:5:"bytes";i:1054;s:11:"size_before";i:25332;s:10:"size_after";i:24278;s:4:"time";d:0.089999999999999997;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:4.5499999999999998;s:5:"bytes";i:1796;s:11:"size_before";i:39494;s:10:"size_after";i:37698;s:4:"time";d:0.12;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:7.6900000000000004;s:5:"bytes";i:181;s:11:"size_before";i:2354;s:10:"size_after";i:2173;s:4:"time";d:0.01;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16011, 1701, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:8.4558388838529144;s:5:"bytes";i:4291;s:11:"size_before";i:50746;s:10:"size_after";i:46455;s:4:"time";d:0.090000000000000011;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:5:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:5.1900000000000004;s:5:"bytes";i:147;s:11:"size_before";i:2834;s:10:"size_after";i:2687;s:4:"time";d:0.01;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.7699999999999996;s:5:"bytes";i:288;s:11:"size_before";i:4255;s:10:"size_after";i:3967;s:4:"time";d:0.01;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:8.1699999999999999;s:5:"bytes";i:1323;s:11:"size_before";i:16193;s:10:"size_after";i:14870;s:4:"time";d:0.02;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:9.2699999999999996;s:5:"bytes";i:2377;s:11:"size_before";i:25640;s:10:"size_after";i:23263;s:4:"time";d:0.029999999999999999;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:8.5500000000000007;s:5:"bytes";i:156;s:11:"size_before";i:1824;s:10:"size_after";i:1668;s:4:"time";d:0.02;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16021, 1681, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:3.9447635579914375;s:5:"bytes";i:4045;s:11:"size_before";i:102541;s:10:"size_after";i:98496;s:4:"time";d:0.17000000000000001;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:5:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:3.9900000000000002;s:5:"bytes";i:220;s:11:"size_before";i:5513;s:10:"size_after";i:5293;s:4:"time";d:0.01;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:4.3700000000000001;s:5:"bytes";i:368;s:11:"size_before";i:8419;s:10:"size_after";i:8051;s:4:"time";d:0.01;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:3.7400000000000002;s:5:"bytes";i:1252;s:11:"size_before";i:33484;s:10:"size_after";i:32232;s:4:"time";d:0.050000000000000003;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:3.8399999999999999;s:5:"bytes";i:2012;s:11:"size_before";i:52388;s:10:"size_after";i:50376;s:4:"time";d:0.059999999999999998;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:7.0499999999999998;s:5:"bytes";i:193;s:11:"size_before";i:2737;s:10:"size_after";i:2544;s:4:"time";d:0.040000000000000001;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16031, 1661, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:4.7883953679283175;s:5:"bytes";i:5483;s:11:"size_before";i:114506;s:10:"size_after";i:109023;s:4:"time";d:0.24999999999999997;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:5:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:4.7300000000000004;s:5:"bytes";i:244;s:11:"size_before";i:5163;s:10:"size_after";i:4919;s:4:"time";d:0.01;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:5.2599999999999998;s:5:"bytes";i:504;s:11:"size_before";i:9581;s:10:"size_after";i:9077;s:4:"time";d:0.02;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:4.71;s:5:"bytes";i:1782;s:11:"size_before";i:37809;s:10:"size_after";i:36027;s:4:"time";d:0.080000000000000002;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:4.6900000000000004;s:5:"bytes";i:2785;s:11:"size_before";i:59382;s:10:"size_after";i:56597;s:4:"time";d:0.12;}s:16:"featured_preview";O:8:"stdClass":5:{s:7:"percent";d:6.5300000000000002;s:5:"bytes";i:168;s:11:"size_before";i:2571;s:10:"size_after";i:2403;s:4:"time";d:0.02;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16041, 1611, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:15.34083828355419;s:5:"bytes";i:3693;s:11:"size_before";i:24073;s:10:"size_after";i:20380;s:4:"time";d:0.029999999999999999;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:2:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:6.9800000000000004;s:5:"bytes";i:531;s:11:"size_before";i:7604;s:10:"size_after";i:7073;s:4:"time";d:0.02;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:19.199999999999999;s:5:"bytes";i:3162;s:11:"size_before";i:16469;s:10:"size_after";i:13307;s:4:"time";d:0.01;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16051, 1591, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:14.787169659067983;s:5:"bytes";i:3665;s:11:"size_before";i:24785;s:10:"size_after";i:21120;s:4:"time";d:0.040000000000000001;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:2:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:6.5499999999999998;s:5:"bytes";i:503;s:11:"size_before";i:7685;s:10:"size_after";i:7182;s:4:"time";d:0.01;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:18.489999999999998;s:5:"bytes";i:3162;s:11:"size_before";i:17100;s:10:"size_after";i:13938;s:4:"time";d:0.029999999999999999;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16061, 1571, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:12.438782369322364;s:5:"bytes";i:3886;s:11:"size_before";i:31241;s:10:"size_after";i:27355;s:4:"time";d:0.059999999999999998;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:2:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.2400000000000002;s:5:"bytes";i:724;s:11:"size_before";i:10000;s:10:"size_after";i:9276;s:4:"time";d:0.029999999999999999;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:14.890000000000001;s:5:"bytes";i:3162;s:11:"size_before";i:21241;s:10:"size_after";i:18079;s:4:"time";d:0.029999999999999999;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16071, 1551, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:14.249628528974739;s:5:"bytes";i:3836;s:11:"size_before";i:26920;s:10:"size_after";i:23084;s:4:"time";d:0.029999999999999999;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:2:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.6399999999999997;s:5:"bytes";i:674;s:11:"size_before";i:8819;s:10:"size_after";i:8145;s:4:"time";d:0.01;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:17.469999999999999;s:5:"bytes";i:3162;s:11:"size_before";i:18101;s:10:"size_after";i:14939;s:4:"time";d:0.02;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16081, 1121, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:91.028425269050715;s:5:"bytes";i:18862;s:11:"size_before";i:20721;s:10:"size_after";i:1859;s:4:"time";d:0.02;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:1:{s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:91.030000000000001;s:5:"bytes";i:18862;s:11:"size_before";i:20721;s:10:"size_after";i:1859;s:4:"time";d:0.02;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16091, 1111, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:89.105258242271418;s:5:"bytes";i:19081;s:11:"size_before";i:21414;s:10:"size_after";i:2333;s:4:"time";d:0.02;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:1:{s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:89.109999999999999;s:5:"bytes";i:19081;s:11:"size_before";i:21414;s:10:"size_after";i:2333;s:4:"time";d:0.02;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16101, 311, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:8.379745541873179;s:5:"bytes";i:6560;s:11:"size_before";i:78284;s:10:"size_after";i:71724;s:4:"time";d:0.11;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:6.54;s:5:"bytes";i:385;s:11:"size_before";i:5888;s:10:"size_after";i:5503;s:4:"time";d:0.02;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:7.3499999999999996;s:5:"bytes";i:473;s:11:"size_before";i:6438;s:10:"size_after";i:5965;s:4:"time";d:0.01;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:8.6099999999999994;s:5:"bytes";i:2208;s:11:"size_before";i:25638;s:10:"size_after";i:23430;s:4:"time";d:0.029999999999999999;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:8.6699999999999999;s:5:"bytes";i:3494;s:11:"size_before";i:40320;s:10:"size_after";i:36826;s:4:"time";d:0.050000000000000003;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16111, 271, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:7:{s:7:"percent";d:17.162700910655087;s:5:"bytes";i:81794;s:11:"size_before";i:476580;s:10:"size_after";i:394786;s:4:"time";d:2.5099999999999998;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:14.59;s:5:"bytes";i:2100;s:11:"size_before";i:14390;s:10:"size_after";i:12290;s:4:"time";d:0.080000000000000002;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:16.309999999999999;s:5:"bytes";i:6137;s:11:"size_before";i:37617;s:10:"size_after";i:31480;s:4:"time";d:0.17999999999999999;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:16.190000000000001;s:5:"bytes";i:28502;s:11:"size_before";i:176045;s:10:"size_after";i:147543;s:4:"time";d:1.01;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:18.129999999999999;s:5:"bytes";i:45055;s:11:"size_before";i:248528;s:10:"size_after";i:203473;s:4:"time";d:1.24;}}}'); 
INSERT INTO `wp_postmeta` VALUES (16161, 901, '_config_errors', 'a:1:{s:12:"mail.subject";i:101;}'); 
INSERT INTO `wp_postmeta` VALUES (16171, 911, '_config_errors', 'a:1:{s:12:"mail.subject";i:101;}');
#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_posts`
# --------------------------------------------------------


#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3521 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_posts`
#
 
INSERT INTO `wp_posts` VALUES (421, 1, '2016-02-03 19:21:23', '2016-02-03 19:21:23', '', 'General FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2016-02-04 03:20:42', '2016-02-04 03:20:42', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=accordions&#038;p=421', 0, 'accordions', '', 0); 
INSERT INTO `wp_posts` VALUES (471, 1, '2016-02-03 19:29:41', '2016-02-03 19:29:41', '', 'FAQ - Getting Wiser', '', 'publish', 'closed', 'closed', '', 'faq-getting-wiser', '', '', '2016-02-04 03:18:58', '2016-02-04 03:18:58', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=accordions&#038;p=471', 0, 'accordions', '', 0); 
INSERT INTO `wp_posts` VALUES (961, 1, '2016-02-08 20:19:03', '2016-02-08 20:19:03', '', 'Support Content', '', 'publish', 'closed', 'closed', '', 'acf_support-content', '', '', '2016-02-16 23:00:22', '2016-02-16 23:00:22', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=acf&#038;p=961', 0, 'acf', '', 0); 
INSERT INTO `wp_posts` VALUES (1471, 1, '2016-02-12 00:21:12', '2016-02-12 00:21:12', '', 'Utilities', '', 'publish', 'closed', 'closed', '', 'acf_utilities', '', '', '2016-02-12 00:42:29', '2016-02-12 00:42:29', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=acf&#038;p=1471', 0, 'acf', '', 0); 
INSERT INTO `wp_posts` VALUES (1731, 1, '2016-02-12 20:06:26', '2016-02-12 20:06:26', '', 'Homepage Info', '', 'publish', 'closed', 'closed', '', 'acf_homepage-info', '', '', '2016-03-06 18:51:25', '2016-03-06 18:51:25', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=acf&#038;p=1731', 0, 'acf', '', 0); 
INSERT INTO `wp_posts` VALUES (2891, 1, '2016-02-16 22:24:55', '2016-02-16 22:24:55', '', 'Getting Started', '', 'publish', 'closed', 'closed', '', 'acf_getting-started', '', '', '2016-02-16 22:52:07', '2016-02-16 22:52:07', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=acf&#038;p=2891', 0, 'acf', '', 0); 
INSERT INTO `wp_posts` VALUES (271, 1, '2016-02-03 16:00:16', '2016-02-03 16:00:16', '', '2_Feature-Update-Email-Main_email-optimized-1024x921', '', 'inherit', 'open', 'closed', '', '2_feature-update-email-main_email-optimized-1024x921', '', '', '2016-02-03 16:00:16', '2016-02-03 16:00:16', '', 261, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/2_Feature-Update-Email-Main_email-optimized-1024x921.png', 0, 'attachment', 'image/png', 0); 
INSERT INTO `wp_posts` VALUES (311, 1, '2016-02-03 16:10:45', '2016-02-03 16:10:45', '', 'support-section-1-bg', '', 'inherit', 'open', 'closed', '', 'support-section-1-bg', '', '', '2016-02-03 16:10:45', '2016-02-03 16:10:45', '', 171, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/support-section-1-bg.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1111, 1, '2016-02-09 00:08:20', '2016-02-09 00:08:20', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2016-02-09 00:08:20', '2016-02-09 00:08:20', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/favicon.png', 0, 'attachment', 'image/png', 0); 
INSERT INTO `wp_posts` VALUES (1121, 1, '2016-02-09 00:09:37', '2016-02-09 00:09:37', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon-2', '', '', '2016-02-09 00:09:37', '2016-02-09 00:09:37', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/favicon-1.png', 0, 'attachment', 'image/png', 0); 
INSERT INTO `wp_posts` VALUES (1551, 1, '2016-02-12 16:44:09', '2016-02-12 16:44:09', '', '5.0.0_reduced_risk', '', 'inherit', 'open', 'closed', '', '5-0-0_reduced_risk', '', '', '2016-02-12 16:44:09', '2016-02-12 16:44:09', '', 1541, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/5.0.0_reduced_risk.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1571, 1, '2016-02-12 16:45:35', '2016-02-12 16:45:35', '', '5.0.0_operational_efficiency', '', 'inherit', 'open', 'closed', '', '5-0-0_operational_efficiency', '', '', '2016-02-12 16:45:35', '2016-02-12 16:45:35', '', 1561, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/5.0.0_operational_efficiency.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1591, 1, '2016-02-12 16:46:36', '2016-02-12 16:46:36', '', '5.0.0_visibility_feedback', '', 'inherit', 'open', 'closed', '', '5-0-0_visibility_feedback', '', '', '2016-02-12 16:46:36', '2016-02-12 16:46:36', '', 1581, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/5.0.0_visibility_feedback.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1611, 1, '2016-02-12 16:47:17', '2016-02-12 16:47:17', '', '5.0.0_consumer_engagement', '', 'inherit', 'open', 'closed', '', '5-0-0_consumer_engagement', '', '', '2016-02-12 16:47:17', '2016-02-12 16:47:17', '', 1601, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/5.0.0_consumer_engagement.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1661, 1, '2016-02-12 19:11:14', '2016-02-12 19:11:14', '', '1.4.0_background', '', 'inherit', 'open', 'closed', '', '1-4-0_background', '', '', '2016-02-12 19:11:14', '2016-02-12 19:11:14', '', 1651, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/1.4.0_background.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1681, 1, '2016-02-12 19:15:55', '2016-02-12 19:15:55', '', '5.3.0_background', '', 'inherit', 'open', 'closed', '', '5-3-0_background', '', '', '2016-02-12 19:15:55', '2016-02-12 19:15:55', '', 1671, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/5.3.0_background.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1701, 1, '2016-02-12 19:16:47', '2016-02-12 19:16:47', '', '5.4.0_background', '', 'inherit', 'open', 'closed', '', '5-4-0_background', '', '', '2016-02-12 19:16:47', '2016-02-12 19:16:47', '', 1691, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/5.4.0_background.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1721, 1, '2016-02-12 19:18:10', '2016-02-12 19:18:10', '', '5.5.0_background', '', 'inherit', 'open', 'closed', '', '5-5-0_background', '', '', '2016-02-12 19:18:10', '2016-02-12 19:18:10', '', 1711, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/5.5.0_background.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1841, 1, '2016-02-12 22:41:09', '2016-02-12 22:41:09', '', '0.0.0_amz_logo_300x300', '', 'inherit', 'open', 'closed', '', '0-0-0_amz_logo_300x300', '', '', '2016-02-12 22:41:09', '2016-02-12 22:41:09', '', 1831, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/0.0.0_amz_logo_300x300.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1861, 1, '2016-02-12 22:41:27', '2016-02-12 22:41:27', '', '0.0.0_hd_logo_300x300', '', 'inherit', 'open', 'closed', '', '0-0-0_hd_logo_300x300', '', '', '2016-02-12 22:41:27', '2016-02-12 22:41:27', '', 1851, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/0.0.0_hd_logo_300x300.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1881, 1, '2016-02-12 22:41:40', '2016-02-12 22:41:40', '', '0.0.0_cc_logo_100x100', '', 'inherit', 'open', 'closed', '', '0-0-0_cc_logo_100x100', '', '', '2016-02-12 22:41:40', '2016-02-12 22:41:40', '', 1871, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/0.0.0_cc_logo_100x100.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (1891, 1, '2016-02-12 22:50:28', '2016-02-12 22:50:28', '', '1.0.0_background', '', 'inherit', 'open', 'closed', '', '1-0-0_background', '', '', '2016-02-12 22:50:28', '2016-02-12 22:50:28', '', 1741, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/1.0.0_background.jpg', 0, 'attachment', 'image/jpeg', 0); 
INSERT INTO `wp_posts` VALUES (2931, 1, '2016-02-16 22:30:51', '2016-02-16 22:30:51', '', '4.0.0_wiser_box', '', 'inherit', 'open', 'closed', '', '4-0-0_wiser_box', '', '', '2016-02-16 22:30:51', '2016-02-16 22:30:51', '', 2901, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/4.0.0_wiser_box.png', 0, 'attachment', 'image/png', 0); 
INSERT INTO `wp_posts` VALUES (1651, 1, '2016-02-12 19:11:31', '2016-02-12 19:11:31', '', 'Energy Efficient Solutions', 'Through Wiser Air, Schneider Electric offers various solutions for homeowners to take control of their energy consumption. With services such as home audits where homeowners can be informed of efficiency upgrades like replacing appliances or windows, your customers know and understand their energy use, and how it effects the grid.', 'publish', 'closed', 'closed', '', 'carousel', '', '', '2016-02-12 19:14:56', '2016-02-12 19:14:56', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=cptbc&#038;p=1651', 0, 'cptbc', '', 0); 
INSERT INTO `wp_posts` VALUES (1671, 1, '2016-02-12 19:16:02', '2016-02-12 19:16:02', '', 'Utility Demand Management and Optimization Application', 'Wiser Air helps your utility take control of your grid with a custom application that not only lets you forecast demand response events, but also allows control over consumers’ use during a demand response event and more.', 'publish', 'closed', 'closed', '', 'utility-demand-management-and-optimization-application', '', '', '2016-02-12 19:16:02', '2016-02-12 19:16:02', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=cptbc&#038;p=1671', 0, 'cptbc', '', 0); 
INSERT INTO `wp_posts` VALUES (1691, 1, '2016-02-12 19:16:52', '2016-02-12 19:16:52', '', 'World-Class Hardware with Easy Installation', 'Partnering with your utility to develop seamless, hassle-free deployment and installation, Wiser Air is the flagship offer of our comprehensive selection of hardware for homes that meet utility DR and EE needs. From advanced technical features such as quick connectors and an on-screen Setup Wizard, we make it easy for you and your customers.', 'publish', 'closed', 'closed', '', 'world-class-hardware-with-easy-installation', '', '', '2016-02-12 19:16:52', '2016-02-12 19:16:52', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=cptbc&#038;p=1691', 0, 'cptbc', '', 0); 
INSERT INTO `wp_posts` VALUES (1711, 1, '2016-02-12 19:18:16', '2016-02-12 19:18:16', '', 'We\'ve got your back with ongoing support', 'With unmatched support for your utility, Wiser Air offers a turnkey solution. We’re happy to help with customer recruitment, marketing, installation, and ongoing support for your programs. Our bottom line is making your grid more stable and your customers happier.', 'publish', 'closed', 'closed', '', 'weve-got-your-back-with-ongoing-support', '', '', '2016-02-12 19:18:16', '2016-02-12 19:18:16', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=cptbc&#038;p=1711', 0, 'cptbc', '', 0); 
INSERT INTO `wp_posts` VALUES (1141, 1, '2016-02-09 19:48:02', '2016-02-09 19:48:02', 'Wiser Air has many tools to help you reduce your utility bill, such as Ready Mode scheduling, Comfort Boost, and EcoIQ (coming early 2016).', 'Will Wiser Air lower my electricity bill?', '', 'publish', 'closed', 'closed', '', 'will-wiser-air-lower-my-electricity-bill', '', '', '2016-02-09 19:48:02', '2016-02-09 19:48:02', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1141', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1151, 1, '2016-02-09 19:48:39', '2016-02-09 19:48:39', 'Please refer to our Installation and Wiring guides.', 'Will Wiser Air work with my heating and air conditioning system?', '', 'publish', 'closed', 'closed', '', 'will-wiser-air-work-with-my-heating-and-air-conditioning-system', '', '', '2016-02-09 19:48:39', '2016-02-09 19:48:39', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1151', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1161, 1, '2016-02-09 19:49:23', '2016-02-09 19:49:23', 'The smartphone app is available in the App Store, Google Play, and Microsoft Store under the name of “Wiser Air”.', 'Where can I get the app?', '', 'publish', 'closed', 'closed', '', 'where-can-i-get-the-app-2', '', '', '2016-02-09 19:49:48', '2016-02-09 19:49:48', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1161', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1171, 1, '2016-02-09 19:50:28', '2016-02-09 19:50:28', 'Wiser Air is available on Amazon.com and HomeDepot.com.', 'Where can I purchase Wiser Air?', '', 'publish', 'closed', 'closed', '', 'where-can-i-purchase-wiser-air', '', '', '2016-02-09 19:50:28', '2016-02-09 19:50:28', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1171', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1181, 1, '2016-02-09 19:50:57', '2016-02-09 19:50:57', 'Wiser Air is available in the U.S., and will be coming to Canada in 2016', 'In what countries is Wiser Air available?', '', 'publish', 'closed', 'closed', '', 'in-what-countries-is-wiser-air-available', '', '', '2016-02-09 19:50:57', '2016-02-09 19:50:57', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1181', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1191, 1, '2016-02-09 19:52:19', '2016-02-09 19:52:19', 'The retail list price of Wiser Air is $239.', 'How much does Wiser Air cost?', '', 'publish', 'closed', 'closed', '', 'how-much-does-wiser-air-cost', '', '', '2016-02-09 19:54:34', '2016-02-09 19:54:34', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1191', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1201, 1, '2016-02-09 19:53:45', '2016-02-09 19:53:45', 'The Wiser Air platform does not require any fees.', 'Is there a service or subscription fee?', '', 'publish', 'closed', 'closed', '', 'is-there-a-service-or-subscription-fee', '', '', '2016-02-09 19:53:45', '2016-02-09 19:53:45', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1201', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1211, 1, '2016-02-09 19:56:55', '2016-02-09 19:56:55', 'Ready Mode scheduling is the easiest way to adjust your home’s comfort level. With just a tap you can set Wiser Air to the Home, Away, and Sleep preset modes.\r\nYou set up your Ready Mode temperatures when you created your account. To change your Ready Modes:\r\n\r\n1. ABC', 'What is ready mode scheduling?', '', 'publish', 'closed', 'closed', '', 'what-is-ready-mode-scheduling', '', '', '2016-02-09 19:56:55', '2016-02-09 19:56:55', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1211', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1221, 1, '2016-02-09 19:57:21', '2016-02-09 19:57:21', 'Get a boost of comfort for a set period of time. This feature automatically sets back to the scheduled  temperature so you can relax and know you won’t waste money. Activate Comfort Boost by pressing and holding the setpoint arrow on any part of the Wiser Air platform.', 'What is Comfort Boost?', '', 'publish', 'closed', 'closed', '', 'what-is-comfort-boost', '', '', '2016-02-09 19:57:53', '2016-02-09 19:57:53', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1221', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1223, 1, '2016-02-09 19:58:24', '2016-02-09 19:58:24', 'EcoIQ (coming early 2016) is an algorithm that uses setpoint history, user interaction, temperature and humidity to automate the most efficient schedule for a home. Learn more here.', 'What is ECOIQ?', '', 'publish', 'closed', 'closed', '', 'what-is-ecoiq', '', '', '2016-02-09 19:58:34', '2016-02-09 19:58:34', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1223', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1231, 1, '2016-02-09 20:04:53', '2016-02-09 20:04:53', 'Please visit our getting started page.', 'How do I wire Wiser Air to my HVAC system?', '', 'publish', 'closed', 'closed', '', 'how-do-i-wire-wiser-air-to-my-hvac-system', '', '', '2016-02-09 20:04:53', '2016-02-09 20:04:53', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1231', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1241, 1, '2016-02-09 20:05:28', '2016-02-09 20:05:28', 'First, confirm that your HVAC breaker is turned on.\r\nAlso, Wiser Air requires a 24 VAC power supply. If 120V/240V is applied for any amount of time, it is possible that the unit was damaged.\r\nWiser Air requires a common wire (the C terminal). If your previous thermostat did not have a common wire and a spare wire is not present, you can install the Wiser wire extender. Please see the Wiser Air installation guide.', 'I wired my unit, but the screen is blank. What\'s wrong?', '', 'publish', 'closed', 'closed', '', 'i-wired-my-unit-but-the-screen-is-blank-whats-wrong', '', '', '2016-02-09 20:05:36', '2016-02-09 20:05:36', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1241', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1251, 1, '2016-02-09 20:06:29', '2016-02-09 20:06:29', 'Schneider Electric places a strong emphasis on the security of the Wiser Air Thermostat.  As such,  a password-protected network, WPA2 minimum.', 'Why does Wiser Air require a Wi-Fi secure connection?', '', 'publish', 'closed', 'closed', '', 'why-does-wiser-air-require-a-wi-fi-secure-connection', '', '', '2016-02-09 20:06:29', '2016-02-09 20:06:29', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1251', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1261, 1, '2016-02-09 20:07:09', '2016-02-09 20:07:09', 'Please the the up-close section here. ', 'What is the backlight for and how do I change the intensity of the light?', '', 'publish', 'closed', 'closed', '', 'what-is-the-backlight-for-and-how-do-i-change-the-intensity-of-the-light', '', '', '2016-02-09 20:07:09', '2016-02-09 20:07:09', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1261', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1271, 1, '2016-02-09 20:07:58', '2016-02-09 20:07:58', 'S1 and S2 are for the outdoor temperature sensors of Dual Fuel systems. Their function is to determine when the heating system switches between fuel types. An example would be a heat pump switching to gas heat, when the temperature drops below the minimum effective heat pump temperature.', 'What are the S1 and S2 terminals for?', '', 'publish', 'closed', 'closed', '', 'what-are-the-s1-and-s2-terminals-for', '', '', '2016-02-09 20:08:18', '2016-02-09 20:08:18', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1271', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1281, 1, '2016-02-09 20:09:49', '2016-02-09 20:09:49', 'If the variable speed fan has dedicated wires incompatibles with Wiser Air, then no. If the variable speed fan is only controlled by the G wire and the rest is managed by the internal fan controller itself, then yes, Wiser Air supports this system.', 'Can Wiser Air control variable speed fans?', '', 'publish', 'closed', 'closed', '', 'can-wiser-air-control-variable-speed-fans', '', '', '2016-02-09 20:09:49', '2016-02-09 20:09:49', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1281', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1291, 1, '2016-02-09 20:10:07', '2016-02-09 20:10:07', 'On the WiFi Connections screen, scroll down and select the option "Other Network". You can enter the name and the password of the hidden WiFi network here.', 'How can I connect the Wiser Air to a hidden SSID WiFi network?', '', 'publish', 'closed', 'closed', '', 'how-can-i-connect-the-wiser-air-to-a-hidden-ssid-wifi-network', '', '', '2016-02-09 20:10:07', '2016-02-09 20:10:07', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1291', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1301, 1, '2016-02-09 20:10:38', '2016-02-09 20:10:38', 'On your thermostat screen, please go to Menu > Settings > Localization, among the options on that page you can choose between the temperature scales: Fahrenheit (°F) and Celsius (°C).', 'How can I change the temperature from Fahrenheit to Celsius?', '', 'publish', 'closed', 'closed', '', 'how-can-i-change-the-temperature-from-fahrenheit-to-celsius', '', '', '2016-02-09 20:10:38', '2016-02-09 20:10:38', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1301', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1311, 1, '2016-02-09 20:10:58', '2016-02-09 20:10:58', 'Wiser Air does not use a small piece of wire as a jumper. The jumper is pre-installed on the bottom right corner of the back-plate. Please see the Wiser Air installation guide for further instructions.', 'I have a small piece of wire (jumper) from RH to RC on my old thermostat. Where should I connect it on Wiser Air?', '', 'publish', 'closed', 'closed', '', 'i-have-a-small-piece-of-wire-jumper-from-rh-to-rc-on-my-old-thermostat-where-should-i-connect-it-on-wiser-air', '', '', '2016-02-09 20:10:58', '2016-02-09 20:10:58', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1311', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1321, 1, '2016-02-09 20:11:43', '2016-02-09 20:11:43', 'You login to the app with the same credentials that were used when creating your account.', 'My HVAC installer didn\'t sync the thermostat with the mobile app, how can I do that now?', '', 'publish', 'closed', 'closed', '', 'my-hvac-installer-didnt-sync-the-thermostat-with-the-mobile-app-how-can-i-do-that-now', '', '', '2016-02-09 20:11:43', '2016-02-09 20:11:43', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1321', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1323, 1, '2016-02-09 20:12:15', '2016-02-09 20:12:15', 'Wiser Air requires a 24V AC power source, which is commonly known as the "Common (C) Wire". Therefore, 3 wires are required to finish the installation of the Wiser Air (R, W and C).', 'I have a 2-wire heating system (R and W). Is it compatible with Wiser Air?', '', 'publish', 'closed', 'closed', '', 'i-have-a-2-wire-heating-system-r-and-w-is-it-compatible-with-wiser-air', '', '', '2016-02-09 20:12:15', '2016-02-09 20:12:15', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1323', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1331, 1, '2016-02-09 20:12:33', '2016-02-09 20:12:33', 'If there is no progress on the loading screen for several minutes, please try to turn the HVAC system off and on from your breaker panel, if the issue continues, please contact our technical support.', 'I\'ve just installed the Wiser Air but the screen got stuck on the loading process. Is there any way to fix that?', '', 'publish', 'closed', 'closed', '', 'ive-just-installed-the-wiser-air-but-the-screen-got-stuck-on-the-loading-process-is-there-any-way-to-fix-that', '', '', '2016-02-09 20:12:33', '2016-02-09 20:12:33', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1331', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1341, 1, '2016-02-09 20:13:01', '2016-02-09 20:13:01', 'On the top of the screen you will be able to see an option called "Boost" (blue for cooling, orange for heating). If you tap on that option it will show you the Comfort Boost screen, where you can stop, increase or decrease the time. You can also do this from the app.', 'I activated a Comfort Boost (Heating or Cooling) and I would like to know how to cancel it on the thermostat.', '', 'publish', 'closed', 'closed', '', 'i-activated-a-comfort-boost-heating-or-cooling-and-i-would-like-to-know-how-to-cancel-it-on-the-thermostat', '', '', '2016-02-09 20:13:01', '2016-02-09 20:13:01', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1341', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1351, 1, '2016-02-09 20:13:25', '2016-02-09 20:13:25', 'Please refer to our Wiring Guide.', 'I have a Dual-Fuel heat pump system, will it work with Wiser Air?', '', 'publish', 'closed', 'closed', '', 'i-have-a-dual-fuel-heat-pump-system-will-it-work-with-wiser-air', '', '', '2016-02-09 20:13:25', '2016-02-09 20:13:25', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1351', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (1361, 1, '2016-02-09 20:13:44', '2016-02-09 20:13:44', 'Please make sure that your network name (SSID) is not hidden. If it is hidden you can scroll down the connections list until you find the "Other Network" option. Here you can manually enter the name and password of your WiFi Network. If your SSID is not hidden, your wireless radio might not be reaching Wiser Air. Please try to move the router as close as possible to the thermostat. Also, Wiser Air is only compatible with 2.4GHz wireless networks. If your WiFi is configured as a 5GHz network it will not show up on the network list. Please check your modem/router configuration to determine the status and settings of the network.', 'My WiFi Network is not displayed in the network connections list.', '', 'publish', 'closed', 'closed', '', 'my-wifi-network-is-not-displayed-in-the-network-connections-list', '', '', '2016-02-15 21:50:58', '2016-02-15 21:50:58', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=faq&#038;p=1361', 0, 'faq', '', 0); 
INSERT INTO `wp_posts` VALUES (551, 1, '2016-02-03 20:36:42', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:42', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=551', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (561, 1, '2016-02-03 20:36:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:42', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=561', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (571, 1, '2016-02-03 20:36:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:42', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=571', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (581, 1, '2016-02-03 20:36:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:43', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=581', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (591, 1, '2016-02-03 20:36:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:43', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=591', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (601, 1, '2016-02-03 20:36:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:43', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=601', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (611, 1, '2016-02-03 20:36:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:43', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=611', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (621, 1, '2016-02-03 20:36:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:36:43', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=621', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (631, 1, '2016-02-03 20:37:53', '0000-00-00 00:00:00', '', 'The Wiser Choice', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 20:37:53', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=631', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (683, 1, '2016-02-03 20:41:20', '2016-02-03 20:41:20', '', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=683', 4, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (701, 1, '2016-02-03 20:41:21', '2016-02-03 20:41:21', '', 'Buy', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=701', 6, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (711, 1, '2016-02-03 20:41:21', '2016-02-03 20:41:21', '', 'Amazon', '', 'publish', 'closed', 'closed', '', 'amazon', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=711', 7, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (721, 1, '2016-02-03 20:41:21', '2016-02-03 20:41:21', '', 'Home Depot', '', 'publish', 'closed', 'closed', '', 'home-depot', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=721', 8, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (731, 1, '2016-02-03 20:41:21', '2016-02-03 20:41:21', '', 'Controls Center', '', 'publish', 'closed', 'closed', '', 'controls-center', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=731', 9, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3081, 1, '2016-02-24 18:42:23', '2016-02-24 18:42:23', '', 'Rebate Finder', '', 'publish', 'closed', 'closed', '', 'rebate-finder', '', '', '2016-02-25 14:35:05', '2016-02-25 14:35:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3081', 3, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3111, 1, '2016-02-25 14:31:13', '2016-02-25 14:31:13', ' ', '', '', 'publish', 'closed', 'closed', '', '3111', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3111', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3121, 1, '2016-02-25 14:31:13', '2016-02-25 14:31:13', ' ', '', '', 'publish', 'closed', 'closed', '', '3121', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3121', 3, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3131, 1, '2016-02-25 14:31:14', '2016-02-25 14:31:14', '', 'For Utilities', '', 'publish', 'closed', 'closed', '', 'for-utilities-2', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3131', 5, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3261, 1, '2016-02-25 14:34:21', '2016-02-25 14:34:21', ' ', '', '', 'publish', 'closed', 'closed', '', '3261', '', '', '2016-02-25 14:34:21', '2016-02-25 14:34:21', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3261', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3271, 1, '2016-02-25 14:34:21', '2016-02-25 14:34:21', ' ', '', '', 'publish', 'closed', 'closed', '', '3271', '', '', '2016-02-25 14:34:21', '2016-02-25 14:34:21', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3271', 2, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3241, 1, '2016-02-25 14:34:22', '2016-02-25 14:34:22', ' ', '', '', 'publish', 'closed', 'closed', '', '3241', '', '', '2016-02-25 14:34:22', '2016-02-25 14:34:22', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3241', 4, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3251, 1, '2016-02-25 14:34:22', '2016-02-25 14:34:22', ' ', '', '', 'publish', 'closed', 'closed', '', '3251', '', '', '2016-02-25 14:34:22', '2016-02-25 14:34:22', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3251', 3, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3281, 1, '2016-02-25 14:35:05', '2016-02-25 14:35:05', ' ', '', '', 'publish', 'closed', 'closed', '', '3281', '', '', '2016-02-25 14:35:05', '2016-02-25 14:35:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3281', 2, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3291, 1, '2016-02-25 14:35:05', '2016-02-25 14:35:05', ' ', '', '', 'publish', 'closed', 'closed', '', '3291', '', '', '2016-02-25 14:35:05', '2016-02-25 14:35:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3291', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3311, 1, '2016-03-03 16:57:32', '2016-03-03 16:57:32', ' ', '', '', 'publish', 'closed', 'closed', '', '3311', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3311', 2, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (521, 1, '2016-02-03 19:36:07', '0000-00-00 00:00:00', 'This is a preview of how this form will appear on your website', 'ninja_forms_preview_page', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-02-03 19:36:07', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=521', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (11, 1, '2016-02-03 01:09:41', '2016-02-03 01:09:41', 'hi im here.', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-02-03 02:03:45', '2016-02-03 02:03:45', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (151, 1, '2016-02-03 15:28:45', '2016-02-03 15:28:45', '[fruitful_tabs type="vertical" width="100%" fit="true"]\r\n[fruitful_tab title="EcoIQ"]\r\n<h2>Eco IQ</h2>\r\nA smarter thermostat doesn’t just learn. It understands your habits, runs itself and helps you save. You step back and let it work - this is the beauty and unique benefit of EcoIQ from Wiser Air.\r\n<h3>The EcoIQ difference</h3>\r\nOther thermostats use motion sensors to determine occupancy in the home, a method far less reliable than user feedback. As a result, constant temperature adjustments are required as outside temperatures rise or fall and in-home lifestyles change. In contrast, EcoIQ relies on direct user feedback\r\n<h3>Technology that sets you free</h3>\r\nEcoIQ was developed by HVAC experts and thought leaders, ensuring a dynamic combination of technology power and individual insight. Wiser Air\'s revolutionary self-learning algorithm frees you from having to think about temperature set points, times of day and schedules. The system automates and delivers the most efficient plan possible for your home.\r\n\r\nHow does this happen? It starts when you initially decide what temperatures you want for your three modes - "Home," "Away" and "Sleep." You do this by pressing the up or down buttons next to the temperature display. Working off these initial set points, EcoIQ quickly learns your comfort levels and adjusts temperatures based on accurate weather forecasts. This happens without any further input from you.\r\n<h3>Are you comfortable?</h3>\r\nIn all these actions, Wiser Air is challenging the very idea of set points and schedules. Instead, it is gently encouraging you to think more in terms of “Am I comfortable” as opposed to “It must be 68 degrees.”\r\n\r\nFor example, when you are “Away,” EcoIQ will rapidly reduce your home temperature, using less and less energy each day. However, the temperature will never go below or above the “Away” temperature that you initially set.\r\n\r\nIn the “Home” mode, EcoIQ will quickly make a rough estimate of the temperature that consumes the least energy while still maintaining your comfort. To do this, EcoIQ processes input from key sources (see below) to create a time and temperature plan for the next few hours that will keep you comfortable and save energy.\r\n<h3>How EcoIQ learns and adjusts your system</h3>\r\nEcoIQ builds a database of information about your home and lifestyle in a variety of ways, including:\r\n<ul>\r\n	<li>Developing a thermal profile of your home based on internal conditions and exterior factors such as weather.</li>\r\n	<li>Monitoring your energy usage - this information is continually being cycled though the system, telling EcoIQ where the most energy can be saved.</li>\r\n</ul>\r\nThe key sources EcoIQ uses to adjust your system include:\r\n<ul>\r\n	<li>Best-in-class weather forecasts from Schneider Electric’s Weather Service</li>\r\n	<li>System performance based on your environment and lifestyle</li>\r\n	<li>Feedback from the initial temperature inputs that you provide</li>\r\n</ul>\r\n<h3>Saving You Money</h3>\r\nHere are two examples of how EcoIQ saves you money:\r\n<ul>\r\n	<li>When your system is in the “Away” mode, it will automatically use the least amount of energy and save you the most money. However, when you leave home, it is easy to forget to switch to “Away” (It happens a lot). EcoIQ recognizes this and makes the switch on its own, guaranteeing that you are saving energy and money.</li>\r\n	<li>Another way is with EcoIQ’s ability to gradually lower your “Home” temperature by fractions of degrees, thereby decreasing energy usage. EcoIQ keeps reducing the temperature until you determine, “No, that is too much.” Unlike other systems, Wiser Air takes your input as the only reliable input. In addition, you always have the option of overriding the settings.</li>\r\n</ul>\r\n[/fruitful_tab]\r\n[fruitful_tab title="Weather"]\r\n<h2>#1 Weather Service in the Palm of Your Hand</h2>\r\n<iframe src="https://www.youtube.com/embed/Pv8t1NUza-w?controls=0&amp;showinfo=0" width="420" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\nWiser Air’s ability to accurately forecast weather and manage home energy costs is unmatched in the industry. It starts with Schneider Electric’s Weather Service. This industry-leading service is seamlessly integrated into your Wiser Air Thermostat and easily accessible from your Wiser Weather App.\r\n<h3>Precise Weather at Your Fingertips</h3>\r\nWeather information is readily available today, but Schneider is in a class by itself. For the first time ever, we have taken mission critical weather intelligence that businesses rely on and put it onto a consumer application.\r\n\r\nThe weather forecast on your App is the most precise in the world. And you receive it instantly without clicking through television stations, scrolling the radio dial or putting up with advertisements. No other provider comes close to this feature.\r\n<h3>The #1 Weather Service in the Palm of Your Hand</h3>\r\nFew consumers are aware of Schneider Electric’s undisputed leadership position within the weather industry. For the last eight years, our forecasts have been rated #1 by ForecastWatch.com. In overwhelming numbers, companies trust weather intelligence from Schneider Electric’s Weather Service.\r\n\r\nFor example, during golf tournaments the PGA Tour, partnering with Schneider Electric, must be on high alert for storms and possible lighting strikes to help keep players and fans safe. In addition, we provide similar services to over 2,000 commercial airlines, as well as professional sports teams in pro football and baseball, and thousands of other businesses where accurate weather information is vital for safety and success.\r\n<h3>How You Benefit From Our Best-in-Class Weather</h3>\r\nWeather impacts everyone, everyday. Schneider Electric’s world renowned service can make a measurable difference in how much money you save on energy costs and how comfortable you are in your home.\r\n\r\nEvery day, you’ll experience the value of our weather service through properly adjusted temperatures and forecasts you can depend on. Having accurate weather at your fingertips can also ease anxiety as you plan for the day or the week ahead. When freezing temperatures are a possibility, watch for a Frost Alert banner to flash on your app and on the thermostat. Gardeners with plants at risk will appreciate this feature!\r\n<h3>A Smarter Way to Manage Home Energy</h3>\r\nYou can’t change the weather but Wiser Air will help you dress for it and manage it in your home for greater comfort and less cost. When the weather outside gets frightful, Wiser Air - unique in its ability to adjust temperatures - will keep your home efficient and comfortable.\r\n<h3>Adjust and Save: The Formula for a More Energy Efficient Home</h3>\r\nThe number one driver of power is extreme temperature, both high and low. You’ve seen it in your home as utility bills skyrocket during cold snaps or heat waves. But when your home is smarter, a little bit wiser, and has good information, it can help you manage the house and keep it in balance with outside conditions.\r\n\r\nHow does this happen?\r\n\r\nThe Wiser Air thermostat lets you set temperatures (set points) for those times when you’re <strong>Home, Away or Asleep</strong>. You can create schedules to fit your lifestyle. For a weekday schedule, you might tell the system that you sleep from 11:00 pm to 6:00 a.m., leave home at 7:30 am and return by 5:30 pm.\r\n\r\nArmed with this information and based on outside temperatures, Wiser Air will automatically adjust temperatures in your home based on your schedule - saving you money by using the least amount of energy possible to maintain comfort during the various day parts. And since your schedule may change on the fly, you have the ability via WI-FI to adjust your settings from your iPhone, iPad or laptop from wherever you may be.\r\n\r\nAnd here’s a nice bonus - You don’t have to do anything; Wiser Air does it for you. All you have to do is tell the system what makes you comfortable.\r\n\r\nFor more ways that Wiser Air provides increased control over your comfort and your home energy usage, check out our Ready Mode, Wiser Pulse and Comfort Boost features on this website.\r\n\r\n[/fruitful_tab]\r\n[fruitful_tab title="App"]\r\n<h2>The Wiser Air App: Delivering Unmatched Convenience and Control</h2>\r\nIf you have a Wiser Air thermostat on your wall, you need the Wiser app at your fingertips.\r\n\r\nThe advanced thermostat from Wiser Air provides extraordinary control over your home temperatures, while also helping monitor and conserve energy. Our app takes these benefits to new levels of convenience and control.\r\n\r\nAnything you can do at the thermostat, you can do from your app - anytime from anywhere with your cell phone, iPad or laptop. The Wiser app is available for Apple and Android devices and Windows (2016).\r\n<ul>\r\n	<li>Check the weather for today and the week ahead using Schneider Electric’s Weather Service, voted the number one weather forecasting service in the world for eight years in a row.</li>\r\n	<li>See weather alerts like wind advisories or freeze warnings (from Schneider Electric’s Weather Service)</li>\r\n	<li>Review your current Home, Away and Sleep settings</li>\r\n	<li>Adjust schedules (i.e., extend Away mode if delayed at work)</li>\r\n	<li>Activate Comfort Boost for 15-minute jolts of heat or cool air as needed (i.e., provide a burst of heat as you wake up on cold mornings, warm your home as you pull into the driveway)</li>\r\n	<li>An EcoIQ alert says the system is adjusting temperatures based on weather conditions and your home environment. No other system has this feature.</li>\r\n	<li>View your thermostat’s Pulse feature - a green glow that says you are saving energy with current settings</li>\r\n	<li>If connected to your electric company via Wi-Fi or ZigBee Communications, Interact with the utility for energy insights, energy saving tips and your monthly statements</li>\r\n</ul>\r\n[/fruitful_tab]\r\n\r\n[fruitful_tab title="Comfort Boost"]\r\n<h2>Wiser Comfort Boost</h2>\r\nOne of Wiser Air’s most effective and popular features, Comfort Boost does exactly what the name says - delivering a quick 15 minute temperature boost to warm or cool the home at your command with no loss of energy efficiency.\r\n\r\nFor maximum comfort at home you can’t beat it. For example, if it’s a chilly morning, you can warm the house with a 15-minute heat blast before your normal Home temperature kicks in. When you leave home for work, Wiser Air switches to Away mode to help save energy throughout the day. On the drive home, use your Wiser app to turn on Comfort Boost remotely, warming the house for your arrival.\r\n<h3>Quick comfort at your fingertips</h3>\r\nYou activate this feature by pressing and holding the set point arrow on any part of the Wiser Air platform. This overrides your pre-set temperatures - but not to worry. After 15 minutes of a temperature blast, the system automatically returns to your settings without any input from you. In addition, you can add boosts in 15-minute increments if desired. Again, your original settings are automatically restored.\r\n<h3>A hit with customers</h3>\r\nWiser Air customers rave about Comfort Boost. One homeowner says, “It’s a great feature. One click and I get a blast of cold air for 15 minutes without changing the settings.”\r\n\r\nAnother adds, “We especially like the cool boost. It’s nice when you come home from a workout and just want some cold air without changing the temperature setting.”\r\n\r\n“The ability to trigger a boost of heat or cool air without adjusting the set point is really neat,“ says another user who adds, “I also like that everything is done on the interface level so it’s very easy.”\r\n\r\n[/fruitful_tab]\r\n\r\n[fruitful_tab title="Wiser Pulse"]\r\n<h2>Wiser Pulse</h2>\r\nWith its sleek, elegant design, the Wiser Air thermostat looks good on any wall in your home. The system’s Pulse feature is a particular favorite with those who like to be in control of their home’s efficiency. A soft, ambient glow (“halo” effect) behind the temperature reading provides at--glance awareness of what the system is doing and what’s happening in your home - pulsing BLUE for cooling, RED for heating and GREEN when saving energy.\r\n\r\nYour thermostat also has a personal side, greeting you each day with a cheery “Hello, Daniel (or Hello Sally), the temperature today is 65 degrees.” You will also receive timely weather alerts in the form of red banners across the screen, such as “Wind Advisory until . . . “ or “Freeze warning through. . .”\r\n\r\nThese greetings and alerts will also appear on your laptop and Wiser app. The weather information is based on world-class forecasts from Schneider Electric’s Weather Service.\r\n\r\n[/fruitful_tab]\r\n\r\n[fruitful_tab title="Simple Scheduling"]\r\n<h2>Simple Scheduling</h2>\r\nWiser Air’s scheduling feature offers flexible scheduling and automatic programming that works with your life. Setting your schedule is a breeze and a critical step towards increasing energy efficiency in your home. With one touch, you tweak personal settings to your lifestyle, telling the system your comfort levels for Home, Away and Sleep, including start and end times for each mode.\r\n\r\nFor example, for Sleep mode, you may set the temperature at 64 degrees from 10:00pm to 6:00am. At 6:00am, your Home setting of 70 degrees begins and continues until you leave for work at 8:00am. During your workday, Wiser Air is in Away mode. During these hours, the system’s automatic programming will adjust to weather conditions and provide the most energy efficient condition for your home, saving significantly on energy usage and cost.\r\n\r\n&nbsp;\r\n\r\n[/fruitful_tab]\r\n\r\n[fruitful_tab title="Simple Scheduling"]\r\n<h2>Simple Scheduling</h2>\r\nWiser Air’s scheduling feature offers flexible scheduling and automatic programming that works with your life. Setting your schedule is a breeze and a critical step towards increasing energy efficiency in your home. With one touch, you tweak personal settings to your lifestyle, telling the system your comfort levels for Home, Away and Sleep, including start and end times for each mode.\r\n\r\nFor example, for Sleep mode, you may set the temperature at 64 degrees from 10:00pm to 6:00am. At 6:00am, your Home setting of 70 degrees begins and continues until you leave for work at 8:00am. During your workday, Wiser Air is in Away mode. During these hours, the system’s automatic programming will adjust to weather conditions and provide the most energy efficient condition for your home, saving significantly on energy usage and cost.\r\n\r\n[/fruitful_tab]\r\n\r\n[fruitful_tab title="Schneider Electric"]\r\n\r\n<iframe src="https://www.youtube.com/embed/NlLJMv1Y7Hk?controls=0&amp;showinfo=0" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n\r\n[/fruitful_tab]\r\n[/fruitful_tabs]', 'Explore', '', 'publish', 'closed', 'closed', '', 'explore', '', '', '2016-02-05 18:41:39', '2016-02-05 18:41:39', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=151', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (171, 1, '2016-02-03 15:36:31', '2016-02-03 15:36:31', 'Coming soon.', 'Support', '', 'publish', 'closed', 'closed', '', 'support', '', '', '2016-02-15 21:54:20', '2016-02-15 21:54:20', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=171', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (191, 1, '2016-02-03 15:51:19', '2016-02-03 15:51:19', '<iframe width="1024" height="576" src="https://www.youtube.com/embed/1GMbQ2k_U2M?showinfo=0" frameborder="0" allowfullscreen></iframe>', 'Install Help', '', 'publish', 'closed', 'closed', '', 'install-help', '', '', '2016-02-03 17:20:55', '2016-02-03 17:20:55', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=191', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (221, 1, '2016-02-03 15:57:34', '2016-02-03 15:57:34', '<h3>General</h3>\r\n[accordions id="421"]\r\n\r\n<hr />\r\n\r\n<h3>Getting Wiser</h3>\r\n[accordions id="471"]\r\n\r\n<hr />\r\n\r\n<h3>Cost</h3>\r\n[accordions id="471"]\r\n\r\n<hr />\r\n\r\n<h3>How it Works</h3>\r\n[accordions id="471"]\r\n\r\n<hr />\r\n\r\n<h3>Installation</h3>\r\n[accordions id="471"]\r\n\r\n<hr />\r\n\r\n<h3>Security</h3>\r\n[accordions id="471"]', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2016-02-05 18:57:37', '2016-02-05 18:57:37', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=221', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (241, 1, '2016-02-03 16:00:02', '2016-02-03 16:00:02', '', 'Support - Contact Us', '', 'publish', 'closed', 'closed', '', 'support-contact', '', '', '2016-02-03 19:33:55', '2016-02-03 19:33:55', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=241', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (261, 1, '2016-02-03 16:01:09', '2016-02-03 16:01:09', '<img class="size-full wp-image-271 aligncenter" src="http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/2_Feature-Update-Email-Main_email-optimized-1024x921.png" alt="2_Feature-Update-Email-Main_email-optimized-1024x921" width="1024" height="921" />', 'Updates', '', 'publish', 'closed', 'closed', '', 'updates', '', '', '2016-02-03 17:38:32', '2016-02-03 17:38:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=261', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (1441, 1, '2016-02-12 00:17:19', '2016-02-12 00:17:19', '', 'Utilities', '', 'publish', 'closed', 'closed', '', 'utilities', '', '', '2016-02-12 00:42:40', '2016-02-12 00:42:40', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=1441', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (1741, 1, '2016-02-12 20:13:30', '2016-02-12 20:13:30', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2016-03-06 18:46:10', '2016-03-06 18:46:10', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=1741', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (1951, 1, '2016-02-14 14:54:00', '2016-02-14 14:54:00', '<video poster="https://m.wiserair.com/images/2.0.0_phone_schedule.jpg" controls="" onclick="this.paused?window.play():this.pause();">\r\n                            <source src="https://m.wiserair.com/videos/2.0.0_phone_schedule.mp4" type="video/mp4">\r\n                            Your browser does not support HTML5 video\r\n                        </video>\r\n<p style="text-align: center;">You’ve got your own style, Wiser Air supports customizable interfaces.</p>\r\n<p style="text-align: center;"><a href="#" class="button">See It In Action</a></p>', 'Up Close: Schedules', '', 'publish', 'closed', 'closed', '', 'up-close-schedules', '', '', '2016-02-14 14:56:47', '2016-02-14 14:56:47', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=1951', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (1991, 1, '2016-02-14 15:17:44', '2016-02-14 15:17:44', '<video poster="https://m.wiserair.com/images/2.0.0_phone_schedule.jpg" controls="" onclick="this.paused?window.play():this.pause();">\r\n                            <source src="https://m.wiserair.com/videos/2.0.0_phone_schedule.mp4" type="video/mp4">\r\n                            Your browser does not support HTML5 video\r\n                        </video>\r\n\r\nEnjoy maximum comfort in no time with hassle-free convenience.', 'Up Close: Comfort Boost', '', 'publish', 'closed', 'closed', '', 'up-close-comfort-boost', '', '', '2016-02-14 15:17:44', '2016-02-14 15:17:44', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=1991', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2011, 1, '2016-02-14 15:19:11', '2016-02-14 15:19:11', '<video poster="https://m.wiserair.com/images/2.0.0_phone_schedule.jpg" controls="controls" width="300" height="150">\r\n<source src="https://m.wiserair.com/videos/2.0.0_phone_schedule.mp4" type="video/mp4" />\r\nYour browser does not support HTML5 video\r\n</video>\r\nYou’ve got your own style, Wiser Air supports customizable interfaces.', 'Up Close: My Wiser', '', 'publish', 'closed', 'closed', '', 'up-close-wiser', '', '', '2016-02-14 15:23:09', '2016-02-14 15:23:09', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2011', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2051, 1, '2016-02-14 15:30:53', '2016-02-14 15:30:53', '<div id="siri-container"></div>\r\n<p class="subheading2" style="text-align: center;">ECO IQ IS COOLING MAIN FLOOR.</p>\r\n<p class="subheading2 description" style="text-align: center;">A smarter thermostat doesn\'t just learn. It understands your habits, can run itself and helps you make your home more efficient. How\'s that for comforting?</p>', 'Then There\'s Wiser: Eco IQ', '', 'publish', 'closed', 'closed', '', 'eco-iq', '', '', '2016-02-16 20:02:30', '2016-02-16 20:02:30', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2051', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2081, 1, '2016-02-14 15:32:08', '2016-02-14 15:32:08', '<i class="fa fa-refresh fa-fw fa-5x rotate"></i>\r\n<p style="text-align: center;">Let us drop some wisdom on your thermostat every once in a while, keeping it up to date and running as efficiently as possible.</p>', 'Then There\'s Wiser: Auto Updates', '', 'publish', 'closed', 'closed', '', 'then-theres-wiser-auto-updates', '', '', '2016-02-16 19:42:34', '2016-02-16 19:42:34', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2081', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2101, 1, '2016-02-14 15:39:44', '2016-02-14 15:39:44', '', 'Up Close', '', 'publish', 'closed', 'closed', '', 'up-close', '', '', '2016-02-14 15:39:44', '2016-02-14 15:39:44', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2101', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2121, 1, '2016-02-14 15:50:32', '2016-02-14 15:50:32', '<p style="text-align: center;">Straightforward energy usage information that you can really use.</p>\r\n\r\n<svg version="1.1" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="720" height="400"><desc>Created with Highcharts 4.2.0</desc><defs><clipPath id="highcharts-1"><rect x="0" y="0" width="647" height="285"></rect></clipPath><linearGradient x1="0" y1="0" x2="0" y2="1" id="highcharts-4"><stop offset="0" stop-color="rgb(255,20,0)" stop-opacity="1"></stop><stop offset="1" stop-color="rgb(233,236,0)" stop-opacity="1"></stop></linearGradient><linearGradient x1="0" y1="0" x2="0" y2="1" id="highcharts-5"><stop offset="0" stop-color="rgb(41,141,255)" stop-opacity="1"></stop><stop offset="1" stop-color="rgb(24,20,162)" stop-opacity="1"></stop></linearGradient></defs><rect x="0" y="0" width="720" height="400" strokeWidth="0" fill="#FFFFFF" class=" highcharts-background"></rect><g class="highcharts-grid" zIndex="1"></g><g class="highcharts-grid" zIndex="1"><path fill="none" d="M 63 346.5 L 710 346.5" stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 63 275.5 L 710 275.5" stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 63 204.5 L 710 204.5" stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 63 132.5 L 710 132.5" stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 63 60.5 L 710 60.5" stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path></g><g class="highcharts-axis" zIndex="2"><path fill="none" d="M 89.5 346 L 89.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 116.5 346 L 116.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 143.5 346 L 143.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 170.5 346 L 170.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 197.5 346 L 197.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 224.5 346 L 224.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 251.5 346 L 251.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 278.5 346 L 278.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 305.5 346 L 305.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 332.5 346 L 332.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 359.5 346 L 359.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 386.5 346 L 386.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 412.5 346 L 412.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 439.5 346 L 439.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 466.5 346 L 466.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 493.5 346 L 493.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 520.5 346 L 520.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 547.5 346 L 547.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 574.5 346 L 574.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 601.5 346 L 601.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 628.5 346 L 628.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 655.5 346 L 655.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 682.5 346 L 682.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 709.5 346 L 709.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 62.5 346 L 62.5 356" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 63 346.5 L 710 346.5" stroke="#C0D0E0" stroke-width="1" zIndex="7"></path></g><g class="highcharts-axis" zIndex="2"><text x="24.09375" zIndex="7" text-anchor="middle" transform="translate(0,0) rotate(270 24.09375 203.5)" class=" highcharts-yaxis-title" style="color:#707070;fill:#707070;" y="203.5"><tspan>Temperature (°F)</tspan></text></g><g class="highcharts-series-group" zIndex="3"><path fill="#00A550" fill-opacity="0.25" d="M 0 0"></path><path fill="url(#highcharts-4)" fill-opacity="0.25" d="M 0 0"></path><path fill="url(#highcharts-5)" fill-opacity="0.25" d="M 0 0"></path><g class="highcharts-series highcharts-series-0" zIndex="0.1" transform="translate(63,61) scale(1 1)" clip-path="url(#highcharts-1)"><path fill="none" d="M 13.479166666666666 85.5 C 13.479166666666666 85.5 29.65416666666667 89.0625 40.4375 89.0625 C 51.220833333333324 89.0625 56.6125 85.5 67.39583333333333 85.5 C 78.17916666666667 85.5 83.57083333333333 89.0625 94.35416666666667 89.0625 C 105.1375 89.0625 110.52916666666667 89.0625 121.3125 89.0625 C 132.09583333333333 89.0625 137.4875 87.495 148.27083333333331 85.5 C 159.05416666666665 83.50499999999998 164.44583333333333 84.07499999999995 175.22916666666666 79.08749999999995 C 186.0125 74.09999999999995 191.40416666666664 64.125 202.18749999999997 60.5625 C 212.9708333333333 57 218.3625 57 229.14583333333331 57 C 239.9291666666667 57 245.3208333333333 57 256.1041666666667 57 C 266.8875 57 272.2791666666667 58.42500000000001 283.0625 58.42500000000001 C 293.8458333333333 58.42500000000001 299.2375 57.997499999999945 310.0208333333333 57.71249999999995 C 320.8041666666667 57.427499999999945 326.1958333333333 57 336.9791666666667 57 C 347.7625 57 353.1541666666667 57.7125 363.9375 60.5625 C 374.7208333333333 63.4125 380.1125 69.82499999999999 390.8958333333333 71.25 C 401.6791666666667 72.67500000000001 407.0708333333333 72.67500000000001 417.8541666666667 72.67500000000001 C 428.6375 72.67500000000001 434.0291666666667 72.24749999999996 444.8125 71.96249999999995 C 455.5958333333333 71.67749999999995 460.9875 71.25 471.7708333333333 71.25 C 482.5541666666667 71.25 487.9458333333333 72.67500000000001 498.7291666666667 72.67500000000001 C 509.5125 72.67500000000001 514.9041666666666 72.24749999999996 525.6874999999999 71.96249999999995 C 536.4708333333332 71.67749999999995 541.8625 71.96249999999995 552.6458333333333 71.25 C 563.4291666666666 70.53750000000005 568.8208333333333 67.54499999999993 579.6041666666666 64.83749999999995 C 590.3875 62.12999999999993 595.7791666666666 57.71249999999995 606.5624999999999 57.71249999999995 C 617.3458333333332 57.71249999999995 633.5208333333333 59.13749999999999 633.5208333333333 59.13749999999999" stroke="url(#highcharts-4)" stroke-width="5" zIndex="1" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M 3.479166666666666 85.5 L 13.479166666666666 85.5 C 13.479166666666666 85.5 29.65416666666667 89.0625 40.4375 89.0625 C 51.220833333333324 89.0625 56.6125 85.5 67.39583333333333 85.5 C 78.17916666666667 85.5 83.57083333333333 89.0625 94.35416666666667 89.0625 C 105.1375 89.0625 110.52916666666667 89.0625 121.3125 89.0625 C 132.09583333333333 89.0625 137.4875 87.495 148.27083333333331 85.5 C 159.05416666666665 83.50499999999998 164.44583333333333 84.07499999999995 175.22916666666666 79.08749999999995 C 186.0125 74.09999999999995 191.40416666666664 64.125 202.18749999999997 60.5625 C 212.9708333333333 57 218.3625 57 229.14583333333331 57 C 239.9291666666667 57 245.3208333333333 57 256.1041666666667 57 C 266.8875 57 272.2791666666667 58.42500000000001 283.0625 58.42500000000001 C 293.8458333333333 58.42500000000001 299.2375 57.997499999999945 310.0208333333333 57.71249999999995 C 320.8041666666667 57.427499999999945 326.1958333333333 57 336.9791666666667 57 C 347.7625 57 353.1541666666667 57.7125 363.9375 60.5625 C 374.7208333333333 63.4125 380.1125 69.82499999999999 390.8958333333333 71.25 C 401.6791666666667 72.67500000000001 407.0708333333333 72.67500000000001 417.8541666666667 72.67500000000001 C 428.6375 72.67500000000001 434.0291666666667 72.24749999999996 444.8125 71.96249999999995 C 455.5958333333333 71.67749999999995 460.9875 71.25 471.7708333333333 71.25 C 482.5541666666667 71.25 487.9458333333333 72.67500000000001 498.7291666666667 72.67500000000001 C 509.5125 72.67500000000001 514.9041666666666 72.24749999999996 525.6874999999999 71.96249999999995 C 536.4708333333332 71.67749999999995 541.8625 71.96249999999995 552.6458333333333 71.25 C 563.4291666666666 70.53750000000005 568.8208333333333 67.54499999999993 579.6041666666666 64.83749999999995 C 590.3875 62.12999999999993 595.7791666666666 57.71249999999995 606.5624999999999 57.71249999999995 C 617.3458333333332 57.71249999999995 633.5208333333333 59.13749999999999 633.5208333333333 59.13749999999999 L 643.5208333333333 59.13749999999999" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="25" zIndex="2" class=" highcharts-tracker" style=""></path></g><g class="highcharts-markers highcharts-series-0 highcharts-tracker" zIndex="0.1" transform="translate(63,61) scale(1 1)" clip-path="url(#highcharts-2)" style=""><path fill="url(#highcharts-4)" d="M 13 79.5 C 20.992 79.5 20.992 91.5 13 91.5 C 5.008 91.5 5.008 79.5 13 79.5 Z" stroke="#FFFFFF" stroke-width="1" visibility="hidden"></path></g><g class="highcharts-series highcharts-series-1" zIndex="0.1" transform="translate(63,61) scale(1 1)" clip-path="url(#highcharts-1)"><path fill="none" d="M 13.479166666666666 199.5 C 13.479166666666666 199.5 29.65416666666667 182.4 40.4375 171 C 51.220833333333324 159.6 56.6125 151.04999999999998 67.39583333333333 142.5 C 78.17916666666667 133.95 83.57083333333333 128.25 94.35416666666667 128.25 C 105.1375 128.25 110.52916666666667 128.25 121.3125 128.25 C 132.09583333333333 128.25 137.4875 121.125 148.27083333333331 121.125 C 159.05416666666665 121.125 164.44583333333333 128.25 175.22916666666666 128.25 C 186.0125 128.25 191.40416666666664 128.25 202.18749999999997 128.25 C 212.9708333333333 128.25 218.3625 136.80000000000004 229.14583333333331 142.5 C 239.9291666666667 148.20000000000002 245.3208333333333 152.475 256.1041666666667 156.75 C 266.8875 161.02499999999998 272.2791666666667 159.6 283.0625 163.875 C 293.8458333333333 168.14999999999998 299.2375 172.42500000000004 310.0208333333333 178.125 C 320.8041666666667 183.82500000000002 326.1958333333333 186.67499999999998 336.9791666666667 192.375 C 347.7625 198.07499999999996 353.1541666666667 200.925 363.9375 206.625 C 374.7208333333333 212.325 380.1125 215.17500000000004 390.8958333333333 220.875 C 401.6791666666667 226.57500000000002 407.0708333333333 229.42499999999998 417.8541666666667 235.125 C 428.6375 240.82499999999996 434.0291666666667 249.375 444.8125 249.375 C 455.5958333333333 249.375 460.9875 249.375 471.7708333333333 249.375 C 482.5541666666667 249.375 487.9458333333333 249.375 498.7291666666667 249.375 C 509.5125 249.375 514.9041666666666 249.375 525.6874999999999 249.375 C 536.4708333333332 249.375 541.8625 246.525 552.6458333333333 242.25 C 563.4291666666666 237.97500000000002 568.8208333333333 232.27499999999998 579.6041666666666 228 C 590.3875 223.725 595.7791666666666 223.725 606.5624999999999 220.875 C 617.3458333333332 218.025 633.5208333333333 213.75 633.5208333333333 213.75" stroke="url(#highcharts-5)" stroke-width="5" zIndex="1" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M 3.479166666666666 199.5 L 13.479166666666666 199.5 C 13.479166666666666 199.5 29.65416666666667 182.4 40.4375 171 C 51.220833333333324 159.6 56.6125 151.04999999999998 67.39583333333333 142.5 C 78.17916666666667 133.95 83.57083333333333 128.25 94.35416666666667 128.25 C 105.1375 128.25 110.52916666666667 128.25 121.3125 128.25 C 132.09583333333333 128.25 137.4875 121.125 148.27083333333331 121.125 C 159.05416666666665 121.125 164.44583333333333 128.25 175.22916666666666 128.25 C 186.0125 128.25 191.40416666666664 128.25 202.18749999999997 128.25 C 212.9708333333333 128.25 218.3625 136.80000000000004 229.14583333333331 142.5 C 239.9291666666667 148.20000000000002 245.3208333333333 152.475 256.1041666666667 156.75 C 266.8875 161.02499999999998 272.2791666666667 159.6 283.0625 163.875 C 293.8458333333333 168.14999999999998 299.2375 172.42500000000004 310.0208333333333 178.125 C 320.8041666666667 183.82500000000002 326.1958333333333 186.67499999999998 336.9791666666667 192.375 C 347.7625 198.07499999999996 353.1541666666667 200.925 363.9375 206.625 C 374.7208333333333 212.325 380.1125 215.17500000000004 390.8958333333333 220.875 C 401.6791666666667 226.57500000000002 407.0708333333333 229.42499999999998 417.8541666666667 235.125 C 428.6375 240.82499999999996 434.0291666666667 249.375 444.8125 249.375 C 455.5958333333333 249.375 460.9875 249.375 471.7708333333333 249.375 C 482.5541666666667 249.375 487.9458333333333 249.375 498.7291666666667 249.375 C 509.5125 249.375 514.9041666666666 249.375 525.6874999999999 249.375 C 536.4708333333332 249.375 541.8625 246.525 552.6458333333333 242.25 C 563.4291666666666 237.97500000000002 568.8208333333333 232.27499999999998 579.6041666666666 228 C 590.3875 223.725 595.7791666666666 223.725 606.5624999999999 220.875 C 617.3458333333332 218.025 633.5208333333333 213.75 633.5208333333333 213.75 L 643.5208333333333 213.75" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="25" zIndex="2" class=" highcharts-tracker" style=""></path></g><g class="highcharts-markers highcharts-series-1 highcharts-tracker" zIndex="0.1" transform="translate(63,61) scale(1 1)" clip-path="url(#highcharts-2)" style=""><path fill="url(#highcharts-5)" d="M 336 186.375 L 342 192.375 336 198.375 330 192.375 Z" stroke="#FFFFFF" stroke-width="1" visibility="hidden"></path></g><g class="highcharts-series highcharts-series-2" zIndex="0.1" transform="translate(63,61) scale(1 1)" clip-path="url(#highcharts-1)"><path fill="none" d="M 13.479166666666666 85.5 C 13.479166666666666 85.5 29.65416666666667 85.5 40.4375 85.5 C 51.220833333333324 85.5 56.6125 85.5 67.39583333333333 85.5 C 78.17916666666667 85.5 83.57083333333333 85.5 94.35416666666667 85.5 C 105.1375 85.5 110.52916666666667 85.5 121.3125 85.5 C 132.09583333333333 85.5 137.4875 85.5 148.27083333333331 85.5 C 159.05416666666665 85.5 164.44583333333333 57 175.22916666666666 57 C 186.0125 57 191.40416666666664 57 202.18749999999997 57 C 212.9708333333333 57 218.3625 57 229.14583333333331 57 C 239.9291666666667 57 245.3208333333333 57 256.1041666666667 57 C 266.8875 57 272.2791666666667 57 283.0625 57 C 293.8458333333333 57 299.2375 57 310.0208333333333 57 C 320.8041666666667 57 326.1958333333333 57 336.9791666666667 57 C 347.7625 57 353.1541666666667 71.25 363.9375 71.25 C 374.7208333333333 71.25 380.1125 71.25 390.8958333333333 71.25 C 401.6791666666667 71.25 407.0708333333333 71.25 417.8541666666667 71.25 C 428.6375 71.25 434.0291666666667 71.25 444.8125 71.25 C 455.5958333333333 71.25 460.9875 71.25 471.7708333333333 71.25 C 482.5541666666667 71.25 487.9458333333333 71.25 498.7291666666667 71.25 C 509.5125 71.25 514.9041666666666 71.25 525.6874999999999 71.25 C 536.4708333333332 71.25 541.8625 71.25 552.6458333333333 71.25 C 563.4291666666666 71.25 568.8208333333333 57 579.6041666666666 57 C 590.3875 57 595.7791666666666 57 606.5624999999999 57 C 617.3458333333332 57 633.5208333333333 85.5 633.5208333333333 85.5" stroke="#00A550" stroke-width="2" zIndex="1" stroke-dasharray="6,2"></path><path fill="none" d="M 3.479166666666666 85.5 L 13.479166666666666 85.5 C 13.479166666666666 85.5 29.65416666666667 85.5 40.4375 85.5 C 51.220833333333324 85.5 56.6125 85.5 67.39583333333333 85.5 C 78.17916666666667 85.5 83.57083333333333 85.5 94.35416666666667 85.5 C 105.1375 85.5 110.52916666666667 85.5 121.3125 85.5 C 132.09583333333333 85.5 137.4875 85.5 148.27083333333331 85.5 C 159.05416666666665 85.5 164.44583333333333 57 175.22916666666666 57 C 186.0125 57 191.40416666666664 57 202.18749999999997 57 C 212.9708333333333 57 218.3625 57 229.14583333333331 57 C 239.9291666666667 57 245.3208333333333 57 256.1041666666667 57 C 266.8875 57 272.2791666666667 57 283.0625 57 C 293.8458333333333 57 299.2375 57 310.0208333333333 57 C 320.8041666666667 57 326.1958333333333 57 336.9791666666667 57 C 347.7625 57 353.1541666666667 71.25 363.9375 71.25 C 374.7208333333333 71.25 380.1125 71.25 390.8958333333333 71.25 C 401.6791666666667 71.25 407.0708333333333 71.25 417.8541666666667 71.25 C 428.6375 71.25 434.0291666666667 71.25 444.8125 71.25 C 455.5958333333333 71.25 460.9875 71.25 471.7708333333333 71.25 C 482.5541666666667 71.25 487.9458333333333 71.25 498.7291666666667 71.25 C 509.5125 71.25 514.9041666666666 71.25 525.6874999999999 71.25 C 536.4708333333332 71.25 541.8625 71.25 552.6458333333333 71.25 C 563.4291666666666 71.25 568.8208333333333 57 579.6041666666666 57 C 590.3875 57 595.7791666666666 57 606.5624999999999 57 C 617.3458333333332 57 633.5208333333333 85.5 633.5208333333333 85.5 L 643.5208333333333 85.5" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="22" zIndex="2" class=" highcharts-tracker" style=""></path></g><g class="highcharts-markers highcharts-series-2 highcharts-tracker" zIndex="0.1" transform="translate(63,61) scale(1 1)" clip-path="url(#highcharts-2)" style=""><path fill="#00A550" d="M 34 79.5 L 46 79.5 46 91.5 34 91.5 Z" stroke="#FFFFFF" stroke-width="1" visibility="hidden"></path></g></g><text x="360" text-anchor="middle" class="highcharts-title" zIndex="4" style="color:#333333;font-size:18px;fill:#333333;width:656px;" y="24"><tspan>Indoor vs. Outdoor</tspan></text><text x="360" text-anchor="middle" class="highcharts-subtitle" zIndex="4" style="color:#555555;fill:#555555;width:656px;" y="45"><tspan>Downstairs Thermostat</tspan></text><g class="highcharts-axis-labels highcharts-xaxis-labels" zIndex="7"><text x="79.07189153101733" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 79.07189153101733 362)" y="362" opacity="1"><tspan>10AM</tspan></text><text x="106.03022486435066" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 106.03022486435066 362)" y="362" opacity="1"><tspan>11AM</tspan></text><text x="132.98855819768403" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 132.98855819768403 362)" y="362" opacity="1"><tspan>12PM</tspan></text><text x="159.94689153101734" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 159.94689153101734 362)" y="362" opacity="1"><tspan>1PM</tspan></text><text x="186.90522486435069" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 186.90522486435069 362)" y="362" opacity="1"><tspan>2PM</tspan></text><text x="213.863558197684" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 213.863558197684 362)" y="362" opacity="1"><tspan>3PM</tspan></text><text x="240.82189153101734" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 240.82189153101734 362)" y="362" opacity="1"><tspan>4PM</tspan></text><text x="267.7802248643506" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 267.7802248643506 362)" y="362" opacity="1"><tspan>5PM</tspan></text><text x="294.738558197684" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 294.738558197684 362)" y="362" opacity="1"><tspan>6PM</tspan></text><text x="321.6968915310173" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 321.6968915310173 362)" y="362" opacity="1"><tspan>7PM</tspan></text><text x="348.65522486435066" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 348.65522486435066 362)" y="362" opacity="1"><tspan>8PM</tspan></text><text x="375.613558197684" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 375.613558197684 362)" y="362" opacity="1"><tspan>9PM</tspan></text><text x="402.5718915310173" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 402.5718915310173 362)" y="362" opacity="1"><tspan>10PM</tspan></text><text x="429.53022486435066" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 429.53022486435066 362)" y="362" opacity="1"><tspan>11PM</tspan></text><text x="456.488558197684" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 456.488558197684 362)" y="362" opacity="1"><tspan>12AM</tspan></text><text x="483.4468915310173" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 483.4468915310173 362)" y="362" opacity="1"><tspan>1AM</tspan></text><text x="510.4052248643507" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 510.4052248643507 362)" y="362" opacity="1"><tspan>2AM</tspan></text><text x="537.363558197684" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 537.363558197684 362)" y="362" opacity="1"><tspan>3AM</tspan></text><text x="564.3218915310173" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 564.3218915310173 362)" y="362" opacity="1"><tspan>4AM</tspan></text><text x="591.2802248643507" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 591.2802248643507 362)" y="362" opacity="1"><tspan>5AM</tspan></text><text x="618.2385581976839" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 618.2385581976839 362)" y="362" opacity="1"><tspan>6AM</tspan></text><text x="645.1968915310173" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 645.1968915310173 362)" y="362" opacity="1"><tspan>7AM</tspan></text><text x="672.1552248643507" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 672.1552248643507 362)" y="362" opacity="1"><tspan>8AM</tspan></text><text x="699.1135581976839" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;" text-anchor="end" transform="translate(0,0) rotate(-45 699.1135581976839 362)" y="362" opacity="1"><tspan>9AM</tspan></text></g><g class="highcharts-axis-labels highcharts-yaxis-labels" zIndex="7"><text x="48" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:228px;text-overflow:clip;" text-anchor="end" transform="translate(0,0)" y="351" opacity="1">40</text><text x="48" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:228px;text-overflow:clip;" text-anchor="end" transform="translate(0,0)" y="279" opacity="1">50</text><text x="48" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:228px;text-overflow:clip;" text-anchor="end" transform="translate(0,0)" y="208" opacity="1">60</text><text x="48" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:228px;text-overflow:clip;" text-anchor="end" transform="translate(0,0)" y="137" opacity="1">70</text><text x="48" style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:228px;text-overflow:clip;" text-anchor="end" transform="translate(0,0)" y="66" opacity="1">80</text></g><g class="highcharts-tooltip" zIndex="8" style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;" transform="translate(26,-9999)" opacity="0" visibility="visible"><path fill="none" d="M 3.5 0.5 L 97.5 0.5 C 100.5 0.5 100.5 0.5 100.5 3.5 L 100.5 40.5 C 100.5 43.5 100.5 43.5 97.5 43.5 L 55.5 43.5 49.5 49.5 43.5 43.5 3.5 43.5 C 0.5 43.5 0.5 43.5 0.5 40.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="black" stroke-opacity="0.049999999999999996" stroke-width="5" transform="translate(1, 1)" width="100" height="43"></path><path fill="none" d="M 3.5 0.5 L 97.5 0.5 C 100.5 0.5 100.5 0.5 100.5 3.5 L 100.5 40.5 C 100.5 43.5 100.5 43.5 97.5 43.5 L 55.5 43.5 49.5 49.5 43.5 43.5 3.5 43.5 C 0.5 43.5 0.5 43.5 0.5 40.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="black" stroke-opacity="0.09999999999999999" stroke-width="3" transform="translate(1, 1)" width="100" height="43"></path><path fill="none" d="M 3.5 0.5 L 97.5 0.5 C 100.5 0.5 100.5 0.5 100.5 3.5 L 100.5 40.5 C 100.5 43.5 100.5 43.5 97.5 43.5 L 55.5 43.5 49.5 49.5 43.5 43.5 3.5 43.5 C 0.5 43.5 0.5 43.5 0.5 40.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" isShadow="true" stroke="black" stroke-opacity="0.15" stroke-width="1" transform="translate(1, 1)" width="100" height="43"></path><path fill="rgba(249, 249, 249, .85)" d="M 3.5 0.5 L 97.5 0.5 C 100.5 0.5 100.5 0.5 100.5 3.5 L 100.5 40.5 C 100.5 43.5 100.5 43.5 97.5 43.5 L 55.5 43.5 49.5 49.5 43.5 43.5 3.5 43.5 C 0.5 43.5 0.5 43.5 0.5 40.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke="url(#highcharts-4)" stroke-width="1"></path><text x="8" zIndex="1" style="font-size:12px;color:#333333;fill:#333333;" y="20"><tspan style="font-size: 10px">10AM</tspan><tspan style="fill:url(#highcharts-4)" x="8" dy="15">●</tspan><tspan dx="0"> Indoor: </tspan><tspan style="font-weight:bold" dx="0">68°F</tspan></text></g></svg>', 'Up Close: Clear Information', '', 'publish', 'closed', 'closed', '', 'up-close-clear-information', '', '', '2016-02-23 18:09:55', '2016-02-23 18:09:55', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2121', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2141, 1, '2016-02-14 15:51:36', '2016-02-14 15:51:36', '<p style="text-align: center;">Receive incentives from utilities when energy costs spike. It\'s not only good for your home, but everyone else in your area.</p>\r\n<img src="https://m.wiserair.com/images/2.2.0_payback_accept.jpg" alt="payback_accept" />', 'Up Close: Peak Paybacks', '', 'publish', 'closed', 'closed', '', '2141-2', '', '', '2016-02-14 15:52:02', '2016-02-14 15:52:02', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2141', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2171, 1, '2016-02-14 15:53:19', '2016-02-14 15:53:19', '<img src="https://m.wiserair.com/images/2.2.0_forecast_rain.jpg" alt="forecast_rain" />\r\n<p style="text-align: center;">#1 ranked weather service from Schneider Electric, used by the FAA, PGA Tour, NFL Network and now, your home.</p>', 'Up Close: Wiser Forecast', '', 'publish', 'closed', 'closed', '', 'up-close-wiser-forecast', '', '', '2016-02-14 15:53:19', '2016-02-14 15:53:19', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2171', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2181, 1, '2016-02-14 15:58:34', '2016-02-14 15:58:34', '<object id="software-svg" class="embed-responsive-item" data="https://m.wiserair.com/images/2.3.0_specs_iPhone.svg" type="image/svg+xml"></object>', 'Up Close: Software', '', 'publish', 'closed', 'closed', '', 'up-close-software', '', '', '2016-02-15 18:43:51', '2016-02-15 18:43:51', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2181', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2201, 1, '2016-02-14 15:58:57', '2016-02-14 15:58:57', '<object id="hardware-svg" class="embed-responsive-item" type="image/svg+xml" data="https:&#x2F;&#x2F;m.wiserair.com/images/2.3.0_thermostat_diagram_v3.svg" alt="stat_specs"></object>', 'Up Close: Hardware', '', 'publish', 'closed', 'closed', '', 'up-close-hardware', '', '', '2016-02-15 18:43:04', '2016-02-15 18:43:04', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2201', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2291, 1, '2016-02-15 19:56:37', '2016-02-15 19:56:37', 'Unfortunately, based on what you\'ve told us, it doesn\'t look like your system is compatible with Wiser Air. Still, we\'d like to keep you up to date on new developments as we add more compatibility in the future.', 'We\'re Sorry', '', 'publish', 'closed', 'closed', '', 'compatibility-failure', '', '', '2016-02-15 20:03:20', '2016-02-15 20:03:20', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2291', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2311, 1, '2016-02-15 19:57:07', '2016-02-15 19:57:07', 'Based on what you\'ve told us, it looks like your system is compatible with Wiser Air. Click the links below to buy or to get more information on Wiser Air.', 'Congratulations', '', 'publish', 'closed', 'closed', '', 'compatibility-success', '', '', '2016-02-15 20:02:51', '2016-02-15 20:02:51', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2311', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2291, 1, '2016-02-15 19:56:37', '2016-02-15 19:56:37', 'Unfortunately, based on what you\'ve told us, it doesn\'t look like your system is compatible with Wiser Air. Still, we\'d like to keep you up to date on new developments as we add more compatibility in the future.', 'We\'re Sorry', '', 'publish', 'closed', 'closed', '', 'compatibility-failure', '', '', '2016-02-15 20:03:20', '2016-02-15 20:03:20', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2291', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2311, 1, '2016-02-15 19:57:07', '2016-02-15 19:57:07', 'Based on what you\'ve told us, it looks like your system is compatible with Wiser Air. Click the links below to buy or to get more information on Wiser Air.', 'Congratulations', '', 'publish', 'closed', 'closed', '', 'compatibility-success', '', '', '2016-02-15 20:02:51', '2016-02-15 20:02:51', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2311', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2361, 1, '2016-02-16 16:36:53', '2016-02-16 16:36:53', '<p class="p1">Wiser Air has many tools to help you reduce your utility bill, such as Ready Mode scheduling, Comfort Boost, and EcoIQ (coming early 2016).</p>', 'Will Wiser Air lower my electricity bill?', '', 'publish', 'open', 'open', '', 'will-wiser-air-lower-my-electricity-bill', '', '', '2016-02-16 16:36:53', '2016-02-16 16:36:53', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2361', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2381, 1, '2016-02-16 16:37:39', '2016-02-16 16:37:39', '<p class="p1">Please refer to our Installation and Wiring guides.</p>', 'Will Wiser Air work with my heating and air conditioning system?', '', 'publish', 'open', 'open', '', 'will-wiser-air-work-with-my-heating-and-air-conditioning-system', '', '', '2016-02-16 16:37:39', '2016-02-16 16:37:39', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2381', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2401, 1, '2016-02-16 16:38:16', '2016-02-16 16:38:16', '<p class="p1">The smartphone app is available in the App Store, Google Play, and Microsoft Store under the name of “Wiser Air”.</p>', 'Where can I get the app?', '', 'publish', 'open', 'open', '', 'where-can-i-get-the-app', '', '', '2016-02-16 16:38:16', '2016-02-16 16:38:16', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2401', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2421, 1, '2016-02-16 16:40:42', '2016-02-16 16:40:42', '<p class="p1">Wiser Air is available on <a href="https://www.amazon.com/">Amazon.com</a> and <a href="http://www.homedepot.com/">HomeDepot.com</a>.</p>', 'Where can I purchase Wiser Air?', '', 'publish', 'open', 'open', '', 'where-can-i-purchase-wiser-air', '', '', '2016-02-16 16:41:28', '2016-02-16 16:41:28', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2421', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2441, 1, '2016-02-16 16:42:14', '2016-02-16 16:42:14', '<p class="p1">The Wiser Air platform does not require any fees.</p>', 'Is there a service or subscription fee to Wiser?', '', 'publish', 'open', 'open', '', 'is-there-a-service-or-subscription-fee-to-wiser', '', '', '2016-02-16 16:44:05', '2016-02-16 16:44:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2441', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2461, 1, '2016-02-16 16:45:55', '2016-02-16 16:45:55', '<p class="p1">Ready Mode scheduling is the easiest way to adjust your home’s comfort level. With just a tap you can set Wiser Air to the Home, Away, and Sleep preset modes.</p>\r\n<p class="p1">You set up your Ready Mode temperatures when you created your account. To change your Ready Modes:</p>', 'Explore Features', '', 'publish', 'open', 'open', '', 'explore-features', '', '', '2016-02-16 16:45:55', '2016-02-16 16:45:55', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2461', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2481, 1, '2016-02-16 16:46:33', '2016-02-16 16:46:33', '<p class="p1">Get a boost of comfort for a set period of time. This feature automatically sets back to the schedueled<span class="Apple-converted-space">  </span>temperature so you can relax and know you won’t waste money. Activate Comfort Boost by pressing and holding the setpoint arrow on any part of the Wiser Air platform.</p>', 'What is Comfort Boost?', '', 'publish', 'open', 'open', '', 'what-is-comfort-boost', '', '', '2016-02-16 16:46:33', '2016-02-16 16:46:33', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2481', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2501, 1, '2016-02-16 16:47:11', '2016-02-16 16:47:11', '<div class="tb f239">\r\n<div class="preview-content-container">\r\n<div class="preview-content-wrapper">\r\n<div class="preview-content">\r\n<div class="preview-representation">\r\n<div id="mod-preview-svg-1" class="preview-document disable_selectable show-preview-controls" data-module="preview-svg">\r\n<div class="preview-svg crocodoc-viewer crocodoc-viewer-1 crocodoc-supports-svg crocodoc-layout-vertical-single-column" data-svg-version="2.0">\r\n<div class="crocodoc-viewport" tabindex="-1">\r\n<div class="crocodoc-doc">\r\n<div class="crocodoc-page crocodoc-page-visible crocodoc-current-page" data-width="1024" data-height="1325.1764705882354">\r\n<div class="crocodoc-page-inner">\r\n<div class="crocodoc-page-content">\r\n<div class="crocodoc-page-autoscale">\r\n<div class="crocodoc-subpx-fix">\r\n<div class="crocodoc-YGqwdn crocodoc-page-text">\r\n<div class="tb f5"></div>\r\n<div class="tb f5"><span class="tx f7">Hello EcoIQ.</span>\r\n<span class="tx">A thermostat that regulates temperature is smart. But one that also learns your habits</span><span class="tx f239">while saving energy and money, well that one’s simply Wiser. </span></div>\r\n<div class="tb f5"></div>\r\n<div class="tb f5"><strong><span class="tx f243">What’s so different about EcoIQ?</span></strong>\r\n<span class="tx">Lots of smart thermostats boast a feature called Occupancy Detection. This is where</span>\r\n<span class="tx f239">motion sensors try to gain insight about people’s habits. The thing is, it doesn’t work.</span><span class="tx f239">Walking by a thermostat only tells it you’re around. Not how you live. EcoIQ, on th</span><span class="tx">e other</span><span class="tx">hand, learns about you through direct feedback. That way, it can learn just as much</span><span class="tx f239">about you when you’re not at home as when you are. </span></div>\r\n<div class="tb f5"></div>\r\n<div class="tb f5"><strong><span class="tx f7">Freedom from The Number.</span></strong>\r\n<span class="tx f239">The biggest number on a thermostat’s display is also the biggest misconception about</span>\r\n<span class="tx">comfort. You see, The Number only tells you the temperature you think you like, not the</span><span class="tx">one that makes you most comfortable. So, we brought HVAC experts together with industry</span><span class="tx">thought leaders to create an algorithm that learns the former so it can deliver the latter.</span></div>\r\n<div class="tb f5"></div>\r\n<div class="tb f5"><strong><span class="tx f7">How in the heck?</span></strong>\r\n<span class="tx">When you first fire up your Wiser Air thermostat, you start by programming your ideal</span><span class="tx">temperatures for three modes: Home, Away and Sleep. Working off these set points, the</span><span class="tx">EcoIQ algorithm will challenge your preconceived notions and, in effect, course-correct</span><span class="tx">your plan to give you the most comfortable </span><span class="tx f239">–</span><span class="tx"> and cost-efficient </span><span class="tx f239">–</span><span class="tx"> system possible. All</span><span class="tx">without ever having to lift your perfectly air-conditioned finger.</span><span class="tx">But initial set points are only the first way EcoIQ creates a system that makes you more</span><span class="tx">comfortable while consuming less energy. Here are some other factors:</span><span class="tx f239">• </span><span class="tx f19">Your Thermal Profile.</span><span class="tx"> </span><span class="tx">EcoIQ paints a data portrait based on conditions not only</span><span class="tx">inside your home but outside as well, like the amount of sun that hits your house</span></div>\r\n<div class="tb f5"><span class="tx">or how much cloud cover you get.</span></div>\r\n<div class="tb f5"></div>\r\n<div class="tb f5"><span class="tx f239">• </span><span class="tx f19">Your energy usage.</span><span class="tx"> The more EcoIQ monitors your usage, the more places it</span><span class="tx">finds to save energy.</span></div>\r\n<div class="tb f5"></div>\r\n<div class="tb f5"><span class="tx f239">• </span><span class="tx f19">Your lifestyle patterns.</span><span class="tx"> From initial inputs to subsequent adjustments, EcoIQ</span><span class="tx">bases its performance on yours.</span></div>\r\n<div class="tb f5"></div>\r\n<div class="tb f19"><span class="tx f239">• </span><span class="tx">Sch</span><span class="tx f247">neider Electric’s Best</span><span class="tx">-In-Class Weather Service.</span><span class="tx f5"> Incredibly accurate</span><span class="tx f5">forecasts mean incredibly comfortable temperature adjustments.</span></div>\r\n<div class="tb f5">\r\n<strong><span class="tx f7">Mensa-level savings.</span></strong>\r\n<span class="tx">According to the Energy Information Administration, Americans pay around 15% more</span><span class="tx">than they have to o</span><span class="tx f239">n their energy bills. That’s crazytown. Here are just a few of the ways</span>\r\n<span class="tx">super smart EcoIQ helps save you money.</span><span class="tx f247">• Absent</span><span class="tx f19">-</span><span class="tx f247">minded doesn’t have to mean absent savings.</span><span class="tx"> In Away mode, your</span><span class="tx">system automatically uses the least energy to save the most money. </span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'What is Eco IQ?', '', 'publish', 'open', 'open', '', 'what-is-eco-iq', '', '', '2016-03-14 17:05:58', '2016-03-14 17:05:58', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2501', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2521, 1, '2016-02-16 16:48:22', '2016-02-16 16:48:22', '<p class="p1">Please visit our getting started page.</p>', 'How do I wire Wiser Air to my HVAC system?', '', 'publish', 'open', 'open', '', 'how-do-i-wire-wiser-air-to-my-hvac-system', '', '', '2016-02-16 16:48:22', '2016-02-16 16:48:22', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2521', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2541, 1, '2016-02-16 16:50:43', '2016-02-16 16:50:43', '<p class="p1">First, confirm that your HVAC breaker is turned on.</p>\r\n<p class="p1">Also, Wiser Air requires a 24 VAC power supply. If 120V/240V is applied for any amount of time, it is possible that the unit was damaged.</p>\r\n<p class="p1">Wiser Air requires a common wire (the C terminal). If your previous thermostat did not have a common wire and a spare wire is not present, you can install the Wiser wire extender. Please see the Wiser Air installation guide.</p>', 'I wired my unit, but the screen is blank. What\'s wrong?', '', 'publish', 'open', 'open', '', 'i-wired-my-unit-but-the-screen-is-blank-whats-wrong', '', '', '2016-02-16 16:50:43', '2016-02-16 16:50:43', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2541', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2561, 1, '2016-02-16 16:51:30', '2016-02-16 16:51:30', '<p class="p1">Schneider Electric places a strong emphasis on the security of the Wiser Air Thermostat.<span class="Apple-converted-space">  </span>As such,<span class="Apple-converted-space">  </span>a password-protected network, WPA2 minimum.</p>', 'Why does Wiser Air require a secure Wi-Fi connection?', '', 'publish', 'open', 'open', '', 'why-does-wiser-air-require-a-secure-wi-fi-connection', '', '', '2016-02-16 16:51:30', '2016-02-16 16:51:30', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2561', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2581, 1, '2016-02-16 16:52:36', '2016-02-16 16:52:36', '<p class="p1">Please the the up-close section here.</p>', 'What is the backlight for? (Wiser Pulse) And how do I change the intensity of the light?', '', 'publish', 'open', 'open', '', 'what-is-the-backlight-for-wiser-pulse-and-how-do-i-change-the-intensity-of-the-light', '', '', '2016-02-16 16:53:41', '2016-02-16 16:53:41', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2581', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2601, 1, '2016-02-16 16:54:23', '2016-02-16 16:54:23', '<p class="p1">S1 and S2 are for the outdoor temperature sensors of Dual Fuel systems. Their function is to determine when the heating system switches between fuel types. An example would be a heat pump switching to gas heat, when the temperature drops below the minimum effective heat pump temperature.</p>', 'What are the S1 and S2 terminals for?', '', 'publish', 'open', 'open', '', 'what-are-the-s1-and-s2-terminals-for', '', '', '2016-02-16 16:54:23', '2016-02-16 16:54:23', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2601', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2621, 1, '2016-02-16 16:56:33', '2016-02-16 16:56:33', '<p class="p1">If the variable speed fan has dedicated wires incompatibles with Wiser Air, then no. If the variable speed fan is only controlled by the G wire and the rest is managed by the internal fan controller itself, then yes, Wiser Air supports this system.</p>', 'Can Wiser Air control variable speed fans?', '', 'publish', 'open', 'open', '', 'can-wiser-air-control-variable-speed-fans', '', '', '2016-02-16 16:56:33', '2016-02-16 16:56:33', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2621', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2641, 1, '2016-02-16 16:57:26', '2016-02-16 16:57:26', '<p class="p1">On the WiFi Connections screen, scroll down and select the option "Other Network". You can enter the name and the password of the hidden WiFi network here.</p>', 'How can I connect the Wiser Air to a hidden SSID WiFi network?', '', 'publish', 'open', 'open', '', 'how-can-i-connect-the-wiser-air-to-a-hidden-ssid-wifi-network', '', '', '2016-02-16 16:58:30', '2016-02-16 16:58:30', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2641', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2661, 1, '2016-02-16 16:59:04', '2016-02-16 16:59:04', '<p class="p1">On your thermostat screen, please go to Menu &gt; Settings &gt; Localization, among the options on that page you can choose between the temperature scales: Fahrenheit (°F) and Celsius (°C).</p>', 'How can I change the temperature from Fahrenheit to Celsius?', '', 'publish', 'open', 'open', '', 'how-can-i-change-the-temperature-from-fahrenheit-to-celsius', '', '', '2016-02-16 16:59:04', '2016-02-16 16:59:04', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2661', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2681, 1, '2016-02-16 16:59:27', '2016-02-16 16:59:27', '<p class="p1">Wiser Air does not use a small piece of wire as a jumper. The jumper is pre-installed on the bottom right corner of the back-plate. Please see the Wiser Air installation guide for further instructions.</p>', 'I have a small piece of wire (jumper) from RH to RC on my old thermostat. Where should I connect it on Wiser Air?', '', 'publish', 'open', 'open', '', 'i-have-a-small-piece-of-wire-jumper-from-rh-to-rc-on-my-old-thermostat-where-should-i-connect-it-on-wiser-air', '', '', '2016-02-16 16:59:27', '2016-02-16 16:59:27', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2681', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2701, 1, '2016-02-16 17:00:16', '2016-02-16 17:00:16', '<p class="p1">You login to the app with the same credentials that were used when creating your account.</p>', 'My HVAC installer didn\'t sync the thermostat with the mobile app, how can I do that now?', '', 'publish', 'open', 'open', '', 'my-hvac-installer-didnt-sync-the-thermostat-with-the-mobile-app-how-can-i-do-that-now', '', '', '2016-02-16 17:00:16', '2016-02-16 17:00:16', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2701', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2721, 1, '2016-02-16 17:00:49', '2016-02-16 17:00:49', '<p class="p1">Wiser Air requires a 24V AC power source, which is commonly known as the "Common (C) Wire". Therefore, 3 wires are required to finish the installation of the Wiser Air (R, W and C).</p>', 'I have a 2-wire heating system (R and W). Is it compatible with Wiser Air?', '', 'publish', 'open', 'open', '', 'i-have-a-2-wire-heating-system-r-and-w-is-it-compatible-with-wiser-air', '', '', '2016-02-16 17:00:49', '2016-02-16 17:00:49', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2721', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2741, 1, '2016-02-16 17:01:37', '2016-02-16 17:01:37', '<p class="p1">If there is no progress on the loading screen for several minutes, please try to turn the HVAC system off and on from your breaker panel, if the issue continues, please contact our technical support.</p>', 'I\'ve just installed the Wiser Air but the screen got stuck on the loading process. Is there any way to fix that?', '', 'publish', 'open', 'open', '', 'ive-just-installed-the-wiser-air-but-the-screen-got-stuck-on-the-loading-process-is-there-any-way-to-fix-that', '', '', '2016-02-16 17:03:32', '2016-02-16 17:03:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2741', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2771, 1, '2016-02-16 17:05:05', '2016-02-16 17:05:05', '<p class="p1">On the top of the screen you will be able to see an option called "Boost" (blue for cooling, orange for heating). If you tap on that option it will show you the Comfort Boost screen, where you can stop, increase or decrease the time. You can also do this from the app.</p>', 'I activated a Comfort Boost (Heating or Cooling) and I would like to know how to cancel it on the thermostat.', '', 'publish', 'open', 'open', '', 'i-activated-a-comfort-boost-heating-or-cooling-and-i-would-like-to-know-how-to-cancel-it-on-the-thermostat', '', '', '2016-02-16 17:05:05', '2016-02-16 17:05:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2771', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2791, 1, '2016-02-16 17:05:30', '2016-02-16 17:05:30', '<p class="p1">Please refer to our Wiring Guide.</p>', 'I have a Dual-Fuel heat pump system, will it work with Wiser Air?', '', 'publish', 'open', 'open', '', 'i-have-a-dual-fuel-heat-pump-system-will-it-work-with-wiser-air', '', '', '2016-02-16 17:05:30', '2016-02-16 17:05:30', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2791', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2811, 1, '2016-02-16 17:06:09', '2016-02-16 17:06:09', '<p class="p1">This is not a common question, however, based on previous experience working with 2.4GHz devices, all the new 5GHz WiFi networks may not show up. Not 100% sure if this is the case for Wiser Air but Data Sheet states only 2.4GHz are compatible. We may need to be aware of this just in case.</p>', 'My WiFi Network is not displayed in the network connections list.', '', 'publish', 'open', 'open', '', 'my-wifi-network-is-not-displayed-in-the-network-connections-list', '', '', '2016-02-16 17:06:09', '2016-02-16 17:06:09', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2811', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (2891, 1, '2016-02-16 22:24:55', '2016-02-16 22:24:55', '', 'Getting Started', '', 'publish', 'closed', 'closed', '', 'acf_getting-started', '', '', '2016-02-16 22:52:07', '2016-02-16 22:52:07', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?post_type=acf&#038;p=2891', 0, 'acf', '', 0); 
INSERT INTO `wp_posts` VALUES (2901, 1, '2016-02-16 22:25:51', '2016-02-16 22:25:51', '', 'Getting Started', '', 'publish', 'closed', 'closed', '', 'getting-started', '', '', '2016-02-16 22:57:39', '2016-02-16 22:57:39', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=2901', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (2931, 1, '2016-02-16 22:30:51', '2016-02-16 22:30:51', '', '4.0.0_wiser_box', '', 'inherit', 'open', 'closed', '', '4-0-0_wiser_box', '', '', '2016-02-16 22:30:51', '2016-02-16 22:30:51', '', 2901, 'http://dev-wiserair-mlp.azurewebsites.net/wp-content/uploads/2016/02/4.0.0_wiser_box.png', 0, 'attachment', 'image/png', 0); 
INSERT INTO `wp_posts` VALUES (2971, 1, '2016-02-22 22:29:25', '2016-02-22 22:29:25', 'Copy here. Blah blah', 'New Post Question', '', 'publish', 'open', 'open', '', 'new-post-question', '', '', '2016-02-22 22:31:31', '2016-02-22 22:31:31', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=2971', 0, 'post', '', 0); 
INSERT INTO `wp_posts` VALUES (3081, 1, '2016-02-24 18:42:23', '2016-02-24 18:42:23', '', 'Rebate Finder', '', 'publish', 'closed', 'closed', '', 'rebate-finder', '', '', '2016-02-25 14:35:05', '2016-02-25 14:35:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3081', 3, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3111, 1, '2016-02-25 14:31:13', '2016-02-25 14:31:13', ' ', '', '', 'publish', 'closed', 'closed', '', '3111', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3111', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3121, 1, '2016-02-25 14:31:13', '2016-02-25 14:31:13', ' ', '', '', 'publish', 'closed', 'closed', '', '3121', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3121', 3, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3131, 1, '2016-02-25 14:31:14', '2016-02-25 14:31:14', '', 'For Utilities', '', 'publish', 'closed', 'closed', '', 'for-utilities-2', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3131', 5, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3141, 1, '2016-02-25 14:31:51', '2016-02-25 14:31:51', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-02-25 14:31:51', '2016-02-25 14:31:51', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=3141', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (3161, 1, '2016-02-25 14:32:08', '2016-02-25 14:32:08', '', 'Press', '', 'publish', 'closed', 'closed', '', 'press', '', '', '2016-02-25 14:32:08', '2016-02-25 14:32:08', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=3161', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (3181, 1, '2016-02-25 14:32:23', '2016-02-25 14:32:23', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-02-25 14:32:23', '2016-02-25 14:32:23', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=3181', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (3201, 1, '2016-02-25 14:32:46', '2016-02-25 14:32:46', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2016-02-25 14:32:46', '2016-02-25 14:32:46', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=3201', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (3221, 1, '2016-02-25 14:33:11', '2016-02-25 14:33:11', '', 'Where To Buy', '', 'publish', 'closed', 'closed', '', 'where-to-buy', '', '', '2016-02-25 14:33:11', '2016-02-25 14:33:11', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?page_id=3221', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (3241, 1, '2016-02-25 14:34:22', '2016-02-25 14:34:22', ' ', '', '', 'publish', 'closed', 'closed', '', '3241', '', '', '2016-02-25 14:34:22', '2016-02-25 14:34:22', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3241', 4, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3251, 1, '2016-02-25 14:34:22', '2016-02-25 14:34:22', ' ', '', '', 'publish', 'closed', 'closed', '', '3251', '', '', '2016-02-25 14:34:22', '2016-02-25 14:34:22', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3251', 3, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3261, 1, '2016-02-25 14:34:21', '2016-02-25 14:34:21', ' ', '', '', 'publish', 'closed', 'closed', '', '3261', '', '', '2016-02-25 14:34:21', '2016-02-25 14:34:21', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3261', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3271, 1, '2016-02-25 14:34:21', '2016-02-25 14:34:21', ' ', '', '', 'publish', 'closed', 'closed', '', '3271', '', '', '2016-02-25 14:34:21', '2016-02-25 14:34:21', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3271', 2, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3281, 1, '2016-02-25 14:35:05', '2016-02-25 14:35:05', ' ', '', '', 'publish', 'closed', 'closed', '', '3281', '', '', '2016-02-25 14:35:05', '2016-02-25 14:35:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3281', 2, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3291, 1, '2016-02-25 14:35:05', '2016-02-25 14:35:05', ' ', '', '', 'publish', 'closed', 'closed', '', '3291', '', '', '2016-02-25 14:35:05', '2016-02-25 14:35:05', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3291', 1, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3311, 1, '2016-03-03 16:57:32', '2016-03-03 16:57:32', ' ', '', '', 'publish', 'closed', 'closed', '', '3311', '', '', '2016-03-03 16:57:32', '2016-03-03 16:57:32', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3311', 2, 'nav_menu_item', '', 0); 
INSERT INTO `wp_posts` VALUES (3501, 1, '2016-03-31 21:58:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-03-31 21:58:02', '0000-00-00 00:00:00', '', 0, 'http://dev-wiserair-mlp.azurewebsites.net/?p=3501', 0, 'post', '', 0);
#
# End of data contents of table `wp_posts`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_term_relationships`
# --------------------------------------------------------


#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_term_relationships`
#
 
INSERT INTO `wp_term_relationships` VALUES (1, 1, 0); 
INSERT INTO `wp_term_relationships` VALUES (683, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (701, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (711, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (721, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (731, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (1141, 21, 0); 
INSERT INTO `wp_term_relationships` VALUES (1151, 21, 0); 
INSERT INTO `wp_term_relationships` VALUES (1161, 21, 0); 
INSERT INTO `wp_term_relationships` VALUES (1171, 31, 0); 
INSERT INTO `wp_term_relationships` VALUES (1181, 31, 0); 
INSERT INTO `wp_term_relationships` VALUES (1191, 41, 0); 
INSERT INTO `wp_term_relationships` VALUES (1201, 41, 0); 
INSERT INTO `wp_term_relationships` VALUES (1211, 51, 0); 
INSERT INTO `wp_term_relationships` VALUES (1221, 51, 0); 
INSERT INTO `wp_term_relationships` VALUES (1223, 51, 0); 
INSERT INTO `wp_term_relationships` VALUES (1231, 61, 0); 
INSERT INTO `wp_term_relationships` VALUES (1231, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1241, 61, 0); 
INSERT INTO `wp_term_relationships` VALUES (1251, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1261, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1271, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1281, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1291, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1301, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1311, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1321, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1323, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1331, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1341, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1351, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1361, 71, 0); 
INSERT INTO `wp_term_relationships` VALUES (1381, 1, 0); 
INSERT INTO `wp_term_relationships` VALUES (1651, 91, 0); 
INSERT INTO `wp_term_relationships` VALUES (1671, 91, 0); 
INSERT INTO `wp_term_relationships` VALUES (1691, 91, 0); 
INSERT INTO `wp_term_relationships` VALUES (1711, 91, 0); 
INSERT INTO `wp_term_relationships` VALUES (2361, 171, 0); 
INSERT INTO `wp_term_relationships` VALUES (2381, 181, 0); 
INSERT INTO `wp_term_relationships` VALUES (2401, 171, 0); 
INSERT INTO `wp_term_relationships` VALUES (2421, 171, 0); 
INSERT INTO `wp_term_relationships` VALUES (2441, 171, 0); 
INSERT INTO `wp_term_relationships` VALUES (2461, 221, 0); 
INSERT INTO `wp_term_relationships` VALUES (2481, 221, 0); 
INSERT INTO `wp_term_relationships` VALUES (2501, 221, 0); 
INSERT INTO `wp_term_relationships` VALUES (2521, 191, 0); 
INSERT INTO `wp_term_relationships` VALUES (2541, 191, 0); 
INSERT INTO `wp_term_relationships` VALUES (2541, 211, 0); 
INSERT INTO `wp_term_relationships` VALUES (2561, 201, 0); 
INSERT INTO `wp_term_relationships` VALUES (2581, 221, 0); 
INSERT INTO `wp_term_relationships` VALUES (2581, 231, 0); 
INSERT INTO `wp_term_relationships` VALUES (2601, 191, 0); 
INSERT INTO `wp_term_relationships` VALUES (2601, 241, 0); 
INSERT INTO `wp_term_relationships` VALUES (2621, 181, 0); 
INSERT INTO `wp_term_relationships` VALUES (2621, 241, 0); 
INSERT INTO `wp_term_relationships` VALUES (2641, 201, 0); 
INSERT INTO `wp_term_relationships` VALUES (2641, 231, 0); 
INSERT INTO `wp_term_relationships` VALUES (2661, 231, 0); 
INSERT INTO `wp_term_relationships` VALUES (2681, 191, 0); 
INSERT INTO `wp_term_relationships` VALUES (2701, 231, 0); 
INSERT INTO `wp_term_relationships` VALUES (2721, 181, 0); 
INSERT INTO `wp_term_relationships` VALUES (2741, 191, 0); 
INSERT INTO `wp_term_relationships` VALUES (2741, 211, 0); 
INSERT INTO `wp_term_relationships` VALUES (2771, 221, 0); 
INSERT INTO `wp_term_relationships` VALUES (2771, 231, 0); 
INSERT INTO `wp_term_relationships` VALUES (2791, 181, 0); 
INSERT INTO `wp_term_relationships` VALUES (2811, 201, 0); 
INSERT INTO `wp_term_relationships` VALUES (2971, 231, 0); 
INSERT INTO `wp_term_relationships` VALUES (3081, 251, 0); 
INSERT INTO `wp_term_relationships` VALUES (3111, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (3121, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (3131, 11, 0); 
INSERT INTO `wp_term_relationships` VALUES (3241, 101, 0); 
INSERT INTO `wp_term_relationships` VALUES (3251, 101, 0); 
INSERT INTO `wp_term_relationships` VALUES (3261, 101, 0); 
INSERT INTO `wp_term_relationships` VALUES (3271, 101, 0); 
INSERT INTO `wp_term_relationships` VALUES (3281, 251, 0); 
INSERT INTO `wp_term_relationships` VALUES (3291, 251, 0); 
INSERT INTO `wp_term_relationships` VALUES (3311, 11, 0);
#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_term_taxonomy`
# --------------------------------------------------------


#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_term_taxonomy`
#
 
INSERT INTO `wp_term_taxonomy` VALUES (1, 1, 'category', '', 0, 1); 
INSERT INTO `wp_term_taxonomy` VALUES (11, 11, 'nav_menu', '', 0, 9); 
INSERT INTO `wp_term_taxonomy` VALUES (21, 21, 'faq_cat', '', 0, 3); 
INSERT INTO `wp_term_taxonomy` VALUES (31, 31, 'faq_cat', '', 0, 2); 
INSERT INTO `wp_term_taxonomy` VALUES (41, 41, 'faq_cat', '', 0, 2); 
INSERT INTO `wp_term_taxonomy` VALUES (51, 51, 'faq_cat', '', 0, 3); 
INSERT INTO `wp_term_taxonomy` VALUES (61, 61, 'faq_cat', '', 0, 2); 
INSERT INTO `wp_term_taxonomy` VALUES (71, 71, 'faq_cat', '', 0, 14); 
INSERT INTO `wp_term_taxonomy` VALUES (91, 91, 'carousel_category', '', 0, 4); 
INSERT INTO `wp_term_taxonomy` VALUES (101, 101, 'nav_menu', '', 0, 4); 
INSERT INTO `wp_term_taxonomy` VALUES (171, 171, 'category', '', 0, 4); 
INSERT INTO `wp_term_taxonomy` VALUES (181, 181, 'category', '', 0, 4); 
INSERT INTO `wp_term_taxonomy` VALUES (191, 191, 'category', '', 0, 5); 
INSERT INTO `wp_term_taxonomy` VALUES (201, 201, 'category', '', 0, 3); 
INSERT INTO `wp_term_taxonomy` VALUES (211, 211, 'category', '', 0, 2); 
INSERT INTO `wp_term_taxonomy` VALUES (221, 221, 'category', '', 0, 5); 
INSERT INTO `wp_term_taxonomy` VALUES (231, 231, 'category', '', 0, 6); 
INSERT INTO `wp_term_taxonomy` VALUES (241, 241, 'category', '', 0, 2); 
INSERT INTO `wp_term_taxonomy` VALUES (251, 251, 'nav_menu', '', 0, 3);
#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_terms`
# --------------------------------------------------------


#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_terms`
#
 
INSERT INTO `wp_terms` VALUES (1, 'Uncategorized', 'uncategorized', 0); 
INSERT INTO `wp_terms` VALUES (11, 'Main', 'main', 0); 
INSERT INTO `wp_terms` VALUES (21, 'overview', 'overview', 0); 
INSERT INTO `wp_terms` VALUES (31, 'gettingwiser', 'gettingwiser', 0); 
INSERT INTO `wp_terms` VALUES (41, 'cost', 'cost', 0); 
INSERT INTO `wp_terms` VALUES (51, 'howitworks', 'howitworks', 0); 
INSERT INTO `wp_terms` VALUES (61, 'installation', 'installation', 0); 
INSERT INTO `wp_terms` VALUES (71, 'security', 'security', 0); 
INSERT INTO `wp_terms` VALUES (91, 'utilities', 'utilities', 0); 
INSERT INTO `wp_terms` VALUES (101, 'Footer Menu 1', 'footer-menu-1', 0); 
INSERT INTO `wp_terms` VALUES (171, 'The Basics', 'the-basics', 0); 
INSERT INTO `wp_terms` VALUES (181, 'Compatibility', 'compatibility', 0); 
INSERT INTO `wp_terms` VALUES (191, 'Installation', 'installation', 0); 
INSERT INTO `wp_terms` VALUES (201, 'Wi-Fi Connection', 'wi-fi-connection', 0); 
INSERT INTO `wp_terms` VALUES (211, 'Troubleshooting', 'troubleshooting', 0); 
INSERT INTO `wp_terms` VALUES (221, 'Explore Features', 'explore-features', 0); 
INSERT INTO `wp_terms` VALUES (231, 'How To', 'how-to', 0); 
INSERT INTO `wp_terms` VALUES (241, 'Learn More', 'learn-more', 0); 
INSERT INTO `wp_terms` VALUES (251, 'Footer Menu 2', 'footer-menu-2', 0);
#
# End of data contents of table `wp_terms`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_usermeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_usermeta`
#
 
INSERT INTO `wp_usermeta` VALUES (1, 1, 'nickname', 'lbglover'); 
INSERT INTO `wp_usermeta` VALUES (11, 1, 'first_name', ''); 
INSERT INTO `wp_usermeta` VALUES (21, 1, 'last_name', ''); 
INSERT INTO `wp_usermeta` VALUES (31, 1, 'description', ''); 
INSERT INTO `wp_usermeta` VALUES (41, 1, 'rich_editing', 'true'); 
INSERT INTO `wp_usermeta` VALUES (51, 1, 'comment_shortcuts', 'false'); 
INSERT INTO `wp_usermeta` VALUES (61, 1, 'admin_color', 'fresh'); 
INSERT INTO `wp_usermeta` VALUES (71, 1, 'use_ssl', '0'); 
INSERT INTO `wp_usermeta` VALUES (81, 1, 'show_admin_bar_front', 'true'); 
INSERT INTO `wp_usermeta` VALUES (91, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'); 
INSERT INTO `wp_usermeta` VALUES (101, 1, 'wp_user_level', '10'); 
INSERT INTO `wp_usermeta` VALUES (111, 1, 'dismissed_wp_pointers', ''); 
INSERT INTO `wp_usermeta` VALUES (121, 1, 'show_welcome_panel', '0'); 
INSERT INTO `wp_usermeta` VALUES (131, 1, 'session_tokens', 'a:1:{s:64:"dc3315f242d587fad7bdf829323e2d386aede92737ff091371f45b1007b2f0f4";a:4:{s:10:"expiration";i:1459634273;s:2:"ip";s:12:"45.37.66.178";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36";s:5:"login";i:1459461473;}}'); 
INSERT INTO `wp_usermeta` VALUES (141, 1, 'wp_dashboard_quick_press_last_post_id', '3501'); 
INSERT INTO `wp_usermeta` VALUES (151, 1, 'wporg_favorites', ''); 
INSERT INTO `wp_usermeta` VALUES (161, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&imgsize=full&post_dfw=off&hidetb=1&wplink=1'); 
INSERT INTO `wp_usermeta` VALUES (171, 1, 'wp_user-settings-time', '1458061325'); 
INSERT INTO `wp_usermeta` VALUES (181, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'); 
INSERT INTO `wp_usermeta` VALUES (191, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'); 
INSERT INTO `wp_usermeta` VALUES (201, 1, 'nav_menu_recently_edited', '11'); 
INSERT INTO `wp_usermeta` VALUES (211, 1, 'jeweltheme_ignore_notice', 'true'); 
INSERT INTO `wp_usermeta` VALUES (221, 11, 'nickname', 'kamilah'); 
INSERT INTO `wp_usermeta` VALUES (231, 11, 'first_name', 'Kamilah'); 
INSERT INTO `wp_usermeta` VALUES (241, 11, 'last_name', 'Sanders'); 
INSERT INTO `wp_usermeta` VALUES (251, 11, 'description', ''); 
INSERT INTO `wp_usermeta` VALUES (261, 11, 'rich_editing', 'true'); 
INSERT INTO `wp_usermeta` VALUES (271, 11, 'comment_shortcuts', 'false'); 
INSERT INTO `wp_usermeta` VALUES (281, 11, 'admin_color', 'fresh'); 
INSERT INTO `wp_usermeta` VALUES (291, 11, 'use_ssl', '0'); 
INSERT INTO `wp_usermeta` VALUES (301, 11, 'show_admin_bar_front', 'true'); 
INSERT INTO `wp_usermeta` VALUES (311, 11, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'); 
INSERT INTO `wp_usermeta` VALUES (321, 11, 'wp_user_level', '7'); 
INSERT INTO `wp_usermeta` VALUES (331, 11, 'dismissed_wp_pointers', ''); 
INSERT INTO `wp_usermeta` VALUES (341, 11, 'session_tokens', 'a:1:{s:64:"b433add1e471a34af4fe88b7f239bfc00345d65c3725a52624c9761307caf98b";a:4:{s:10:"expiration";i:1458147814;s:2:"ip";s:14:"198.202.137.23";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36";s:5:"login";i:1457975014;}}'); 
INSERT INTO `wp_usermeta` VALUES (351, 11, 'wp_dashboard_quick_press_last_post_id', '3371'); 
INSERT INTO `wp_usermeta` VALUES (361, 1, 'closedpostboxes_dashboard', 'a:0:{}'); 
INSERT INTO `wp_usermeta` VALUES (371, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:26:"sendgrid_statistics_widget";i:1;s:17:"dashboard_primary";}');
#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_users`
# --------------------------------------------------------


#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_users`
#
 
INSERT INTO `wp_users` VALUES (1, 'lbglover', '$P$BPMj1uw2.2WkvcWw2XlUppYOCFq/8d.', 'lbglover', 'brittg88@me.com', '', '2016-02-03 01:09:41', '', 0, 'lbglover'); 
INSERT INTO `wp_users` VALUES (11, 'kamilah', '$P$BYMW7FCtcpDZByU.xl59Jpb.UI5rGE1', 'kamilah', 'Kamilah.Sanders@schneider-electric.com', '', '2016-03-06 19:49:58', '1457293798:$P$BrpCW61uQq.ILUh32jgR9AgOonS9FG.', 0, 'Kamilah Sanders');
#
# End of data contents of table `wp_users`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_nf_objectmeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_nf_objectmeta`
#

DROP TABLE IF EXISTS `wp_nf_objectmeta`;


#
# Table structure of table `wp_nf_objectmeta`
#

CREATE TABLE `wp_nf_objectmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=802 DEFAULT CHARSET=utf8 ;

#
# Data contents of table `wp_nf_objectmeta`
#
 
INSERT INTO `wp_nf_objectmeta` VALUES (1, 1, 'date_updated', '2016-02-03'); 
INSERT INTO `wp_nf_objectmeta` VALUES (11, 1, 'form_title', 'Contact Form'); 
INSERT INTO `wp_nf_objectmeta` VALUES (21, 1, 'show_title', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (31, 1, 'save_subs', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (41, 1, 'logged_in', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (51, 1, 'append_page', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (61, 1, 'ajax', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (71, 1, 'clear_complete', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (81, 1, 'hide_complete', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (91, 1, 'success_msg', 'Your form has been successfully submitted.'); 
INSERT INTO `wp_nf_objectmeta` VALUES (101, 1, 'email_from', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (111, 1, 'email_type', 'html'); 
INSERT INTO `wp_nf_objectmeta` VALUES (121, 1, 'user_email_msg', 'Thank you so much for contacting us. We will get back to you shortly.'); 
INSERT INTO `wp_nf_objectmeta` VALUES (131, 1, 'user_email_fields', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (141, 1, 'admin_email_msg', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (151, 1, 'admin_email_fields', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (161, 1, 'admin_attach_csv', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (171, 1, 'email_from_name', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (181, 11, 'date_updated', '2014-09-09'); 
INSERT INTO `wp_nf_objectmeta` VALUES (191, 11, 'active', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (201, 11, 'name', 'Email User'); 
INSERT INTO `wp_nf_objectmeta` VALUES (211, 11, 'type', 'email'); 
INSERT INTO `wp_nf_objectmeta` VALUES (221, 11, 'email_format', 'html'); 
INSERT INTO `wp_nf_objectmeta` VALUES (231, 11, 'attach_csv', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (241, 11, 'from_name', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (251, 11, 'from_address', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (261, 11, 'reply_to', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (271, 11, 'to', 'field_11'); 
INSERT INTO `wp_nf_objectmeta` VALUES (281, 11, 'cc', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (291, 11, 'bcc', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (301, 11, 'email_subject', 'Thank you for contacting us!'); 
INSERT INTO `wp_nf_objectmeta` VALUES (311, 11, 'email_message', 'Thank you so much for contacting us. We will get back to you shortly.'); 
INSERT INTO `wp_nf_objectmeta` VALUES (321, 11, 'redirect_url', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (331, 11, 'success_message_loc', 'ninja_forms_display_before_fields'); 
INSERT INTO `wp_nf_objectmeta` VALUES (341, 11, 'success_msg', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (351, 21, 'date_updated', '2014-09-09'); 
INSERT INTO `wp_nf_objectmeta` VALUES (361, 21, 'active', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (371, 21, 'name', 'Success Message'); 
INSERT INTO `wp_nf_objectmeta` VALUES (381, 21, 'type', 'success_message'); 
INSERT INTO `wp_nf_objectmeta` VALUES (391, 21, 'email_format', 'html'); 
INSERT INTO `wp_nf_objectmeta` VALUES (401, 21, 'attach_csv', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (411, 21, 'from_name', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (421, 21, 'from_address', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (431, 21, 'reply_to', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (441, 21, 'to', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (451, 21, 'cc', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (461, 21, 'bcc', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (471, 21, 'email_subject', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (481, 21, 'email_message', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (491, 21, 'redirect_url', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (501, 21, 'success_message_loc', 'ninja_forms_display_after_fields'); 
INSERT INTO `wp_nf_objectmeta` VALUES (511, 21, 'success_msg', 'Your form has been successfully submitted.'); 
INSERT INTO `wp_nf_objectmeta` VALUES (521, 21, 'text_message_number', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (531, 21, 'text_message_carrier', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (541, 21, 'text_message_message', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (551, 31, 'date_updated', '2014-09-09'); 
INSERT INTO `wp_nf_objectmeta` VALUES (561, 31, 'active', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (571, 31, 'name', 'Email Admin'); 
INSERT INTO `wp_nf_objectmeta` VALUES (581, 31, 'type', 'email'); 
INSERT INTO `wp_nf_objectmeta` VALUES (591, 31, 'email_format', 'html'); 
INSERT INTO `wp_nf_objectmeta` VALUES (601, 31, 'attach_csv', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (611, 31, 'from_name', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (621, 31, 'from_address', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (631, 31, 'reply_to', 'field_11'); 
INSERT INTO `wp_nf_objectmeta` VALUES (641, 31, 'to', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (651, 31, 'cc', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (661, 31, 'bcc', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (671, 31, 'email_subject', 'Ninja Form Submission'); 
INSERT INTO `wp_nf_objectmeta` VALUES (681, 31, 'email_message', '[ninja_forms_all_fields]'); 
INSERT INTO `wp_nf_objectmeta` VALUES (691, 31, 'redirect_url', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (701, 31, 'success_message_loc', 'ninja_forms_display_before_fields'); 
INSERT INTO `wp_nf_objectmeta` VALUES (711, 31, 'success_msg', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (721, 31, 'text_message_number', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (731, 31, 'text_message_carrier', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (741, 31, 'text_message_message', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (751, 41, 'date_updated', '2016-02-03 20:27:22'); 
INSERT INTO `wp_nf_objectmeta` VALUES (761, 41, 'clear_complete', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (771, 41, 'hide_complete', '1'); 
INSERT INTO `wp_nf_objectmeta` VALUES (781, 41, 'show_title', '0'); 
INSERT INTO `wp_nf_objectmeta` VALUES (791, 41, 'status', ''); 
INSERT INTO `wp_nf_objectmeta` VALUES (801, 41, 'form_title', 'Support Contact');
#
# End of data contents of table `wp_nf_objectmeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_nf_objects`
# --------------------------------------------------------


#
# Delete any existing table `wp_nf_objects`
#

DROP TABLE IF EXISTS `wp_nf_objects`;


#
# Table structure of table `wp_nf_objects`
#

CREATE TABLE `wp_nf_objects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ;

#
# Data contents of table `wp_nf_objects`
#
 
INSERT INTO `wp_nf_objects` VALUES (1, 'form'); 
INSERT INTO `wp_nf_objects` VALUES (11, 'notification'); 
INSERT INTO `wp_nf_objects` VALUES (21, 'notification'); 
INSERT INTO `wp_nf_objects` VALUES (31, 'notification'); 
INSERT INTO `wp_nf_objects` VALUES (41, 'form');
#
# End of data contents of table `wp_nf_objects`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_nf_relationships`
# --------------------------------------------------------


#
# Delete any existing table `wp_nf_relationships`
#

DROP TABLE IF EXISTS `wp_nf_relationships`;


#
# Table structure of table `wp_nf_relationships`
#

CREATE TABLE `wp_nf_relationships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `child_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `child_type` varchar(255) NOT NULL,
  `parent_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ;

#
# Data contents of table `wp_nf_relationships`
#
 
INSERT INTO `wp_nf_relationships` VALUES (1, 11, 1, 'notification', 'form'); 
INSERT INTO `wp_nf_relationships` VALUES (11, 21, 1, 'notification', 'form'); 
INSERT INTO `wp_nf_relationships` VALUES (21, 31, 1, 'notification', 'form');
#
# End of data contents of table `wp_nf_relationships`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_ninja_forms_fav_fields`
# --------------------------------------------------------


#
# Delete any existing table `wp_ninja_forms_fav_fields`
#

DROP TABLE IF EXISTS `wp_ninja_forms_fav_fields`;


#
# Table structure of table `wp_ninja_forms_fav_fields`
#

CREATE TABLE `wp_ninja_forms_fav_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `row_type` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 ;

#
# Data contents of table `wp_ninja_forms_fav_fields`
#
 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (2, 0, '_list', 0, 'a:10:{s:5:"label";s:14:"State Dropdown";s:9:"label_pos";s:4:"left";s:9:"list_type";s:8:"dropdown";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:3:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:8:"selected";s:1:"0";}i:1;a:3:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:8:"selected";s:1:"0";}i:2;a:3:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:8:"selected";s:1:"0";}i:3;a:3:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:8:"selected";s:1:"0";}i:4;a:3:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:8:"selected";s:1:"0";}i:5;a:3:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:8:"selected";s:1:"0";}i:6;a:3:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:8:"selected";s:1:"0";}i:7;a:3:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:8:"selected";s:1:"0";}i:8;a:3:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:8:"selected";s:1:"0";}i:9;a:3:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:8:"selected";s:1:"0";}i:10;a:3:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:8:"selected";s:1:"0";}i:11;a:3:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:8:"selected";s:1:"0";}i:12;a:3:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:8:"selected";s:1:"0";}i:13;a:3:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:8:"selected";s:1:"0";}i:14;a:3:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:8:"selected";s:1:"0";}i:15;a:3:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:8:"selected";s:1:"0";}i:16;a:3:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:8:"selected";s:1:"0";}i:17;a:3:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:8:"selected";s:1:"0";}i:18;a:3:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:8:"selected";s:1:"0";}i:19;a:3:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:8:"selected";s:1:"0";}i:20;a:3:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:8:"selected";s:1:"0";}i:21;a:3:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:8:"selected";s:1:"0";}i:22;a:3:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:8:"selected";s:1:"0";}i:23;a:3:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:8:"selected";s:1:"0";}i:24;a:3:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:8:"selected";s:1:"0";}i:25;a:3:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:8:"selected";s:1:"0";}i:26;a:3:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:8:"selected";s:1:"0";}i:27;a:3:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:8:"selected";s:1:"0";}i:28;a:3:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:8:"selected";s:1:"0";}i:29;a:3:{s:5:"label"3s:13:"New Hampshire";s:5:"value";s:2:"NH";s:8:"selected";s:1:"0";}i:30;a:3:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:8:"selected";s:1:"0";}i:31;a:3:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:8:"selected";s:1:"0";}i:32;a:3:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:8:"selected";s:1:"0";}i:33;a:3:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:8:"selected";s:1:"0";}i:34;a:3:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:8:"selected";s:1:"0";}i:35;a:3:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:8:"selected";s:1:"0";}i:36;a:3:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:8:"selected";s:1:"0";}i:37;a:3:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:8:"selected";s:1:"0";}i:38;a:3:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:8:"selected";s:1:"0";}i:39;a:3:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:8:"selected";s:1:"0";}i:40;a:3:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:8:"selected";s:1:"0";}i:41;a:3:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:8:"selected";s:1:"0";}i:42;a:3:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:8:"selected";s:1:"0";}i:43;a:3:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:8:"selected";s:1:"0";}i:44;a:3:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:8:"selected";s:1:"0";}i:45;a:3:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:8:"selected";s:1:"0";}i:46;a:3:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:8:"selected";s:1:"0";}i:47;a:3:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:8:"selected";s:1:"0";}i:48;a:3:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:8:"selected";s:1:"0";}i:49;a:3:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:8:"selected";s:1:"0";}i:50;a:3:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:8:"selected";s:1:"0";}}}s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'State Dropdown'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (3, 0, '_spam', 0, 'a:6:{s:9:"label_pos";s:4:"left";s:5:"label";s:18:"Anti-Spam Question";s:6:"answer";s:16:"Anti-Spam Answer";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Anti-Spam'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (4, 0, '_submit', 0, 'a:4:{s:5:"label";s:6:"Submit";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";}', 'Submit'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (11, 0, '_tax', 0, 'a:11:{s:5:"label";s:3:"Tax";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:19:"payment_field_group";s:1:"1";s:11:"payment_tax";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";s:11:"calc_option";s:1:"0";s:4:"calc";s:0:"";}', 'Tax'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (21, 0, '_text', 0, 'a:19:{s:5:"label";s:10:"First Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"1";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'First Name'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (31, 0, '_text', 0, 'a:19:{s:5:"label";s:9:"Last Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"1";s:9:"from_name";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Last Name'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (41, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 1";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"1";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 1'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (51, 0, '_text', 0, 'a:23:{s:5:"label";s:9:"Address 2";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"1";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Address 2'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (61, 0, '_text', 0, 'a:23:{s:5:"label";s:4:"City";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"1";s:8:"user_zip";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'City'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (71, 0, '_list', 0, 'a:16:{s:5:"label";s:5:"State";s:9:"label_pos";s:5:"above";s:10:"multi_size";s:1:"5";s:15:"list_show_value";s:1:"1";s:4:"list";a:1:{s:7:"options";a:51:{i:0;a:4:{s:5:"label";s:7:"Alabama";s:5:"value";s:2:"AL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:1;a:4:{s:5:"label";s:6:"Alaska";s:5:"value";s:2:"AK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:2;a:4:{s:5:"label";s:7:"Arizona";s:5:"value";s:2:"AZ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:3;a:4:{s:5:"label";s:8:"Arkansas";s:5:"value";s:2:"AR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:4;a:4:{s:5:"label";s:10:"California";s:5:"value";s:2:"CA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:5;a:4:{s:5:"label";s:8:"Colorado";s:5:"value";s:2:"CO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:6;a:4:{s:5:"label";s:11:"Connecticut";s:5:"value";s:2:"CT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:7;a:4:{s:5:"label";s:8:"Delaware";s:5:"value";s:2:"DE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:8;a:4:{s:5:"label";s:20:"District of Columbia";s:5:"value";s:2:"DC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:9;a:4:{s:5:"label";s:7:"Florida";s:5:"value";s:2:"FL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:10;a:4:{s:5:"label";s:7:"Georgia";s:5:"value";s:2:"GA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:11;a:4:{s:5:"label";s:6:"Hawaii";s:5:"value";s:2:"HI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:12;a:4:{s:5:"label";s:5:"Idaho";s:5:"value";s:2:"ID";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:13;a:4:{s:5:"label";s:8:"Illinois";s:5:"value";s:2:"IL";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:14;a:4:{s:5:"label";s:7:"Indiana";s:5:"value";s:2:"IN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:15;a:4:{s:5:"label";s:4:"Iowa";s:5:"value";s:2:"IA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:16;a:4:{s:5:"label";s:6:"Kansas";s:5:"value";s:2:"KS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:17;a:4:{s:5:"label";s:8:"Kentucky";s:5:"value";s:2:"KY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:18;a:4:{s:5:"label";s:9:"Louisiana";s:5:"value";s:2:"LA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:19;a:4:{s:5:"label";s:5:"Maine";s:5:"value";s:2:"ME";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:20;a:4:{s:5:"label";s:8:"Maryland";s:5:"value";s:2:"MD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:21;a:4:{s:5:"label";s:13:"Massachusetts";s:5:"value";s:2:"MA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:22;a:4:{s:5:"label";s:8:"Michigan";s:5:"value";s:2:"MI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:23;a:4:{s:5:"label";s:9:"Minnesota";s:5:"value";s:2:"MN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:24;a:4:{s:5:"label";s:11:"Mississippi";s:5:"value";s:2:"MS";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:25;a:4:{s:5:"label";s:8:"Missouri";s:5:"value";s:2:"MO";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:26;a:4:{s:5:"label";s:7:"Montana";s:5:"value";s:2:"MT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:27;a:4:{s:5:"label";s:8:"Nebraska";s:5:"value";s:2:"NE";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:28;a:4:{s:5:"label";s:6:"Nevada";s:5:"value";s:2:"NV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:29;a:4:{s:5:"label";s:13:"New Hampshire";s:5:"value";s:2:"NH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:30;a:4:{s:5:"label";s:10:"New Jersey";s:5:"value";s:2:"NJ";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:31;a:4:{s:5:"label";s:10:"New Mexico";s:5:"value";s:2:"NM";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:32;a:4:{s:5:"label";s:8:"New York";s:5:"value";s:2:"NY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:33;a:4:{s:5:"label";s:14:"North Carolina";s:5:"value";s:2:"NC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:34;a:4:{s:5:"label";s:12:"North Dakota";s:5:"value";s:2:"ND";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:35;a:4:{s:5:"label";s:4:"Ohio";s:5:"value";s:2:"OH";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:36;a:4:{s:5:"label";s:8:"Oklahoma";s:5:"value";s:2:"OK";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:37;a:4:{s:5:"label";s:6:"Oregon";s:5:"value";s:2:"OR";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:38;a:4:{s:5:"label";s:12:"Pennsylvania";s:5:"value";s:2:"PA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:39;a:4:{s:5:"label";s:12:"Rhode Island";s:5:"value";s:2:"RI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:40;a:4:{s:5:"label";s:14:"South Carolina";s:5:"value";s:2:"SC";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:41;a:4:{s:5:"label";s:12:"South Dakota";s:5:"value";s:2:"SD";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:42;a:4:{s:5:"label";s:9:"Tennessee";s:5:"value";s:2:"TN";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:43;a:4:{s:5:"label";s:5:"Texas";s:5:"value";s:2:"TX";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:44;a:4:{s:5:"label";s:4:"Utah";s:5:"value";s:2:"UT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:45;a:4:{s:5:"label";s:7:"Vermont";s:5:"value";s:2:"VT";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:46;a:4:{s:5:"label";s:8:"Virginia";s:5:"value";s:2:"VA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:47;a:4:{s:5:"label";s:10:"Washington";s:5:"value";s:2:"WA";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:48;a:4:{s:5:"label";s:13:"West Virginia";s:5:"value";s:2:"WV";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:49;a:4:{s:5:"label";s:9:"Wisconsin";s:5:"value";s:2:"WI";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}i:50;a:4:{s:5:"label";s:7:"Wyoming";s:5:"value";s:2:"WY";s:4:"calc";s:0:"";s:8:"selected";s:1:"0";}}}s:9:"list_type";s:8:"dropdown";s:10:"user_state";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:13:"populate_term";s:0:"";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'State'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (81, 0, '_text', 0, 'a:23:{s:5:"label";s:15:"Zip / Post Code";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Zip / Post Code'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (91, 0, '_country', 0, 'a:10:{s:5:"label";s:7:"Country";s:9:"label_pos";s:5:"above";s:13:"default_value";s:2:"US";s:21:"user_info_field_group";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Country'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (92, 0, '_credit_card', 0, 'a:6:{s:5:"label";s:11:"Credit Card";s:19:"payment_field_group";s:1:"1";s:3:"req";s:1:"0";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"conditional";s:0:"";}', 'Credit Card'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (101, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Email'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (111, 0, '_text', 0, 'a:25:{s:5:"label";s:5:"Phone";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:14:"(999) 999-9999";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"1";s:10:"user_email";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Phone'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (121, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:9:"sub_total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:9:"Sub Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";s:0:"";s:7:"calc_eq";s:0:"";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"0";s:17:"payment_sub_total";s:1:"1";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Sub Total'); 
INSERT INTO `wp_ninja_forms_fav_fields` VALUES (131, 0, '_calc', 0, 'a:20:{s:9:"calc_name";s:5:"total";s:13:"default_value";s:0:"";s:17:"calc_display_type";s:4:"text";s:5:"label";s:5:"Total";s:9:"label_pos";s:5:"above";s:26:"calc_display_text_disabled";s:1:"1";s:17:"calc_display_html";s:26:"<p>[ninja_forms_calc]</p>\n";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:11:"calc_method";s:4:"auto";s:4:"calc";a:5:{i:0;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}i:1;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"69";}i:2;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"15";}i:3;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"61";}i:4;a:2:{s:2:"op";s:3:"add";s:5:"field";s:2:"70";}}s:7:"calc_eq";s:5:"5 + 5";s:19:"payment_field_group";s:1:"1";s:13:"payment_total";s:1:"1";s:17:"payment_sub_total";s:1:"0";s:11:"calc_places";s:1:"2";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";}', 'Total');
#
# End of data contents of table `wp_ninja_forms_fav_fields`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_ninja_forms_fields`
# --------------------------------------------------------


#
# Delete any existing table `wp_ninja_forms_fields`
#

DROP TABLE IF EXISTS `wp_ninja_forms_fields`;


#
# Table structure of table `wp_ninja_forms_fields`
#

CREATE TABLE `wp_ninja_forms_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `fav_id` int(11) DEFAULT NULL,
  `def_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 ;

#
# Data contents of table `wp_ninja_forms_fields`
#
 
INSERT INTO `wp_ninja_forms_fields` VALUES (1, 1, '_text', 0, 'a:24:{s:5:"label";s:4:"Name";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:0:"";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0); 
INSERT INTO `wp_ninja_forms_fields` VALUES (11, 1, '_text', 1, 'a:28:{s:5:"label";s:5:"Email";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 14); 
INSERT INTO `wp_ninja_forms_fields` VALUES (21, 1, '_textarea', 2, 'a:14:{s:5:"label";s:7:"Message";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";s:17:"calc_auto_include";s:1:"0";}', 0, 0); 
INSERT INTO `wp_ninja_forms_fields` VALUES (31, 1, '_spam', 3, 'a:10:{s:5:"label";s:25:"What is thirteen minus 6?";s:9:"label_pos";s:4:"left";s:11:"spam_answer";s:1:"7";s:3:"req";s:1:"1";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0); 
INSERT INTO `wp_ninja_forms_fields` VALUES (41, 1, '_submit', 4, 'a:7:{s:5:"label";s:4:"Send";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', 0, 0); 
INSERT INTO `wp_ninja_forms_fields` VALUES (51, 41, '_text', 0, 'a:35:{s:5:"label";s:0:"";s:15:"input_limit_msg";s:17:"character(s) left";s:9:"label_pos";s:5:"above";s:11:"placeholder";s:4:"Name";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:14:"user_address_1";s:0:"";s:14:"user_address_2";s:0:"";s:9:"user_city";s:0:"";s:8:"user_zip";s:0:"";s:10:"user_phone";s:0:"";s:10:"user_email";s:0:"";s:21:"user_info_field_group";s:1:"1";s:5:"email";s:1:"0";s:13:"disable_input";s:1:"0";s:3:"req";s:1:"0";s:4:"mask";s:0:"";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:17:"calc_auto_include";s:1:"0";s:10:"datepicker";s:1:"0";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:13:"default_value";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, NULL); 
INSERT INTO `wp_ninja_forms_fields` VALUES (61, 41, '_submit', 5, 'a:8:{s:5:"label";s:6:"Submit";s:15:"input_limit_msg";s:17:"character(s) left";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, NULL); 
INSERT INTO `wp_ninja_forms_fields` VALUES (71, 41, '_text', 1, 'a:40:{s:5:"label";s:0:"";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:0:"";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"1";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"0";s:10:"user_email";s:1:"1";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:11:"placeholder";s:5:"Email";s:13:"disable_input";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:15:"input_limit_msg";s:0:"";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, 101); 
INSERT INTO `wp_ninja_forms_fields` VALUES (81, 41, '_text', 2, 'a:40:{s:5:"label";s:0:"";s:9:"label_pos";s:5:"above";s:13:"default_value";s:0:"";s:4:"mask";s:14:"(999) 999-9999";s:10:"datepicker";s:1:"0";s:5:"email";s:1:"0";s:10:"send_email";s:1:"0";s:10:"from_email";s:1:"0";s:10:"first_name";s:1:"0";s:9:"last_name";s:1:"0";s:9:"from_name";s:1:"0";s:14:"user_address_1";s:1:"0";s:14:"user_address_2";s:1:"0";s:9:"user_city";s:1:"0";s:8:"user_zip";s:1:"0";s:10:"user_phone";s:1:"1";s:10:"user_email";s:1:"0";s:21:"user_info_field_group";s:1:"1";s:3:"req";s:1:"0";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:17:"calc_auto_include";s:1:"0";s:11:"calc_option";s:1:"0";s:11:"conditional";s:0:"";s:11:"placeholder";s:5:"Phone";s:13:"disable_input";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:15:"input_limit_msg";s:0:"";s:10:"user_state";s:1:"0";s:16:"autocomplete_off";s:1:"0";s:8:"num_sort";s:1:"0";s:18:"default_value_type";s:0:"";s:11:"admin_label";s:0:"";s:26:"user_info_field_group_name";s:0:"";s:28:"user_info_field_group_custom";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, 111); 
INSERT INTO `wp_ninja_forms_fields` VALUES (91, 41, '_textarea', 3, 'a:19:{s:5:"label";s:0:"";s:15:"input_limit_msg";s:17:"character(s) left";s:9:"label_pos";s:5:"above";s:13:"default_value";s:55:"Please explain in detail what you need assistance with.";s:12:"textarea_rte";s:1:"0";s:14:"textarea_media";s:1:"0";s:18:"disable_rte_mobile";s:1:"0";s:3:"req";s:1:"0";s:11:"input_limit";s:0:"";s:16:"input_limit_type";s:4:"char";s:17:"calc_auto_include";s:1:"0";s:8:"num_sort";s:1:"0";s:11:"admin_label";s:0:"";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, NULL); 
INSERT INTO `wp_ninja_forms_fields` VALUES (101, 41, '_checkbox', 4, 'a:15:{s:5:"label";s:21:"Do you own Wiser Air?";s:15:"input_limit_msg";s:17:"character(s) left";s:9:"label_pos";s:5:"right";s:13:"default_value";s:9:"unchecked";s:3:"req";s:1:"0";s:10:"calc_value";a:2:{s:7:"checked";s:1:"0";s:9:"unchecked";s:1:"0";}s:17:"calc_auto_include";s:1:"0";s:8:"num_sort";s:1:"0";s:11:"admin_label";s:0:"";s:5:"class";s:0:"";s:9:"show_help";s:1:"0";s:9:"help_text";s:0:"";s:9:"show_desc";s:1:"0";s:8:"desc_pos";s:4:"none";s:9:"desc_text";s:0:"";}', NULL, NULL);
#
# End of data contents of table `wp_ninja_forms_fields`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_po_plugins`
# --------------------------------------------------------


#
# Delete any existing table `wp_po_plugins`
#

DROP TABLE IF EXISTS `wp_po_plugins`;


#
# Table structure of table `wp_po_plugins`
#

CREATE TABLE `wp_po_plugins` (
  `post_id` bigint(20) unsigned NOT NULL,
  `permalink` longtext NOT NULL,
  `permalink_hash` varchar(32) NOT NULL DEFAULT '',
  `permalink_hash_args` varchar(32) NOT NULL DEFAULT '',
  `post_type` varchar(20) NOT NULL DEFAULT '',
  `status` varchar(20) NOT NULL DEFAULT 'publish',
  `secure` int(1) NOT NULL DEFAULT '0',
  `children` int(1) NOT NULL DEFAULT '0',
  `pt_override` int(1) NOT NULL DEFAULT '0',
  `disabled_plugins` longtext NOT NULL,
  `enabled_plugins` longtext NOT NULL,
  `disabled_mobile_plugins` longtext NOT NULL,
  `enabled_mobile_plugins` longtext NOT NULL,
  `disabled_groups` longtext NOT NULL,
  `enabled_groups` longtext NOT NULL,
  `disabled_mobile_groups` longtext NOT NULL,
  `enabled_mobile_groups` longtext NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `PO_permalink_hash` (`permalink_hash`),
  KEY `PO_permalink_hash_args` (`permalink_hash_args`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

#
# Data contents of table `wp_po_plugins`
#

#
# End of data contents of table `wp_po_plugins`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_relevanssi`
# --------------------------------------------------------


#
# Delete any existing table `wp_relevanssi`
#

DROP TABLE IF EXISTS `wp_relevanssi`;


#
# Table structure of table `wp_relevanssi`
#

CREATE TABLE `wp_relevanssi` (
  `doc` bigint(20) NOT NULL DEFAULT '0',
  `term` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `term_reverse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` mediumint(9) NOT NULL DEFAULT '0',
  `title` mediumint(9) NOT NULL DEFAULT '0',
  `comment` mediumint(9) NOT NULL DEFAULT '0',
  `tag` mediumint(9) NOT NULL DEFAULT '0',
  `link` mediumint(9) NOT NULL DEFAULT '0',
  `author` mediumint(9) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `excerpt` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy` mediumint(9) NOT NULL DEFAULT '0',
  `customfield` mediumint(9) NOT NULL DEFAULT '0',
  `mysqlcolumn` mediumint(9) NOT NULL DEFAULT '0',
  `taxonomy_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `customfield_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mysqlcolumn_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(210) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `item` bigint(20) NOT NULL DEFAULT '0',
  UNIQUE KEY `doctermitem` (`doc`,`term`,`item`),
  KEY `terms` (`term`(20)),
  KEY `relevanssi_term_reverse_idx` (`term_reverse`(10)),
  KEY `docs` (`doc`),
  KEY `typeitem` (`type`(191),`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_relevanssi`
#
 
INSERT INTO `wp_relevanssi` VALUES (171, 'coming', 'gnimoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (171, 'soon', 'noos', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (171, 'support', 'troppus', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, '0', '0', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, '2015', '5102', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, '8211', '1128', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'activate', 'etavitca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'airlines', 'senilria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'arrow', 'worra', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'boost', 'tsoob', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'change', 'egnahc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'comfort', 'trofmoc', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'control', 'lortnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'convenience', 'ecneinevnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'easily', 'ylisae', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'electric', 'cirtcele', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'energy', 'ygrene', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'enjoy', 'yojne', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'exact', 'tcaxe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'fan', 'naf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'forecast', 'tsacerof', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'free', 'eerf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'giving', 'gnivig', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'hassle', 'elssah', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'hold', 'dloh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'home', 'emoh', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'increased', 'desaercni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'insights', 'sthgisni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'integrated', 'detargetni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'july', 'yluj', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'just', 'tsuj', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'like', 'ekil', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'major', 'rojam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'maximize', 'ezimixam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'maximum', 'mumixam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'mode', 'edom', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'modes', 'sedom', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'network', 'krowten', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'nfl', 'lfn', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'options', 'snoitpo', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'personal', 'lanosrep', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'pga', 'agp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'ranked', 'deknar', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'rated', 'detar', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'ready', 'ydaer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'release', 'esaeler', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'schedule', 'eludehcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'schedules', 'seludehcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'schneider', 'redienhcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'screen', 'neercs', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'service', 'ecivres', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'setpoint', 'tnioptes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'settings', 'sgnittes', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'simply', 'ylpmis', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'time', 'emit', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'touch', 'hcuot', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'tweak', 'kaewt', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'update', 'etadpu', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'used', 'desu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'v1', '1v', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'visible', 'elbisiv', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'weather', 'rehtaew', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1381, 'wiser', 'resiw', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1441, 'utilities', 'seitilitu', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1741, 'homepage', 'egapemoh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'action', 'noitca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'browser', 'resworb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'customizable', 'elbazimotsuc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'does', 'seod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'got', 'tog', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'html5', '5lmth', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'interfaces', 'secafretni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'schedules', 'seludehcs', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'style', 'elyts', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'support', 'troppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'supports', 'stroppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'video', 'oediv', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1951, 'wiser', 'resiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'boost', 'tsoob', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'browser', 'resworb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'comfort', 'trofmoc', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'convenience', 'ecneinevnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'does', 'seod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'enjoy', 'yojne', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'free', 'eerf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'hassle', 'elssah', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'html5', '5lmth', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'maximum', 'mumixam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'support', 'troppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'time', 'emit', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (1991, 'video', 'oediv', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'browser', 'resworb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'customizable', 'elbazimotsuc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'does', 'seod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'got', 'tog', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'html5', '5lmth', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'interfaces', 'secafretni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'style', 'elyts', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'support', 'troppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'supports', 'stroppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'video', 'oediv', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2011, 'wiser', 'resiw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'comforting', 'gnitrofmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'cooling', 'gnilooc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'doesn', 'nseod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'eco', 'oce', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'efficient', 'tneiciffe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'floor', 'roolf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'habits', 'stibah', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'helps', 'spleh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'home', 'emoh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'iq', 'qi', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'just', 'tsuj', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'learn', 'nrael', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'main', 'niam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'make', 'ekam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'run', 'nur', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 's', 's', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'smarter', 'retrams', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'thermostat', 'tatsomreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'understands', 'sdnatsrednu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2051, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'auto', 'otua', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'date', 'etad', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'drop', 'pord', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'efficiently', 'yltneiciffe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'keeping', 'gnipeek', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'let', 'tel', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'possible', 'elbissop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'running', 'gninnur', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 's', 's', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'thermostat', 'tatsomreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'updates', 'setadpu', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'wisdom', 'modsiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2081, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2101, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '10am', 'ma01', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '10pm', 'mp01', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '11am', 'ma11', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '11pm', 'mp11', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '12am', 'ma21', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '12pm', 'mp21', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '1am', 'ma1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '1pm', 'mp1', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '2am', 'ma2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '2pm', 'mp2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '3am', 'ma3', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '3pm', 'mp3', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '4am', 'ma4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '4pm', 'mp4', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '5am', 'ma5', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '5pm', 'mp5', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '6am', 'ma6', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '6pm', 'mp6', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '7am', 'ma7', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '7pm', 'mp7', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '8am', 'ma8', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '8pm', 'mp8', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '9am', 'ma9', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, '9pm', 'mp9', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'clear', 'raelc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'created', 'detaerc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'downstairs', 'sriatsnwod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'energy', 'ygrene', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'highcharts', 'strahchgih', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'indoor', 'roodni', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'information', 'noitamrofni', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'outdoor', 'roodtuo', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'really', 'yllaer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'straightforward', 'drawrofthgiarts', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'temperature', 'erutarepmet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'thermostat', 'tatsomreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'usage', 'egasu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2121, 'use', 'esu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'area', 'aera', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'costs', 'stsoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'energy', 'ygrene', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'good', 'doog', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'home', 'emoh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'incentives', 'sevitnecni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'paybacks', 'skcabyap', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'peak', 'kaep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'receive', 'eviecer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'spike', 'ekips', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2141, 'utilities', 'seitilitu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'electric', 'cirtcele', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'faa', 'aaf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'forecast', 'tsacerof', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'home', 'emoh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'network', 'krowten', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'nfl', 'lfn', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'pga', 'agp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'ranked', 'deknar', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'schneider', 'redienhcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'service', 'ecivres', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'tour', 'ruot', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'used', 'desu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'weather', 'rehtaew', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2171, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2181, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2181, 'software', 'erawtfos', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2201, 'close', 'esolc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2201, 'hardware', 'erawdrah', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'add', 'dda', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'based', 'desab', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'compatibility', 'ytilibitapmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'compatible', 'elbitapmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'date', 'etad', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'developments', 'stnempoleved', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'doesn', 'nseod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'future', 'erutuf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'like', 'ekil', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'look', 'kool', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'new', 'wen', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'sorry', 'yrros', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'told', 'dlot', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'unfortunately', 'yletanutrofnu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2291, 'wiser', 'resiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'air', 'ria', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'based', 'desab', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'buy', 'yub', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'click', 'kcilc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'compatible', 'elbitapmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'congratulations', 'snoitalutargnoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'information', 'noitamrofni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'like', 'ekil', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'links', 'sknil', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'looks', 'skool', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'told', 'dlot', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2311, 'wiser', 'resiw', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, '2016', '6102', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'air', 'ria', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'boost', 'tsoob', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'comfort', 'trofmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'coming', 'gnimoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'early', 'ylrae', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'ecoiq', 'qioce', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'electricity', 'yticirtcele', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'help', 'pleh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'lower', 'rewol', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'mode', 'edom', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'ready', 'ydaer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'reduce', 'ecuder', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'scheduling', 'gniludehcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'tools', 'sloot', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'utility', 'ytilitu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2361, 'wiser', 'resiw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'air', 'ria', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'conditioning', 'gninoitidnoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'guides', 'sediug', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'heating', 'gnitaeh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'installation', 'noitallatsni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'refer', 'refer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'wiring', 'gniriw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2381, 'work', 'krow', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'app', 'ppa', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'available', 'elbaliava', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'google', 'elgoog', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'microsoft', 'tfosorcim', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'play', 'yalp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'smartphone', 'enohptrams', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'store', 'erots', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2401, 'wiser', 'resiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'air', 'ria', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'amazon', 'nozama', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'available', 'elbaliava', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'com', 'moc', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'homedepot', 'topedemoh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'purchase', 'esahcrup', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2421, 'wiser', 'resiw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'does', 'seod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'fee', 'eef', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'fees', 'seef', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'platform', 'mroftalp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'require', 'eriuqer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'service', 'ecivres', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'subscription', 'noitpircsbus', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2441, 'wiser', 'resiw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'account', 'tnuocca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'adjust', 'tsujda', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'away', 'yawa', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'change', 'egnahc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'comfort', 'trofmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'created', 'detaerc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'easiest', 'tseisae', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'explore', 'erolpxe', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'features', 'serutaef', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'home', 'emoh', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'just', 'tsuj', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'level', 'level', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'mode', 'edom', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'modes', 'sedom', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'preset', 'teserp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'ready', 'ydaer', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'scheduling', 'gniludehcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'set', 'tes', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'sleep', 'peels', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'tap', 'pat', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'temperatures', 'serutarepmet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'way', 'yaw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2461, 'wiser', 'resiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'activate', 'etavitca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'arrow', 'worra', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'automatically', 'yllacitamotua', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'boost', 'tsoob', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'comfort', 'trofmoc', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'feature', 'erutaef', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'holding', 'gnidloh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'know', 'wonk', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'money', 'yenom', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'period', 'doirep', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'platform', 'mroftalp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'pressing', 'gnisserp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'relax', 'xaler', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'schedueled', 'deleudehcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'set', 'tes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'setpoint', 'tnioptes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'sets', 'stes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'temperature', 'erutarepmet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'time', 'emit', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'waste', 'etsaw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'wiser', 'resiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2481, 'won', 'now', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'absent', 'tnesba', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'according', 'gnidrocca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'accurate', 'etarucca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'adjustments', 'stnemtsujda', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'administration', 'noitartsinimda', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'air', 'ria', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'algorithm', 'mhtirogla', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'americans', 'snacirema', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'automatically', 'yllacitamotua', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'away', 'yawa', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'based', 'desab', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'bases', 'sesab', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'best', 'tseb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'biggest', 'tseggib', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'bills', 'sllib', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'boast', 'tsaob', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'brought', 'thguorb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'called', 'dellac', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'challenge', 'egnellahc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'class', 'ssalc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'cloud', 'duolc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'comfort', 'trofmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'comfortable', 'elbatrofmoc', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'conditioned', 'denoitidnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'conditions', 'snoitidnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'consuming', 'gnimusnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'correct', 'tcerroc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'cost', 'tsoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'course', 'esruoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'cover', 'revoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'crazytown', 'nwotyzarc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'create', 'etaerc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'creates', 'setaerc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'data', 'atad', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'deliver', 'reviled', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'detection', 'noitceted', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'different', 'tnereffid', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'direct', 'tcerid', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'display', 'yalpsid', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'doesn', 'nseod', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'eco', 'oce', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'ecoiq', 'qioce', 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'effect', 'tceffe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'efficient', 'tneiciffe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'electric', 'cirtcele', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'energy', 'ygrene', 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'experts', 'strepxe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'factors', 'srotcaf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'feature', 'erutaef', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'feedback', 'kcabdeef', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'finds', 'sdnif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'finger', 'regnif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'forecasts', 'stsacerof', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'freedom', 'modeerf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'gain', 'niag', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'habits', 'stibah', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'hand', 'dnah', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'having', 'gnivah', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'heck', 'kceh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'hello', 'olleh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'helps', 'spleh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'hits', 'stih', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'home', 'emoh', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'house', 'esuoh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'hvac', 'cavh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'ideal', 'laedi', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'incredibly', 'ylbidercni', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'industry', 'yrtsudni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'information', 'noitamrofni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'initial', 'laitini', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'inputs', 'stupni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'inside', 'edisni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'insight', 'thgisni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'iq', 'qi', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'just', 'tsuj', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'leaders', 'sredael', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'learn', 'nrael', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'learns', 'snrael', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'level', 'level', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'lifestyle', 'elytsefil', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'lift', 'tfil', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'like', 'ekil', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'live', 'evil', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'lots', 'stol', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'makes', 'sekam', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'mean', 'naem', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'mensa', 'asnem', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'minded', 'dednim', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'misconception', 'noitpecnocsim', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'mode', 'edom', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'modes', 'sedom', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'money', 'yenom', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'monitors', 'srotinom', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'motion', 'noitom', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'neider', 'redien', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'notions', 'snoiton', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'number', 'rebmun', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'occupancy', 'ycnapucco', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'outside', 'edistuo', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'paints', 'stniap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'patterns', 'snrettap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'pay', 'yap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'people', 'elpoep', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'perfectly', 'yltcefrep', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'performance', 'ecnamrofrep', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'places', 'secalp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'plan', 'nalp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'points', 'stniop', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'portrait', 'tiartrop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'possible', 'elbissop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'preconceived', 'deviecnocerp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'profile', 'eliforp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'programming', 'gnimmargorp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'regulates', 'setaluger', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'save', 'evas', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'saving', 'gnivas', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'savings', 'sgnivas', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'sch', 'hcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'sensors', 'srosnes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'service', 'ecivres', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'set', 'tes', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'simply', 'ylpmis', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'sleep', 'peels', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'smart', 'trams', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'start', 'trats', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'subsequent', 'tneuqesbus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'sun', 'nus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'super', 'repus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'tells', 'sllet', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'temperature', 'erutarepmet', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'temperatures', 'serutarepmet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'thermal', 'lamreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'thermostat', 'tatsomreht', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'thermostats', 'statsomreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'thing', 'gniht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'think', 'kniht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'thought', 'thguoht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'try', 'yrt', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'usage', 'egasu', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'uses', 'sesu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'walking', 'gniklaw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'way', 'yaw', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'ways', 'syaw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'weather', 'rehtaew', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'wiser', 'resiw', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'work', 'krow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2501, 'working', 'gnikrow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'air', 'ria', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'getting', 'gnitteg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'hvac', 'cavh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'page', 'egap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'started', 'detrats', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'visit', 'tisiv', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'wire', 'eriw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2521, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, '120v', 'v021', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, '240v', 'v042', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'air', 'ria', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'applied', 'deilppa', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'blank', 'knalb', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'breaker', 'rekaerb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'common', 'nommoc', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'confirm', 'mrifnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'damaged', 'degamad', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'did', 'did', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'extender', 'rednetxe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'guide', 'ediug', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'hvac', 'cavh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'install', 'llatsni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'installation', 'noitallatsni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'possible', 'elbissop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'power', 'rewop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'present', 'tneserp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'previous', 'suoiverp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'requires', 'seriuqer', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 's', 's', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'screen', 'neercs', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'spare', 'eraps', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'supply', 'ylppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'terminal', 'lanimret', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'thermostat', 'tatsomreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'time', 'emit', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'turned', 'denrut', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'unit', 'tinu', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'vac', 'cav', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'wire', 'eriw', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'wired', 'deriw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'wiser', 'resiw', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2541, 'wrong', 'gnorw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'air', 'ria', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'connection', 'noitcennoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'does', 'seod', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'electric', 'cirtcele', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'emphasis', 'sisahpme', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'fi', 'if', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'minimum', 'muminim', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'network', 'krowten', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'password', 'drowssap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'places', 'secalp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'protected', 'detcetorp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'require', 'eriuqer', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'schneider', 'redienhcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'secure', 'eruces', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'security', 'ytiruces', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'strong', 'gnorts', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'thermostat', 'tatsomreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'wi', 'iw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'wiser', 'resiw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2561, 'wpa2', '2apw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'backlight', 'thgilkcab', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'change', 'egnahc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'close', 'esolc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'intensity', 'ytisnetni', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'light', 'thgil', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'pulse', 'eslup', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'section', 'noitces', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2581, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'determine', 'enimreted', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'drops', 'spord', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'dual', 'laud', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'effective', 'evitceffe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'example', 'elpmaxe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'fuel', 'leuf', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'function', 'noitcnuf', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'gas', 'sag', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'heat', 'taeh', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'heating', 'gnitaeh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'minimum', 'muminim', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'outdoor', 'roodtuo', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'pump', 'pmup', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 's1', '1s', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 's2', '2s', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'sensors', 'srosnes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'switches', 'sehctiws', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'switching', 'gnihctiws', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'systems', 'smetsys', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'temperature', 'erutarepmet', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'terminals', 'slanimret', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2601, 'types', 'sepyt', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'air', 'ria', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'control', 'lortnoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'controlled', 'dellortnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'controller', 'rellortnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'dedicated', 'detacided', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'fan', 'naf', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'fans', 'snaf', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'incompatibles', 'selbitapmocni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'internal', 'lanretni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'managed', 'deganam', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'rest', 'tser', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'speed', 'deeps', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'supports', 'stroppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'variable', 'elbairav', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'wire', 'eriw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'wires', 'seriw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'wiser', 'resiw', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2621, 'yes', 'sey', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'air', 'ria', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'connect', 'tcennoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'connections', 'snoitcennoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'enter', 'retne', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'hidden', 'neddih', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'network', 'krowten', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'option', 'noitpo', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'password', 'drowssap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'screen', 'neercs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'scroll', 'llorcs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'select', 'tceles', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'ssid', 'diss', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'wifi', 'ifiw', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2641, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'celsius', 'suislec', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'change', 'egnahc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'choose', 'esoohc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'fahrenheit', 'tiehnerhaf', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'localization', 'noitazilacol', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'menu', 'unem', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'options', 'snoitpo', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'page', 'egap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'scales', 'selacs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'screen', 'neercs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'settings', 'sgnittes', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'temperature', 'erutarepmet', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2661, 'thermostat', 'tatsomreht', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'air', 'ria', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'connect', 'tcennoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'corner', 'renroc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'does', 'seod', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'guide', 'ediug', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'i', 'i', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'installation', 'noitallatsni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'installed', 'dellatsni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'instructions', 'snoitcurtsni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'jumper', 'repmuj', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'old', 'dlo', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'piece', 'eceip', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'plate', 'etalp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'pre', 'erp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'rc', 'cr', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'rh', 'hr', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'right', 'thgir', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'small', 'llams', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'thermostat', 'tatsomreht', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'use', 'esu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'wire', 'eriw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2681, 'wiser', 'resiw', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'account', 'tnuocca', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'app', 'ppa', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'creating', 'gnitaerc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'credentials', 'slaitnederc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'didn', 'ndid', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'hvac', 'cavh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'installer', 'rellatsni', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'login', 'nigol', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'mobile', 'elibom', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'sync', 'cnys', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 't', 't', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'thermostat', 'tatsomreht', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2701, 'used', 'desu', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, '2', '2', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, '24v', 'v42', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'air', 'ria', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'common', 'nommoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'commonly', 'ylnommoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'compatible', 'elbitapmoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'finish', 'hsinif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'heating', 'gnitaeh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'installation', 'noitallatsni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'known', 'nwonk', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'power', 'rewop', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'r', 'r', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'required', 'deriuqer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'requires', 'seriuqer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'source', 'ecruos', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'w', 'w', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'wire', 'eriw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'wires', 'seriw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2721, 'wiser', 'resiw', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'air', 'ria', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'breaker', 'rekaerb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'contact', 'tcatnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'continues', 'seunitnoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'fix', 'xif', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'got', 'tog', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'hvac', 'cavh', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'installed', 'dellatsni', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'issue', 'eussi', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'just', 'tsuj', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'loading', 'gnidaol', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'minutes', 'setunim', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'panel', 'lenap', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'process', 'ssecorp', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'progress', 'ssergorp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'screen', 'neercs', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'stuck', 'kcuts', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'support', 'troppus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'technical', 'lacinhcet', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'try', 'yrt', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'turn', 'nrut', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 've', 'ev', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'way', 'yaw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2741, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'able', 'elba', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'activated', 'detavitca', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'app', 'ppa', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'blue', 'eulb', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'boost', 'tsoob', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'called', 'dellac', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'cancel', 'lecnac', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'comfort', 'trofmoc', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'cooling', 'gnilooc', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'decrease', 'esaerced', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'heating', 'gnitaeh', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'i', 'i', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'increase', 'esaercni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'know', 'wonk', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'like', 'ekil', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'option', 'noitpo', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'orange', 'egnaro', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'screen', 'neercs', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'stop', 'pots', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'tap', 'pat', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'thermostat', 'tatsomreht', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2771, 'time', 'emit', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'air', 'ria', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'dual', 'laud', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'fuel', 'leuf', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'guide', 'ediug', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'heat', 'taeh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'i', 'i', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'pump', 'pmup', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'refer', 'refer', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'wiring', 'gniriw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'wiser', 'resiw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2791, 'work', 'krow', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, '100', '001', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, '4ghz', 'zhg4', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, '5ghz', 'zhg5', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'air', 'ria', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'aware', 'erawa', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'based', 'desab', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'case', 'esac', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'common', 'nommoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'compatible', 'elbitapmoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'connections', 'snoitcennoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'data', 'atad', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'devices', 'secived', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'displayed', 'deyalpsid', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'experience', 'ecneirepxe', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'just', 'tsuj', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'list', 'tsil', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'need', 'deen', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'network', 'krowten', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'networks', 'skrowten', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'new', 'wen', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'previous', 'suoiverp', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'question', 'noitseuq', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'sheet', 'teehs', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'states', 'setats', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'sure', 'erus', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'wifi', 'ifiw', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'wiser', 'resiw', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2811, 'working', 'gnikrow', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2901, 'getting', 'gnitteg', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2901, 'started', 'detrats', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2971, 'blah', 'halb', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2971, 'copy', 'ypoc', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2971, 'new', 'wen', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2971, 'post', 'tsop', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (2971, 'question', 'noitseuq', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (3161, 'press', 'sserp', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (3181, 'contact', 'tcatnoc', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (3201, 'partners', 'srentrap', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0); 
INSERT INTO `wp_relevanssi` VALUES (3221, 'buy', 'yub', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 'post', 0);
#
# End of data contents of table `wp_relevanssi`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_relevanssi_log`
# --------------------------------------------------------


#
# Delete any existing table `wp_relevanssi_log`
#

DROP TABLE IF EXISTS `wp_relevanssi_log`;


#
# Table structure of table `wp_relevanssi_log`
#

CREATE TABLE `wp_relevanssi_log` (
  `id` bigint(9) NOT NULL AUTO_INCREMENT,
  `query` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` mediumint(9) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_relevanssi_log`
#

#
# End of data contents of table `wp_relevanssi_log`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_relevanssi_stopwords`
# --------------------------------------------------------


#
# Delete any existing table `wp_relevanssi_stopwords`
#

DROP TABLE IF EXISTS `wp_relevanssi_stopwords`;


#
# Table structure of table `wp_relevanssi_stopwords`
#

CREATE TABLE `wp_relevanssi_stopwords` (
  `stopword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  UNIQUE KEY `stopword` (`stopword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_relevanssi_stopwords`
#
 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('a'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('about'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('above'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('across'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('after'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('afterwards'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('again'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('against'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('all'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('almost'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('alone'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('along'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('already'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('also'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('although'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('always'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('am'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('among'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('amongst'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('amoungst'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('amount'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('an'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('and'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('another'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('any'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('anyhow'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('anyone'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('anything'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('anyway'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('anywhere'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('are'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('around'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('as'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('at'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('back'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('be'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('became'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('because'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('become'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('becomes'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('becoming'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('been'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('before'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('beforehand'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('behind'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('being'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('below'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('beside'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('besides'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('between'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('beyond'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('bill'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('both'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('bottom'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('but'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('by'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('call'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('can'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('cannot'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('cant'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('co'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('con'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('could'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('couldnt'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('cry'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('de'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('describe'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('detail'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('do'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('done'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('down'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('due'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('during'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('each'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('eg'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('eight'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('either'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('eleven'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('else'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('elsewhere'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('empty'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('enough'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('etc'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('even'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ever'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('every'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('everyone'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('everything'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('everywhere'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('except'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('few'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('fifteen'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('fify'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('fill'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('find'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('fire'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('first'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('five'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('for'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('former'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('formerly'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('forty'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('found'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('four'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('from'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('front'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('full'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('further'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('get'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('give'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('go'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('had'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('has'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hasnt'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('have'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('he'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hence'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('her'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('here'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hereafter'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hereby'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('herein'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hereupon'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hers'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('herself'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('him'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('himself'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('his'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('how'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('however'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('hundred'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ie'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('if'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('in'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('inc'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('indeed'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('interest'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('into'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('is'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('it'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('its'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('itself'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('keep'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('last'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('latter'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('latterly'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('least'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('less'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ltd'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('made'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('many'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('may'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('me'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('meanwhile'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('might'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mill'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mine'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('more'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('moreover'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('most'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('mostly'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('move'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('much'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('must'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('my'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('myself'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('name'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('namely'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('neither'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('never'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nevertheless'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('next'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nine'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('no'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nobody'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('none'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('noone'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nor'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('not'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nothing'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('now'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('nowhere'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('of'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('off'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('often'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('on'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('once'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('one'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('only'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('onto'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('or'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('other'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('others'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('otherwise'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('our'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ours'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ourselves'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('out'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('over'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('own'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('part'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('per'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('perhaps'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('please'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('put'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('rather'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('re'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('same'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('see'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('seem'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('seemed'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('seeming'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('seems'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('serious'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('several'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('she'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('should'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('show'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('side'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('since'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sincere'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('six'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sixty'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('so'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('some'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('somehow'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('someone'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('something'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sometime'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('sometimes'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('somewhere'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('still'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('such'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('system'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('take'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('ten'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('than'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('that'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('the'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('their'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('them'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('themselves'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('then'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thence'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('there'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thereafter'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thereby'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('therefore'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('therein'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thereupon'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('these'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('they'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thickv'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thin'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('third'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('this'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('those'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('though'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('three'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('through'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('throughout'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thru'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('thus'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('to'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('together'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('too'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('top'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('toward'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('towards'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('twelve'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('twenty'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('two'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('un'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('under'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('until'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('up'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('upon'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('us'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('very'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('via'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('was'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('we'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('well'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('were'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('what'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whatever'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('when'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whence'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whenever'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('where'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whereafter'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whereas'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whereby'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('wherein'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whereupon'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('wherever'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whether'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('which'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('while'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whither'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('who'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whoever'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whole'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whom'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('whose'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('why'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('will'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('with'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('within'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('without'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('would'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yet'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('you'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('your'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yours'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yourself'); 
INSERT INTO `wp_relevanssi_stopwords` VALUES ('yourselves');
#
# End of data contents of table `wp_relevanssi_stopwords`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_termmeta`
# --------------------------------------------------------


#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_wonderplugin_tabs`
# --------------------------------------------------------


#
# Delete any existing table `wp_wonderplugin_tabs`
#

DROP TABLE IF EXISTS `wp_wonderplugin_tabs`;


#
# Table structure of table `wp_wonderplugin_tabs`
#

CREATE TABLE `wp_wonderplugin_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `authorid` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_wonderplugin_tabs`
#
 
INSERT INTO `wp_wonderplugin_tabs` VALUES (1, 'Main Support Tabs', '{"newestfirst":"false","name":"Main Support Tabs","slides":[{"type":0,"tabtitle":"Quick Start","tabcontent":"","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Install Help","tabcontent":"","pageid":"191","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"FAQ","tabcontent":"","pageid":"221","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Explore","tabcontent":"","pageid":"151","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Updates","tabcontent":"","pageid":"261","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"fade","firstid":2,"skin":"horizontaltoptabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":1024,"heightmode":"auto","height":400,"minheight":null,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"false","responsive":"true","fullwidth":"true","direction":"horizontal","tabposition":"top","tabiconposition":"left","horizontaltabalign":"center","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"arrow","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-left","arrownexticon":"fa-angle-right","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-down","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":"#wonderplugintabs-TABSID .wonderplugintabs-header-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\twidth: 100%;\\t\\n\\tz-index: 1;\\n\\tmargin-top: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\toverflow: hidden;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-ul {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tlist-style: none;\\n\\twhite-space: nowrap;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li {\\n\\tbox-sizing: border-box;\\n\\tdisplay: inline-block;\\n\\tposition: relative;\\n\\tcursor: pointer;\\n\\tmargin: 0 @tab-margin 0 0;\\n\\tpadding: 8px 12px;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-top-right-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-next {\\n\\tborder-left: 1px solid #ccc;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li:hover {\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active {\\n\\tbackground-color: #fff;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first-side-arrows {\\n\\tmargin-left: @tab-margin;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tright: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-right-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tright: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-top-right-radius: @tab-radius;\\n\\tpadding: 8px 12px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-caption {\\n\\tdisplay: table-cell;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-text {\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: #333;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-icon {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 14px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown {\\n\\tdisplay: none;\\n\\tposition: absolute;\\n\\twhite-space: nowrap;\\n\\ttop: 100%;\\n\\tright: 0;\\t\\n\\tborder-left: 1px solid #ccc;\\n\\tborder-right: 1px solid #ccc;\\n\\tborder-bottom: 1px solid #ccc;\\n\\tbox-shadow: 0 6px 12px rgba(0,0,0,.175);\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item {\\n\\tpadding: 12px 32px 12px 20px;\\t\\n\\tcursor: pointer;\\n\\ttext-align: left;\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item:hover {\\n\\tbackground-color: #f9f9f9;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-fontawesome {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 18px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-image {\\n\\tmargin: 4px;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-title {\\n\\tdisplay: inline-block;\\n\\tmargin: 4px;\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap {\\n\\tbox-sizing: border-box;\\n\\tposition: relative;\\n\\tdisplay: block;\\n\\twidth: 100%;\\n\\toverflow: hidden;\\n\\tborder: 1px solid #ccc;\\n\\tbackground-color: #fff;\\t\\n\\tmargin-top: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tvisibility: hidden;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\ttext-align: @panel-text-align;\\n\\tpadding: @panel-padding;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-active {\\n\\tposition: relative;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth {\\n\\tdisplay: block;\\n\\tmargin: 0;\\n\\tborder-bottom: none;\\n\\ttext-align: left;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth:last-child {\\n\\tborder-bottom: 1px solid #ccc;\\n}","publish_status":0}', '2016-02-05 18:44:01', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (11, 'Explore Tabs', '{"newestfirst":"false","name":"Explore Tabs","slides":[{"type":0,"tabtitle":"EcoIQ","tabcontent":"A smarter thermostat doesn\\u2019t just learn. It understands your habits, runs itself and helps you save. You step back and let it work - this is the beauty and unique benefit of EcoIQ from Wiser Air.\\n\\nThe EcoIQ difference\\nOther thermostats use motion sensors to determine occupancy in the home, a method far less reliable than user feedback. As a result, constant temperature adjustments are required as outside temperatures rise or fall and in-home lifestyles change. In contrast, EcoIQ relies on direct user feedback\\n\\nTechnology that sets you free\\nEcoIQ was developed by HVAC experts and thought leaders, ensuring a dynamic combination of technology power and individual insight. Wiser Air\'s revolutionary self-learning algorithm frees you from having to think about temperature set points, times of day and schedules. The system automates and delivers the most efficient plan possible for your home.\\n\\nHow does this happen? It starts when you initially decide what temperatures you want for your three modes - \\"Home,\\" \\"Away\\" and \\"Sleep.\\" You do this by pressing the up or down buttons next to the temperature display. Working off these initial set points, EcoIQ quickly learns your comfort levels and adjusts temperatures based on accurate weather forecasts. This happens without any further input from you.\\n\\nAre you comfortable?\\nIn all these actions, Wiser Air is challenging the very idea of set points and schedules. Instead, it is gently encouraging you to think more in terms of \\u201cAm I comfortable\\u201d as opposed to \\u201cIt must be 68 degrees.\\u201d\\n\\nFor example, when you are \\u201cAway,\\u201d EcoIQ will rapidly reduce your home temperature, using less and less energy each day. However, the temperature will never go below or above the \\u201cAway\\u201d temperature that you initially set.\\n\\nIn the \\u201cHome\\u201d mode, EcoIQ will quickly make a rough estimate of the temperature that consumes the least energy while still maintaining your comfort. To do this, EcoIQ processes input from key sources (see below) to create a time and temperature plan for the next few hours that will keep you comfortable and save energy.\\n\\nHow EcoIQ learns and adjusts your system\\nEcoIQ builds a database of information about your home and lifestyle in a variety of ways, including:\\nDeveloping a thermal profile of your home based on internal conditions and exterior factors such as weather.\\nMonitoring your energy usage - this information is continually being cycled though the system, telling EcoIQ where the most energy can be saved.\\nThe key sources EcoIQ uses to adjust your system include:\\nBest-in-class weather forecasts from Schneider Electric\\u2019s Weather Service\\nSystem performance based on your environment and lifestyle\\nFeedback from the initial temperature inputs that you provide\\nSaving You Money\\nHere are two examples of how EcoIQ saves you money:\\nWhen your system is in the \\u201cAway\\u201d mode, it will automatically use the least amount of energy and save you the most money. However, when you leave home, it is easy to forget to switch to \\u201cAway\\u201d (It happens a lot). EcoIQ recognizes this and makes the switch on its own, guaranteeing that you are saving energy and money.\\nAnother way is with EcoIQ\\u2019s ability to gradually lower your \\u201cHome\\u201d temperature by fractions of degrees, thereby decreasing energy usage. EcoIQ keeps reducing the temperature until you determine, \\u201cNo, that is too much.\\u201d Unlike other systems, Wiser Air takes your input as the only reliable input. In addition, you always have the option of overriding the settings.","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Weather","tabcontent":"#1 Weather Service in the Palm of Your Hand\\nWiser Air\\u2019s ability to accurately forecast weather and manage home energy costs is unmatched in the industry. It starts with Schneider Electric\\u2019s Weather Service. This industry-leading service is seamlessly integrated into your Wiser Air Thermostat and easily accessible from your Wiser Weather App.\\n\\nPrecise Weather at Your Fingertips\\nWeather information is readily available today, but Schneider is in a class by itself. For the first time ever, we have taken mission critical weather intelligence that businesses rely on and put it onto a consumer application.\\n\\nThe weather forecast on your App is the most precise in the world. And you receive it instantly without clicking through television stations, scrolling the radio dial or putting up with advertisements. No other provider comes close to this feature.\\n\\nThe #1 Weather Service in the Palm of Your Hand\\nFew consumers are aware of Schneider Electric\\u2019s undisputed leadership position within the weather industry. For the last eight years, our forecasts have been rated #1 by ForecastWatch.com. In overwhelming numbers, companies trust weather intelligence from Schneider Electric\\u2019s Weather Service.\\n\\nFor example, during golf tournaments the PGA Tour, partnering with Schneider Electric, must be on high alert for storms and possible lighting strikes to help keep players and fans safe. In addition, we provide similar services to over 2,000 commercial airlines, as well as professional sports teams in pro football and baseball, and thousands of other businesses where accurate weather information is vital for safety and success.\\n\\nHow You Benefit From Our Best-in-Class Weather\\nWeather impacts everyone, everyday. Schneider Electric\\u2019s world renowned service can make a measurable difference in how much money you save on energy costs and how comfortable you are in your home.\\n\\nEvery day, you\\u2019ll experience the value of our weather service through properly adjusted temperatures and forecasts you can depend on. Having accurate weather at your fingertips can also ease anxiety as you plan for the day or the week ahead. When freezing temperatures are a possibility, watch for a Frost Alert banner to flash on your app and on the thermostat. Gardeners with plants at risk will appreciate this feature!\\n\\nA Smarter Way to Manage Home Energy\\nYou can\\u2019t change the weather but Wiser Air will help you dress for it and manage it in your home for greater comfort and less cost. When the weather outside gets frightful, Wiser Air - unique in its ability to adjust temperatures - will keep your home efficient and comfortable.\\n\\nAdjust and Save: The Formula for a More Energy Efficient Home\\nThe number one driver of power is extreme temperature, both high and low. You\\u2019ve seen it in your home as utility bills skyrocket during cold snaps or heat waves. But when your home is smarter, a little bit wiser, and has good information, it can help you manage the house and keep it in balance with outside conditions.\\n\\nHow does this happen?\\n\\nThe Wiser Air thermostat lets you set temperatures (set points) for those times when you\\u2019re Home, Away or Asleep. You can create schedules to fit your lifestyle. For a weekday schedule, you might tell the system that you sleep from 11:00 pm to 6:00 a.m., leave home at 7:30 am and return by 5:30 pm.\\n\\nArmed with this information and based on outside temperatures, Wiser Air will automatically adjust temperatures in your home based on your schedule - saving you money by using the least amount of energy possible to maintain comfort during the various day parts. And since your schedule may change on the fly, you have the ability via WI-FI to adjust your settings from your iPhone, iPad or laptop from wherever you may be.\\n\\nAnd here\\u2019s a nice bonus - You don\\u2019t have to do anything; Wiser Air does it for you. All you have to do is tell the system what makes you comfortable.\\n\\nFor more ways that Wiser Air provides increased control over your comfort and your home energy usage, check out our Ready Mode, Wiser Pulse and Comfort Boost features on this website.","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"App","tabcontent":"The Wiser Air App: Delivering Unmatched Convenience and Control\\nIf you have a Wiser Air thermostat on your wall, you need the Wiser app at your fingertips.\\n\\nThe advanced thermostat from Wiser Air provides extraordinary control over your home temperatures, while also helping monitor and conserve energy. Our app takes these benefits to new levels of convenience and control.\\n\\nAnything you can do at the thermostat, you can do from your app - anytime from anywhere with your cell phone, iPad or laptop. The Wiser app is available for Apple and Android devices and Windows (2016).\\n\\nCheck the weather for today and the week ahead using Schneider Electric\\u2019s Weather Service, voted the number one weather forecasting service in the world for eight years in a row.\\nSee weather alerts like wind advisories or freeze warnings (from Schneider Electric\\u2019s Weather Service)\\nReview your current Home, Away and Sleep settings\\nAdjust schedules (i.e., extend Away mode if delayed at work)\\nActivate Comfort Boost for 15-minute jolts of heat or cool air as needed (i.e., provide a burst of heat as you wake up on cold mornings, warm your home as you pull into the driveway)\\nAn EcoIQ alert says the system is adjusting temperatures based on weather conditions and your home environment. No other system has this feature.\\nView your thermostat\\u2019s Pulse feature - a green glow that says you are saving energy with current settings\\nIf connected to your electric company via Wi-Fi or ZigBee Communications, Interact with the utility for energy insights, energy saving tips and your monthly statements","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Comfort Boost","tabcontent":"Wiser Comfort Boost\\nOne of Wiser Air\\u2019s most effective and popular features, Comfort Boost does exactly what the name says - delivering a quick 15 minute temperature boost to warm or cool the home at your command with no loss of energy efficiency.\\n\\nFor maximum comfort at home you can\\u2019t beat it. For example, if it\\u2019s a chilly morning, you can warm the house with a 15-minute heat blast before your normal Home temperature kicks in. When you leave home for work, Wiser Air switches to Away mode to help save energy throughout the day. On the drive home, use your Wiser app to turn on Comfort Boost remotely, warming the house for your arrival.\\n\\nQuick comfort at your fingertips\\nYou activate this feature by pressing and holding the set point arrow on any part of the Wiser Air platform. This overrides your pre-set temperatures - but not to worry. After 15 minutes of a temperature blast, the system automatically returns to your settings without any input from you. In addition, you can add boosts in 15-minute increments if desired. Again, your original settings are automatically restored.\\n\\nA hit with customers\\nWiser Air customers rave about Comfort Boost. One homeowner says, \\u201cIt\\u2019s a great feature. One click and I get a blast of cold air for 15 minutes without changing the settings.\\u201d\\n\\nAnother adds, \\u201cWe especially like the cool boost. It\\u2019s nice when you come home from a workout and just want some cold air without changing the temperature setting.\\u201d\\n\\n\\u201cThe ability to trigger a boost of heat or cool air without adjusting the set point is really neat,\\u201c says another user who adds, \\u201cI also like that everything is done on the interface level so it\\u2019s very easy.\\u201d","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Wiser Pulse","tabcontent":"Wiser Pulse\\nWith its sleek, elegant design, the Wiser Air thermostat looks good on any wall in your home. The system\\u2019s Pulse feature is a particular favorite with those who like to be in control of their home\\u2019s efficiency. A soft, ambient glow (\\u201chalo\\u201d effect) behind the temperature reading provides at--glance awareness of what the system is doing and what\\u2019s happening in your home - pulsing BLUE for cooling, RED for heating and GREEN when saving energy.\\n\\nYour thermostat also has a personal side, greeting you each day with a cheery \\u201cHello, Daniel (or Hello Sally), the temperature today is 65 degrees.\\u201d You will also receive timely weather alerts in the form of red banners across the screen, such as \\u201cWind Advisory until . . . \\u201c or \\u201cFreeze warning through. . .\\u201d\\n\\nThese greetings and alerts will also appear on your laptop and Wiser app. The weather information is based on world-class forecasts from Schneider Electric\\u2019s Weather Service.","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Simple Scheduling","tabcontent":"Simple Scheduling\\nWiser Air\\u2019s scheduling feature offers flexible scheduling and automatic programming that works with your life. Setting your schedule is a breeze and a critical step towards increasing energy efficiency in your home. With one touch, you tweak personal settings to your lifestyle, telling the system your comfort levels for Home, Away and Sleep, including start and end times for each mode.\\n\\nFor example, for Sleep mode, you may set the temperature at 64 degrees from 10:00pm to 6:00am. At 6:00am, your Home setting of 70 degrees begins and continues until you leave for work at 8:00am. During your workday, Wiser Air is in Away mode. During these hours, the system\\u2019s automatic programming will adjust to weather conditions and provide the most energy efficient condition for your home, saving significantly on energy usage and cost.","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Schneider Electric","tabcontent":"Video","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"","firstid":0,"skin":"verticallefttabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":800,"heightmode":"auto","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"false","responsive":"true","fullwidth":"false","direction":"vertical","tabposition":"left","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-up","arrownexticon":"fa-angle-down","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-right","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":"#wonderplugintabs-TABSID .wonderplugintabs-header-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tz-index: 1;\\n\\tfloat: left;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\theight: 100%;\\n\\toverflow: hidden;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap-arrows {\\n\\tpadding-top: @tab-margin;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-ul {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tlist-style: none;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\ttext-align: left;\\n\\tcursor: pointer;\\n\\tmargin: 0 0 @tab-margin 0;\\n\\tpadding: 8px 12px;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-next {\\n\\tborder-left: 1px solid #ccc;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li:hover {\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active {\\n\\tbackground-color: #fff;\\n\\tborder-right: none;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\theight:\\t40px;\\n\\tz-index: 1;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\tbottom: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\tcursor:pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\theight:\\t40px;\\n\\tz-index: 1;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\tbottom: 0;\\n\\tleft: 0;\\n\\tcursor: pointer;\\n\\twidth: 100%;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\tpadding: 8px 12px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-caption {\\n\\tdisplay: table-cell;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-text {\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-icon {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 14px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\tposition: absolute;\\n\\twhite-space: nowrap;\\n\\tbottom: 0;\\n\\tleft: 100%;\\t\\n\\tborder-top: 1px solid #ccc;\\n\\tborder-right: 1px solid #ccc;\\n\\tborder-bottom: 1px solid #ccc;\\n\\tbox-shadow: 0 6px 12px rgba(0,0,0,.175);\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item {\\n\\tpadding: 12px 32px 12px 20px;\\t\\n\\tcursor: pointer;\\n\\ttext-align: left;\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item:hover {\\n\\tbackground-color: #f9f9f9;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-fontawesome {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 18px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-image {\\n\\tmargin: 4px;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-title {\\n\\tdisplay: inline-block;\\n\\tmargin: 4px;\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n\\twhite-space: nowrap;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap {\\n\\tbox-sizing: border-box;\\n\\tposition: relative;\\n\\tdisplay: block;\\n\\toverflow: hidden;\\n\\tborder: 1px solid #ccc;\\n\\tbackground-color: #fff;\\t\\n\\tleft: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tvisibility: hidden;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\ttext-align: @panel-text-align;\\n\\tpadding: @panel-padding;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-active {\\n\\tposition: relative;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-wrap-fullwidth {\\n\\tfloat: none;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap-fullwidth {\\n\\tleft: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth {\\n\\tdisplay: block;\\n\\tmargin: 0;\\n\\tborder: 1px solid #ccc;\\n\\tborder-bottom: none;\\n\\ttext-align: left;\\n\\tborder-top-left-radius: 4px;\\n\\tborder-top-right-radius: 4px;\\n\\tborder-bottom-left-radius: 0px;\\n\\tborder-bottom-right-radius: 0px;\\n}","publish_status":0}', '2016-02-03 15:34:07', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (21, 'My Tabs', '{"newestfirst":"false","name":"My Tabs","slides":[{"type":1,"tabtitle":"General","tabcontent":"","pageid":"11","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Getting Wiser","tabcontent":"","pageid":"11","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Cost","tabcontent":"","pageid":"11","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"How it Works","tabcontent":"","pageid":"11","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Installation","tabcontent":"","pageid":"11","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Security","tabcontent":"","pageid":"11","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"","firstid":0,"skin":"horizontaltoptabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":800,"heightmode":"auto","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"false","responsive":"true","fullwidth":"false","direction":"horizontal","tabposition":"top","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-left","arrownexticon":"fa-angle-right","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-down","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":"#wonderplugintabs-TABSID .wonderplugintabs-header-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\twidth: 100%;\\t\\n\\tz-index: 1;\\n\\tmargin-top: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\toverflow: hidden;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-ul {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tlist-style: none;\\n\\twhite-space: nowrap;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li {\\n\\tbox-sizing: border-box;\\n\\tdisplay: inline-block;\\n\\tposition: relative;\\n\\tcursor: pointer;\\n\\tmargin: 0 @tab-margin 0 0;\\n\\tpadding: 8px 12px;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-top-right-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-next {\\n\\tborder-left: 1px solid #ccc;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li:hover {\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active {\\n\\tbackground-color: #fff;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first-side-arrows {\\n\\tmargin-left: @tab-margin;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tright: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-right-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tright: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-top-right-radius: @tab-radius;\\n\\tpadding: 8px 12px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-caption {\\n\\tdisplay: table-cell;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-text {\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: #333;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-icon {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 14px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown {\\n\\tdisplay: none;\\n\\tposition: absolute;\\n\\twhite-space: nowrap;\\n\\ttop: 100%;\\n\\tright: 0;\\t\\n\\tborder-left: 1px solid #ccc;\\n\\tborder-right: 1px solid #ccc;\\n\\tborder-bottom: 1px solid #ccc;\\n\\tbox-shadow: 0 6px 12px rgba(0,0,0,.175);\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item {\\n\\tpadding: 12px 32px 12px 20px;\\t\\n\\tcursor: pointer;\\n\\ttext-align: left;\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item:hover {\\n\\tbackground-color: #f9f9f9;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-fontawesome {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 18px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-image {\\n\\tmargin: 4px;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-title {\\n\\tdisplay: inline-block;\\n\\tmargin: 4px;\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap {\\n\\tbox-sizing: border-box;\\n\\tposition: relative;\\n\\tdisplay: block;\\n\\twidth: 100%;\\n\\toverflow: hidden;\\n\\tborder: 1px solid #ccc;\\n\\tbackground-color: #fff;\\t\\n\\tmargin-top: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tvisibility: hidden;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\ttext-align: @panel-text-align;\\n\\tpadding: @panel-padding;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-active {\\n\\tposition: relative;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth {\\n\\tdisplay: block;\\n\\tmargin: 0;\\n\\tborder-bottom: none;\\n\\ttext-align: left;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth:last-child {\\n\\tborder-bottom: 1px solid #ccc;\\n}","publish_status":0}', '2016-02-03 15:57:08', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (31, 'Up Close: Bells &amp; Whistles', '{"newestfirst":"false","name":"Up Close: Bells &amp; Whistles","slides":[{"type":1,"tabtitle":"Schedules","tabcontent":"","pageid":"1951","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Comfort Boost","tabcontent":"","pageid":"1991","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"My Wiser","tabcontent":"","pageid":"2011","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"fade","firstid":0,"skin":"horizontaltoptabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":null,"heightmode":"auto","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"true","responsive":"true","fullwidth":"false","direction":"horizontal","tabposition":"top","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-left","arrownexticon":"fa-angle-right","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-down","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":""}', '2016-02-16 20:30:48', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (41, 'Up Close: Then There\'s Wiser', '{"newestfirst":"false","name":"Up Close: Then There\'s Wiser","slides":[{"type":1,"tabtitle":"Eco IQ","tabcontent":"","pageid":"2051","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Auto Updates","tabcontent":"","pageid":"2081","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"fade","firstid":0,"skin":"horizontaltoptabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":null,"heightmode":"auto","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"true","responsive":"true","fullwidth":"false","direction":"horizontal","tabposition":"top","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-left","arrownexticon":"fa-angle-right","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-down","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":""}', '2016-02-16 20:32:09', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (51, 'Up Close: Clear Information', '{"newestfirst":"false","name":"Up Close: Clear Information","slides":[{"type":0,"tabtitle":"Energy Insights","tabcontent":"<p style=\\"text-align: center;\\">Straightforward energy usage information that you can really use.<\\/p>\\n\\n<div id=\\"chart-container\\" style=\\"width: 900px; margin: 0 auto; text-align: center\\"><\\/div>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Peak Paybacks","tabcontent":"","pageid":"2141","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Wiser Forecast","tabcontent":"","pageid":"2171","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"fade","firstid":0,"skin":"horizontaltoptabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":1000,"heightmode":"auto","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"true","responsive":"true","fullwidth":"true","direction":"horizontal","tabposition":"top","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-left","arrownexticon":"fa-angle-right","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-down","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":""}', '2016-03-15 16:59:08', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (61, 'Up Close: Specifications', '{"newestfirst":"false","name":"Up Close: Specifications","slides":[{"type":1,"tabtitle":"Software","tabcontent":"","pageid":"2181","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":1,"tabtitle":"Hardware","tabcontent":"","pageid":"2201","tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"fade","firstid":0,"skin":"horizontaltoptabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":null,"heightmode":"auto","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"true","responsive":"true","fullwidth":"false","direction":"horizontal","tabposition":"top","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-left","arrownexticon":"fa-angle-right","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-down","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":"#wonderplugintabs-TABSID .wonderplugintabs-header-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\twidth: 100%;\\t\\n\\tz-index: 1;\\n\\tmargin-top: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\toverflow: hidden;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-ul {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tlist-style: none;\\n\\twhite-space: nowrap;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li {\\n\\tbox-sizing: border-box;\\n\\tdisplay: inline-block;\\n\\tposition: relative;\\n\\tcursor: pointer;\\n\\tmargin: 0 @tab-margin 0 0;\\n\\tpadding: 8px 12px;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-top-right-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-next {\\n\\tborder-left: 1px solid #ccc;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li:hover {\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active {\\n\\tbackground-color: #fff;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first-side-arrows {\\n\\tmargin-left: @tab-margin;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tright: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-right-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tright: 0;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-top-right-radius: @tab-radius;\\n\\tpadding: 8px 12px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-caption {\\n\\tdisplay: table-cell;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-text {\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: #333;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-icon {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 14px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown {\\n\\tdisplay: none;\\n\\tposition: absolute;\\n\\twhite-space: nowrap;\\n\\ttop: 100%;\\n\\tright: 0;\\t\\n\\tborder-left: 1px solid #ccc;\\n\\tborder-right: 1px solid #ccc;\\n\\tborder-bottom: 1px solid #ccc;\\n\\tbox-shadow: 0 6px 12px rgba(0,0,0,.175);\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item {\\n\\tpadding: 12px 32px 12px 20px;\\t\\n\\tcursor: pointer;\\n\\ttext-align: left;\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item:hover {\\n\\tbackground-color: #f9f9f9;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-fontawesome {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 18px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-image {\\n\\tmargin: 4px;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-title {\\n\\tdisplay: inline-block;\\n\\tmargin: 4px;\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap {\\n\\tbox-sizing: border-box;\\n\\tposition: relative;\\n\\tdisplay: block;\\n\\twidth: 100%;\\n\\toverflow: hidden;\\n\\tborder: 1px solid #ccc;\\n\\tbackground-color: #fff;\\t\\n\\tmargin-top: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tvisibility: hidden;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\ttext-align: @panel-text-align;\\n\\tpadding: @panel-padding;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-active {\\n\\tposition: relative;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth {\\n\\tdisplay: block;\\n\\tmargin: 0;\\n\\tborder-bottom: none;\\n\\ttext-align: left;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth:last-child {\\n\\tborder-bottom: 1px solid #ccc;\\n}"}', '2016-02-16 20:34:21', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (71, 'Energy Control', '{"newestfirst":"false","name":"Energy Control","slides":[{"type":0,"tabtitle":"Step 1: Existing Wiring","tabcontent":"<img src=\\"https:\\/\\/m.wiserair.com\\/images\\/4.1.0_old_stat.png\\" alt=\\"phone_schedule\\">\\n<h2>Intuitive installation<\\/h2>\\n<p>Connecting with your home in just a few easy steps, the average person installs Wiser Air in about 30 minutes. All you need is a phillips screwdriver, a wire cutter and a desire for increased efficiency.<\\/p>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Step 2: Match Wires","tabcontent":"<img src=\\"https:\\/\\/m.wiserair.com\\/images\\/4.1.0_wires.jpg\\" alt=\\"phone_schedule\\">\\n<h2>Intuitive installation<\\/h2>\\n<p>Disconnect the wiring of the existing thermostat and remove the back plate. Pull the wires out of the wall (a few inches through the central hole of the Wiser Air back plate). Then, level and attach the Wiser Air back plate to the wall.<\\/p>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Step 3: Connect Wires","tabcontent":"<img src=\\"https:\\/\\/m.wiserair.com\\/images\\/4.1.0_wiser_backplate.png\\" alt=\\"phone_schedule\\">\\n<h2>Intuitive installation<\\/h2>\\n<p>Connect the wiring to the Wiser Air back plate, matching the terminal connections to the ones in the picture you took in Step 1. If things get confusing, reference the installation manual or simply give us a call and we\'ll help sort everything out.<\\/p>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Step 4: Connect Wiser","tabcontent":"<img src=\\"https:\\/\\/m.wiserair.com\\/images\\/1.1.0_thermostat2.png\\" alt=\\"phone_schedule\\">\\n<h2>Intuitive installation<\\/h2>\\n<p>Finally, snap your Wiser Air onto the back plate and restore the power to the HVAC system. Watch for the halo to begin glowing as your device powers for the first time. Congratulations, you\'ve installed your Wiser Air thermostat!<\\/p>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"","firstid":0,"skin":"verticallefttabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":1000,"heightmode":"fixed","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"false","responsive":"true","fullwidth":"false","direction":"vertical","tabposition":"left","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-up","arrownexticon":"fa-angle-down","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-right","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":"#wonderplugintabs-TABSID .wonderplugintabs-header-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tz-index: 1;\\n\\tfloat: left;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\theight: 100%;\\n\\toverflow: hidden;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap-arrows {\\n\\tpadding-top: @tab-margin;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-ul {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tlist-style: none;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\ttext-align: left;\\n\\tcursor: pointer;\\n\\tmargin: 0 0 @tab-margin 0;\\n\\tpadding: 8px 12px;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-next {\\n\\tborder-left: 1px solid #ccc;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li:hover {\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active {\\n\\tbackground-color: #fff;\\n\\tborder-right: none;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\theight:\\t40px;\\n\\tz-index: 1;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\tbottom: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\tcursor:pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\theight:\\t40px;\\n\\tz-index: 1;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\tbottom: 0;\\n\\tleft: 0;\\n\\tcursor: pointer;\\n\\twidth: 100%;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\tpadding: 8px 12px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-caption {\\n\\tdisplay: table-cell;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-text {\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-icon {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 14px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\tposition: absolute;\\n\\twhite-space: nowrap;\\n\\tbottom: 0;\\n\\tleft: 100%;\\t\\n\\tborder-top: 1px solid #ccc;\\n\\tborder-right: 1px solid #ccc;\\n\\tborder-bottom: 1px solid #ccc;\\n\\tbox-shadow: 0 6px 12px rgba(0,0,0,.175);\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item {\\n\\tpadding: 12px 32px 12px 20px;\\t\\n\\tcursor: pointer;\\n\\ttext-align: left;\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item:hover {\\n\\tbackground-color: #f9f9f9;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-fontawesome {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 18px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-image {\\n\\tmargin: 4px;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-title {\\n\\tdisplay: inline-block;\\n\\tmargin: 4px;\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n\\twhite-space: nowrap;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap {\\n\\tbox-sizing: border-box;\\n\\tposition: relative;\\n\\tdisplay: block;\\n\\toverflow: hidden;\\n\\tborder: 1px solid #ccc;\\n\\tbackground-color: #fff;\\t\\n\\tleft: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tvisibility: hidden;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\ttext-align: @panel-text-align;\\n\\tpadding: @panel-padding;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-active {\\n\\tposition: relative;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-wrap-fullwidth {\\n\\tfloat: none;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap-fullwidth {\\n\\tleft: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth {\\n\\tdisplay: block;\\n\\tmargin: 0;\\n\\tborder: 1px solid #ccc;\\n\\tborder-bottom: none;\\n\\ttext-align: left;\\n\\tborder-top-left-radius: 4px;\\n\\tborder-top-right-radius: 4px;\\n\\tborder-bottom-left-radius: 0px;\\n\\tborder-bottom-right-radius: 0px;\\n}"}', '2016-03-07 13:58:09', '1'); 
INSERT INTO `wp_wonderplugin_tabs` VALUES (81, 'Touchscreen Setup', '{"newestfirst":"false","name":"Touchscreen Setup","slides":[{"type":0,"tabtitle":"Step 1: Confirm Wiring","tabcontent":"<img src=\\"https:\\/\\/m.wiserair.com\\/images\\/4.2.0_wiring_conf.png\\" alt=\\"phone_schedule\\"\\/>\\n<h2>Connect and control<\\/h2>\\n<p class=\\"subtitle\\">Once on your wall, the Wiser Air setup wizard walks you through connecting to your home\\u2019s system so you can start personalizing your settings. Start by verifying your wiring configuration.<\\/p>\\n<p><a href=\\"#\\" class=\\"button\\">Having Trouble?<\\/a><\\/p>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Step 2: Select HVAC Type","tabcontent":"<img src=\\"https:\\/\\/m.wiserair.com\\/images\\/4.2.0_hvac_type.png\\" alt=\\"phone_schedule\\">\\n<h2>Connect and control<\\/h2>\\n<p class=\\"subtitle\\">Next, tell Wiser Air a little about the HVAC system in your home by answering a few brief questions.<\\/p>\\n<p><a href=\\"#\\" class=\\"button\\">Having Trouble?<\\/a><\\/p>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"},{"type":0,"tabtitle":"Step 3: Connect To Wi-Fi","tabcontent":"<img src=\\"https:\\/\\/m.wiserair.com\\/images\\/4.2.0_wifi_config.png\\" alt=\\"phone_schedule\\"\\/>\\n<h2>Connect and control<\\/h2>\\n<p class=\\"subtitle\\">Finally, scan for and join your WiFi network. After Wiser Air connects, you\'re all set!<\\/p>\\n<p><a href=\\"#\\" class=\\"button\\">Having Trouble?<\\/a><\\/p>","pageid":-1,"tabicon":"fontawesome","tabiconfontawesome":"","tabiconimage":"","tabiconimagewidth":"48","tabiconimageheight":"48"}],"transition":"","firstid":0,"skin":"verticallefttabs","donotinit":"false","addinitscript":"false","customcss":"","dataoptions":"","fullwidthtabsonsmallscreen":"true","fullwidthtabsonsmallscreenwidth":480,"applydisplaynonetohiddenpanel":"true","width":1000,"heightmode":"auto","height":400,"minheight":200,"triggerresize":"true","triggerresizeonload":"true","triggerresizeonloadtimeout":0,"disablewpautop":"false","extendedheight":"false","responsive":"true","fullwidth":"false","direction":"vertical","tabposition":"left","tabiconposition":"left","horizontaltabalign":"left","hidetitleonsmallscreen":"false","hidetitleonsmallscreenwidth":768,"responsivemode":"menu","tabarrowmode":"slide","horizontalarrowwidthsameasheight":"pixels","horizontalarrowwidth":32,"arrowprevicon":"fa-angle-up","arrownexticon":"fa-angle-down","dropdownmenutext":"More","dropdownmenuicon":"fa-angle-right","skinoptions":{"title-color":["color","#333","Title color"],"icon-color":["color","#666","FontAwesome icon color"],"tab-radius":["pixel","4","Tab border radius"],"tab-margin":["pixel","4","Tab margin"],"panel-padding":["pixel","24","Panel padding"],"panel-text-align":["align","left","Panel text align"]},"skincss":"#wonderplugintabs-TABSID .wonderplugintabs-header-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tz-index: 1;\\n\\tfloat: left;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\theight: 100%;\\n\\toverflow: hidden;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-inner-wrap-arrows {\\n\\tpadding-top: @tab-margin;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-ul {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\tlist-style: none;\\n\\tmargin: 0;\\n\\tpadding: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tposition: relative;\\n\\ttext-align: left;\\n\\tcursor: pointer;\\n\\tmargin: 0 0 @tab-margin 0;\\n\\tpadding: 8px 12px;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-next {\\n\\tborder-left: 1px solid #ccc;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li:hover {\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active {\\n\\tbackground-color: #fff;\\n\\tborder-right: none;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-active-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-first-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-last-side-arrows {\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\tcursor: pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\theight:\\t40px;\\n\\tz-index: 1;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-prev:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next {\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\tbottom: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\tcursor:pointer;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\theight:\\t40px;\\n\\tz-index: 1;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:before {\\n   position: relative;\\n   top: 50%;\\n   margin-top: -8px;\\n   font-family: FontAwesome;\\n   font-size: 16px;\\n   display: block;\\n   color: #666;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-next:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\ttext-align: center;\\n\\tposition: absolute;\\n\\tbottom: 0;\\n\\tleft: 0;\\n\\tcursor: pointer;\\n\\twidth: 100%;\\n\\tbackground-color: #f6f6f6;\\n\\tborder: 1px solid #ccc;\\n\\tborder-top-left-radius: @tab-radius;\\n\\tborder-bottom-left-radius: @tab-radius;\\n\\tpadding: 8px 12px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-caption {\\n\\tdisplay: table-cell;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-text {\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-icon {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 14px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu:hover {\\n\\tbackground-color: #fff;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown {\\n\\tbox-sizing: border-box;\\n\\tdisplay: none;\\n\\tposition: absolute;\\n\\twhite-space: nowrap;\\n\\tbottom: 0;\\n\\tleft: 100%;\\t\\n\\tborder-top: 1px solid #ccc;\\n\\tborder-right: 1px solid #ccc;\\n\\tborder-bottom: 1px solid #ccc;\\n\\tbox-shadow: 0 6px 12px rgba(0,0,0,.175);\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item {\\n\\tpadding: 12px 32px 12px 20px;\\t\\n\\tcursor: pointer;\\n\\ttext-align: left;\\n\\tbackground-color: #fff;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-menu-dropdown-item:hover {\\n\\tbackground-color: #f9f9f9;\\t\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-fontawesome {\\n\\tfont-family: FontAwesome;\\n\\tfont-size: 18px;\\n\\tvertical-align: middle;\\n\\tmargin: 8px;\\n\\tcolor: @icon-color;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-icon-image {\\n\\tmargin: 4px;\\n\\tvertical-align: middle;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-title {\\n\\tdisplay: inline-block;\\n\\tmargin: 4px;\\n\\tfont-family: \\"Open Sans\\", Arial, sans-serif;\\n\\tfont-size: 12px;\\n\\tfont-weight: 400;\\n\\tvertical-align: middle;\\n\\tcolor: @title-color;\\n\\twhite-space: nowrap;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap {\\n\\tbox-sizing: border-box;\\n\\tposition: relative;\\n\\tdisplay: block;\\n\\toverflow: hidden;\\n\\tborder: 1px solid #ccc;\\n\\tbackground-color: #fff;\\t\\n\\tleft: -1px;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel {\\n\\tbox-sizing: border-box;\\n\\tdisplay: block;\\n\\tvisibility: hidden;\\n\\tposition: absolute;\\n\\ttop: 0;\\n\\tleft: 0;\\n\\twidth: 100%;\\n\\ttext-align: @panel-text-align;\\n\\tpadding: @panel-padding;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-active {\\n\\tposition: relative;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-wrap-fullwidth {\\n\\tfloat: none;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-panel-wrap-fullwidth {\\n\\tleft: 0;\\n}\\n\\n#wonderplugintabs-TABSID .wonderplugintabs-header-li-fullwidth {\\n\\tdisplay: block;\\n\\tmargin: 0;\\n\\tborder: 1px solid #ccc;\\n\\tborder-bottom: none;\\n\\ttext-align: left;\\n\\tborder-top-left-radius: 4px;\\n\\tborder-top-right-radius: 4px;\\n\\tborder-bottom-left-radius: 0px;\\n\\tborder-bottom-right-radius: 0px;\\n}"}', '2016-03-04 18:09:53', '1');
#
# End of data contents of table `wp_wonderplugin_tabs`
# --------------------------------------------------------

