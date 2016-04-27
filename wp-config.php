<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', ( getenv('ProjectNami.DBName') ? getenv('ProjectNami.DBName') : 'wiserairmlp-dev'));

/** MySQL database username */
define('DB_USER', ( getenv('ProjectNami.DBUser') ? getenv('ProjectNami.DBUser') : 'WiserTeam@wiserairmlp-dev-sqlserver'));

/** MySQL database password */
define('DB_PASSWORD', ( getenv('ProjectNami.DBPass') ? getenv('ProjectNami.DBPass') : 'SEDevelopment1'));

/** MySQL hostname */
define('DB_HOST', ( getenv('ProjectNami.DBHost') ? getenv('ProjectNami.DBHost') : 'wiserairmlp-dev-sqlserver.database.windows.net'));

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'nH-K7YHVPLFoCeD*s+>+W$_J~Eawi0+{-hi!>4*Huu0{|`O>+HB)be>_(N`%u%tN');
define('SECURE_AUTH_KEY',  'is5_bUdp~M0U_G5D=vsK2(zp]%MB#hFBMKG+E2XbC-|a25<(<V>&EP4[[g)pq*5]');
define('LOGGED_IN_KEY',    'f+VUdpS}8dC/kS~pB4P#o2_/PB8c*T+~34a,muHS9GGP1tw+~(dQ=O@=L+P=ghCa');
define('NONCE_KEY',        'UvZTv|+vvTU`61@00KcLf1D-AFO{GQ1X@/g9<4seia iV[32Y|__j7G OG_W%xt[');
define('AUTH_SALT',        ':Zwz}Wy1-#-wmn]sY$::?.Qe_b;9E]uit]aY4dEme9@d1w6Q/oG+GIJV-NvCMEST');
define('SECURE_AUTH_SALT', 'yD<+:E2KFI$MZMWE$>p?|L-zA1(5nl_y`Yb1nLrH+ *I$92H>Z;U.?w|,NTvkENm');
define('LOGGED_IN_SALT',   'kFU3FI7kn%?<$*,6%Qit,9g?ShPYkk}7+j+@K3@esuopd]1GLN-HwIHFP5GmKM*%');
define('NONCE_SALT',       'pIt<uG`G1>!$.#$.eP{HM:ZZ~Ms)2}#Y]S%kJq3}i5Bh+:S+wr.s<GWj9&M([s@V');
define('WP_MEMORY_LIMIT', '512M');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
