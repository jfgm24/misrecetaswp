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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '2RseDXkpmgw7yvZPMOQtzCF58cVxVFOarKN4Vru4Z669t4Wbban4psc9pv5UlaXAej1U7/i6BMtj6oxAZQMYfA==');
define('SECURE_AUTH_KEY',  'I9fv0n6LB+EwrWVqqADwHcuVbD/bEXLCcW4hGYaajEZQ2AkP/MtTLQBhAJGZto+8KjTLNpguimf+po0WhpiOTw==');
define('LOGGED_IN_KEY',    'G54UPlJL8d0RD4LnGyuRp8npdVPnincOnY/cnPK3JQQhiYLtVj9AxZ4qo4DhJicLQpPAwyAlTHSjpRM5ATqv1g==');
define('NONCE_KEY',        'GyfCYmhkHQJcoWbcXp0u3w/zo52nZaEI0rc5VE5vNvfbb6DtiJD+VMhXmCA4vSErRfORYRCpKfli47BNqI7f+g==');
define('AUTH_SALT',        '+aBB7FUetzgIAQpwESrEtoQNFJm9WCBsbcRWvo0GmrHDF6GnurAfDGUAOB4Ft6FLmUjvO2UY0GRP5wd6UvdHug==');
define('SECURE_AUTH_SALT', 'EpCy144VBOc9Dy7K3BdjbvUdVx6y6Sb5rq0ofVyBFBCbOpWUBY6yHl3IMQU4B4Up0Ig0uiuvLyVMxruomc70ew==');
define('LOGGED_IN_SALT',   'iokPxFML1EajLpcfy8vgEQATDB5WpnwxlpE6aux5IZLutuyibYyZSxjIMOBwFUqf0tWpwN5gWBOmRSjLrZL0qQ==');
define('NONCE_SALT',       'P8Wp3LOxaWCeiBZyC2hEE45hexQN9dQUEKVt7kQbFMyrAEffP/GL2moHBHG360+EM4iCkDgJ9j/Nhd+HpqLrUA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
