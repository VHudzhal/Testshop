<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Shop_theme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
<!--	<a class="skip-link screen-reader-text" href="#primary">--><?php //esc_html_e( 'Skip to content', 'myshop' ); ?><!--</a>-->
	<header id="masthead" class="site-header">
        <div class="top-head">
            <?php
            $myshop_description = get_bloginfo( 'description', 'display' );
            if ( $myshop_description || is_customize_preview() ) :
            ?>
            <p class="site-description"><?php echo $myshop_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
            <?php endif; ?>
            <a href="#" class="special-offers">Special offers</a>
            <a href="#" class="close"><img src="<?php echo get_stylesheet_directory_uri();?>/images/Grabber.png" alt=""></a>
        </div>
        <div class="middle-head">
            <div class="" id="left-part">
                <a href="tel:+1234567890" class="phone-number">+1234567890</a>
                <?php get_search_form(); ?>
            </div>
            <div class="site-branding">
                <?php
                the_custom_logo();
                if ( is_front_page() && is_home() ) :
                    ?>
<!--                    <h1 class="site-title"><a href="--><?php //echo esc_url( home_url( '/' ) ); ?><!--" rel="home">--><?php //bloginfo( 'name' ); ?><!--</a></h1>-->
                <?php
                else :
                    ?>
<!--                    <p class="site-title"><a href="--><?php //echo esc_url( home_url( '/' ) ); ?><!--" rel="home">--><?php //bloginfo( 'name' ); ?><!--</a></p>-->
                <?php
                endif;
                ?>
            </div><!-- .site-branding -->
            <div id="right-part" class="buttons-group">
                <button id="cart"><img class="" width="44px" src="<?php echo get_stylesheet_directory_uri();?>/images/cart-ico.png" alt="" style="">
                </button>
                <button id="login">Log in<img class="" width="44px" src="<?php echo get_stylesheet_directory_uri();?>/images/login-ico.png" alt="" style="">
                </button>
            </div>
        </div>


		<nav id="site-navigation" class="main-navigation">
			<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false">Menu</button>
			<?php
			wp_nav_menu(
				array(
				        'container' => 'div',
					'theme_location' => 'menu-1',
					'menu_id'        => 'header-menu',
					'menu_class' => 'menu'
				)
			);
			?>
		</nav><!-- #site-navigation -->
	</header><!-- #masthead -->
