<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

define( "WP_HOME", "https://" .$_SERVER["HTTP_HOST"]. "/" );
define( "WP_SITEURL", "https://" .$_SERVER["HTTP_HOST"]. "/" );

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'database_name' );

/** Database username */
define( 'DB_USER', 'database_username' );

/** Database password */
define( 'DB_PASSWORD', 'database_password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '$*<LcLRqZpHrxZlLu{6LCKP{5x2b8#Q-![P?TZ08=7t YK2Bg<;0^>k&e(*6ZcpO' );
define( 'SECURE_AUTH_KEY',  'y/K^*b2KU-3YBNYiaG$F-dP9p4RB%dQ>s=<bk@{a.bFvQ)T3nm9-bqqg%t[<v)N_' );
define( 'LOGGED_IN_KEY',    'HUR)l*,9$F.y!~|GprIdcG$niFOULj2P!wlIA,1pO4>o#D)8a9moZ[/uilRo.r&c' );
define( 'NONCE_KEY',        '6CbKhT2;0X0Lj`Ctc<,v!io#*~5r y5?%KKpZ. Zb/F`8DjOaa&kXCBu@&/4+x=h' );
define( 'AUTH_SALT',        '6I1ou#HF.U@xGi&v@diBJ:6qgkUw#&$LETC>-J#Y9jSHu+2[-(1j@SA%+xR^x7o4' );
define( 'SECURE_AUTH_SALT', 'o w*c9:)|GdX2`gQ[#h]Yhz_;M%f /t8w>**Fx+XvS[~=QQM0si,@l1k<M;zo@QL' );
define( 'LOGGED_IN_SALT',   'fex  {iUMH}xsdusw(ER/|(p;uFAMe{EN6b3-]]@$@S4Esyvt<zv{,;[:eheb y?' );
define( 'NONCE_SALT',       'O5QL>.5_6BsgkNQpe)UYJ} 2;8H#wRZz(@<{{M6.%+g|%!$&E%whfft/GOSx~1K5' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 *  * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
