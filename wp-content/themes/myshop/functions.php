<?php
/**
 * Shop theme functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Shop_theme
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

if ( ! function_exists( 'myshop_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function myshop_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Shop theme, use a find and replace
		 * to change 'myshop' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'myshop', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
//		register_nav_menus(
//			array(
//				'menu-1' => esc_html__( 'Primary', 'myshop' ),
//			)
//		);

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
				'style',
				'script',
			)
		);

		// Set up the WordPress core custom background feature.
		add_theme_support(
			'custom-background',
			apply_filters(
				'myshop_custom_background_args',
				array(
					'default-color' => 'ffffff',
					'default-image' => '',
				)
			)
		);

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support(
			'custom-logo',
			array(
				'height'      => 250,
				'width'       => 250,
				'flex-width'  => true,
				'flex-height' => true,
			)
		);
	}
endif;
add_action( 'after_setup_theme', 'myshop_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function myshop_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'myshop_content_width', 640 );
}
add_action( 'after_setup_theme', 'myshop_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function my_shop_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'myshop' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'myshop' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
    register_sidebar(
        array(
            'name'          => esc_html__( 'Sidebar 1', 'myshop' ),
            'id'            => 'sidebar-2',
            'description'   => esc_html__( 'Add widgets here.', 'myshop' ),
            'before_widget' => '<section id="%1$s" class="widget %2$s">',
            'after_widget'  => '</section>',
            'before_title'  => '<h2 class="widget-title">',
            'after_title'   => '</h2>',
        )
    );
}
add_action( 'widgets_init', 'my_shop_widgets_init' );
// Register Navigation Menus
function my_shop_navigation_menus() {

    $locations = array(
        'menu-1' => esc_html__( 'Primary', 'myshop' ),
        'main-menu' => esc_html__( 'Main', 'myshop' ),
        'header-menu' => esc_html__( 'Header menu', 'myshop' ),
        'main-menu-mob' => esc_html__( 'Main Mob', 'myshop' )
    );
    register_nav_menus( $locations );
}
add_action( 'init', 'my_shop_navigation_menus' );
/**
 * Enqueue scripts and styles.
 */
function my_shop_scripts() {
	wp_enqueue_style( 'myshop-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'myshop-style', 'rtl', 'replace' );
    wp_enqueue_style( 'slick', get_template_directory_uri().'/src/slick.css', array(), _S_VERSION );
    wp_enqueue_style( 'slick-theme', get_template_directory_uri().'/src/slick-theme.css', array(), _S_VERSION );
   //wp_enqueue_style( 'bootstrap', get_stylesheet_uri().'/css/bootstrap.min.css', array(), _S_VERSION );
   wp_enqueue_style( 'fontawesome', get_template_directory_uri().'/src/fontawesome.css', array(), _S_VERSION );
    //wp_enqueue_style( '_themename-stylesheet', get_template_directory_uri() . '/dist/css/bundle.css', array(), '1.0.0', 'all' );
    wp_enqueue_script( 'myshop-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'jquery-1.11', get_template_directory_uri() . '/js/jquery-1.11.0.min.js', array('jquery'), '1.11.0', true );
    wp_enqueue_script( 'jquery-3.4.1', get_template_directory_uri() . '/js/jquery-3.4.1.min.js', array('jquery'), '3.4.1', true );
    wp_enqueue_script( 'jquery-11', get_template_directory_uri() . '/js/slick.min.js', array('jquery'), '1.8.0', true );
    wp_enqueue_script('script', get_template_directory_uri().'/js/script.js', array('jquery'), '1.0', true);
    if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'my_shop_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

/**
 * Load WooCommerce compatibility file.
 */
if ( class_exists( 'WooCommerce' ) ) {
	require get_template_directory() . '/inc/woocommerce.php';
}
add_filter('woocommerce_variable_price_html', 'custom_variation_price', 10, 2);
function custom_variation_price($price, $product) {
    $available_variations = $product->get_available_variations();
    $selectedPrice = '';
    $dump = '';
    $defaultArray = array();
    foreach ($product->get_default_attributes() as $key => $val) {
        // $dump = $dump . '<pre>' . var_export($key, true) . '</pre>';
        // $dump = $dump . '<pre>' . var_export($val, true) . '</pre>';
        $defaultArray['attribute_' . $key] = $val;
    }
    // $dump = $dump . '<pre>' . var_export($defaultArray, true) . '</pre>';
    if (empty($defaultArray)) {
        $price = $product->get_variation_price( 'min', true ); // no default variation, show min price
    } else {
        foreach ($available_variations as $variation) {
            // $dump = $dump . '<pre>' . var_export($variation['attributes'], true) . '</pre>';
            $isDefVariation = false;

            $result = array_diff($defaultArray, $variation['attributes']);
            if (empty($result)) {
                $isDefVariation = true;
                $price = $variation['display_price'];
                break;
            }
        }
    }

    $selectedPrice = wc_price($price);
    // $dump = $dump . '<pre>' . var_export($available_variations, true) . '</pre>';
    return '<span class="start-from">Start from</span>'.$selectedPrice . $dump;
}
add_filter( 'woocommerce_product_add_to_cart_text' , 'custom_woocommerce_product_add_to_cart_text' );
function custom_woocommerce_product_add_to_cart_text() {
    global $product;
$product_type = $product->product_type;
switch ( $product_type ) {
case 'variable':
return __( '', 'woocommerce' );
break;
}
}
add_action('woocommerce_before_shop_loop_item_title','woocommerce_template_loop_rating', 15 );
//
//add_action('woocommerce_before_shop_loop_item_title', 'get_star_rating' );
function get_star_rating()
{
    global $woocommerce, $product;
    $average = $product->get_average_rating();
    if($average > 0) {
        echo '<div class="star-rating"><span style="width:' . (($average / 5) * 100) . '%"><strong itemprop="ratingValue" class="rating">' . $average . '</strong> ' . __('out of 5', 'woocommerce') . '</span></div>';
    }elseif($average == 0){
    echo '<div class="star-rating"><span style="width:' . (($average / 5) * 100) . '%"><strong itemprop="ratingValue" class="rating">' . $average . '</strong> ' . __('out of 5', 'woocommerce') . '</span></div>';
}
}
add_filter( 'woocommerce_product_get_rating_html', 'loop_product_get_rating_html', 20, 3 );
function loop_product_get_rating_html( $html, $rating, $count ){
    if ( 0 < $rating && ! is_product() ) {
        global $product;
        $rating_count = $product->get_rating_count();
        $rating_cnt = array_sum($product->get_rating_counts());
        //$count_html = ' <div class="count-rating">' . $rating_cnt .'</div>';

        $html       = '<div class="container-rating"><div class="star-rating">';
        $html      .= wc_get_star_rating_html( $rating, $count );
        $html      .= '</div></div>';
    }else{
        $html       = '<div class="container-rating"><div class="empty-stars star-rating">';
        //$html      .= '<img src="'.get_stylesheet_directory_uri().'/images/star-grey.png">';
        //$html      .= '<img src="'.get_stylesheet_directory_uri().'/images/star-grey.png">';
        //$html      .= '<img src="'.get_stylesheet_directory_uri().'/images/star-grey.png">';
        //$html      .= '<img src="'.get_stylesheet_directory_uri().'/images/star-grey.png">';
        //$html      .= '<img src="'.get_stylesheet_directory_uri().'/images/star-grey.png">';
        $html      .= '</div></div>';
    }
    return $html;
}
//add_action( 'woocommerce_before_shop_loop_item_title', 'empty_stars', 5 );
function empty_stars() {
    global $product;
    if ( get_option( 'woocommerce_enable_review_rating' ) === 'no' || $product->post->comment_status === 'closed' ) {
        return;
    }
    else {
        $rating_count = $product->get_rating_count();
        $review_count = $product->get_review_count();
        $average      = $product->get_average_rating();

        if ( $rating_count === 0 ) : ?>
            <div class="woocommerce-product-rating" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                <div class="empty star-rating" title="<?php printf( __( 'Rated %s out of 5', 'woocommerce' ), $average ); ?>">
                    <span style="width:<?php echo ( ( $average / 5 ) * 100 ); ?>%">
                        <strong itemprop="ratingValue" class="rating"><?php echo esc_html( $average ); ?></strong> <?php printf( __( 'out of %s5%s', 'woocommerce' ), '<span itemprop="bestRating">', '</span>' ); ?>
                        <?php //printf( _n( 'based on %s customer rating', 'based on %s customer ratings', $rating_count, 'woocommerce' ), '<span itemprop="ratingCount" class="rating">' . $rating_count . '</span>' ); ?>
                    </span>
                </div>
<!--                --><?php //if ( comments_open() ) : ?><!--<a href="#reviews" class="woocommerce-review-link" rel="nofollow"> --><?php //esc_html_e( 'There are no reviews yet', 'woocommerce' ); ?><!--</a>--><?php //endif ?>
            </div>
        <?php endif;
    }
}
remove_action( 'woocommerce_after_shop_loop_item_title', 'woocommerce_template_loop_rating', 5 );
