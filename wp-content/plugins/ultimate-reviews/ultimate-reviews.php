<?php
/*
Plugin Name: Ultimate Reviews
Plugin URI: http://www.EtoileWebDesign.com/plugins/ultimate-reviews/
Description: Reviews plugin to let visitors submit reviews and display them via shortcode or widget. Replace WooCommerce reviews and ratings. Require login, etc.
Author: Etoile Web Design
Author URI: http://www.EtoileWebDesign.com/plugins/ultimate-reviews/
Terms and Conditions: http://www.etoilewebdesign.com/plugin-terms-and-conditions/
Text Domain: ultimate-reviews
Version: 3.0.8
WC requires at least: 3.0
WC tested up to: 5.2
*/

if ( ! defined( 'ABSPATH' ) )
	exit;

if ( ! class_exists( 'ewdurpInit' ) ) {
class ewdurpInit {

	/**
	 * Initialize the plugin and register hooks
	 */
	public function __construct() {

		self::constants();
		self::includes();
		self::instantiate();
		self::wp_hooks();
	}

	/**
	 * Define plugin constants.
	 *
	 * @since  3.0.0
	 * @access protected
	 * @return void
	 */
	protected function constants() {

		define( 'EWD_URP_PLUGIN_DIR', untrailingslashit( plugin_dir_path( __FILE__ ) ) );
		define( 'EWD_URP_PLUGIN_URL', untrailingslashit( plugin_dir_url( __FILE__ ) ) );
		define( 'EWD_URP_PLUGIN_FNAME', plugin_basename( __FILE__ ) );
		define( 'EWD_URP_TEMPLATE_DIR', 'ewd-urp-templates' );
		define( 'EWD_URP_VERSION', '3.0.0' );

		define( 'EWD_URP_REVIEW_POST_TYPE', 'urp_review' );
		define( 'EWD_URP_REVIEW_CATEGORY_TAXONOMY', 'urp-review-category' );
	}

	/**
	 * Include necessary classes.
	 *
	 * @since  3.0.0
	 * @access protected
	 * @return void
	 */
	protected function includes() {

		require_once( EWD_URP_PLUGIN_DIR . '/includes/Ajax.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Blocks.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/CustomPostTypes.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Dashboard.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/DeactivationSurvey.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Export.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Import.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/InstallationWalkthrough.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Notifications.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Permissions.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Query.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Review.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/ReviewAsk.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Settings.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/template-functions.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/Widgets.class.php' );
		require_once( EWD_URP_PLUGIN_DIR . '/includes/WooCommerce.class.php' );
	}

	/**
	 * Spin up instances of our plugin classes.
	 *
	 * @since  3.0.0
	 * @access protected
	 * @return void
	 */
	protected function instantiate() {

		new ewdurpDashboard();
		new ewdurpDeactivationSurvey();
		new ewdurpInstallationWalkthrough();
		new ewdurpReviewAsk();

		$this->cpts 		= new ewdurpCustomPostTypes();
		$this->permissions 	= new ewdurpPermissions();
		$this->settings 	= new ewdurpSettings(); 
		$this->woocommerce 	= new ewdurpWooCommerce();

		new ewdurpAJAX();
		new ewdurpBlocks();
		new ewdurpExport();
		new ewdurpImport();
		new ewdurpNotifications();
		new ewdurpWidgetManager();
	}

	/**
	 * Run walk-through, load assets, add links to plugin listing, etc.
	 *
	 * @since  3.0.0
	 * @access protected
	 * @return void
	 */
	protected function wp_hooks() {

		register_activation_hook( __FILE__, 	array( $this, 'run_walkthrough' ) );
		register_activation_hook( __FILE__, 	array( $this, 'convert_options' ) );

		add_filter( 'the_content', 				array( $this, 'alter_review_content' ) );
		add_filter( 'the_author', 				array( $this, 'alter_review_author' ) );

		add_action( 'init',			        	array( $this, 'load_view_files' ) );

		add_action( 'plugins_loaded',        	array( $this, 'load_textdomain' ) );

		add_action( 'admin_notices', 			array( $this, 'display_header_area' ) );

		add_action( 'admin_enqueue_scripts', 	array( $this, 'enqueue_admin_assets' ), 10, 1 );
		add_action( 'wp_enqueue_scripts', 		array( $this, 'register_assets' ) );
		add_action( 'wp_head',					'ewd_add_frontend_ajax_url' );

		add_filter( 'plugin_action_links',		array( $this, 'plugin_action_links' ), 10, 2);
	}

	/**
	 * Run the options conversion function on update if necessary
	 *
	 * @since  3.0.0
	 * @access protected
	 * @return void
	 */
	public function convert_options() {
		
		require_once( EWD_URP_PLUGIN_DIR . '/includes/BackwardsCompatibility.class.php' );
		new ewdurpBackwardsCompatibility();
	}

	/**
	 * Load files needed for views
	 * @since 3.0.0
	 * @note Can be filtered to add new classes as needed
	 */
	public function load_view_files() {
	
		$files = array(
			EWD_URP_PLUGIN_DIR . '/views/Base.class.php' // This will load all default classes
		);
	
		$files = apply_filters( 'ewd_urp_load_view_files', $files );
	
		foreach( $files as $file ) {
			require_once( $file );
		}
	
	}

	/**
	 * Load the plugin textdomain for localisation
	 * @since 3.0.0
	 */
	public function load_textdomain() {
		
		load_plugin_textdomain( 'ultimate-reviews', false, plugin_basename( dirname( __FILE__ ) ) . '/languages/' );
	}

	/**
	 * Set a transient so that the walk-through gets run
	 * @since 3.0.0
	 */
	public function run_walkthrough() {

		set_transient( 'ewd-urp-getting-started', true, 30 );
	} 

	/**
	 * Enqueue the admin-only CSS and Javascript
	 * @since 3.0.0
	 */
	public function enqueue_admin_assets( $hook ) {
		global $post;

		$post_type = is_object( $post ) ?  $post->post_type : '';

		$screen = get_current_screen();

   		// Return if not urp_review post_type, we're not on a post-type page, or we're not on the settings or widget pages
   		if ( ( $post_type != EWD_URP_REVIEW_POST_TYPE or ( $hook != 'edit.php' and $hook != 'post-new.php' and $hook != 'post.php' ) ) and $hook != 'urp_review_page_ewd-urp-settings' and $hook != 'urp_review_page_ewd-urp-import' and $hook != 'urp_review_page_ewd-urp-export' and $hook != 'widgets.php' and $screen->id != 'edit-urp-review-category' ) { return; }

		wp_enqueue_style( 'ewd-urp-admin-css', EWD_URP_PLUGIN_URL . '/assets/css/ewd-urp-admin.css', array(), EWD_URP_VERSION );
		wp_enqueue_script( 'ewd-urp-admin-js', EWD_URP_PLUGIN_URL . '/assets/js/ewd-urp-admin.js', array( 'jquery' ), EWD_URP_VERSION, true );

		$settings = array(
			'ewd_uwpm_display' => get_option( 'EWD_URP_UWPM_Ask_Time' ) < time() ? true : false
		);

		wp_localize_script( 'ewd-urp-admin-js', 'ewd_urp_admin_php_data', $settings );
	}

	/**
	 * Register the front-end CSS and Javascript for the slider
	 * @since 3.0.0
	 */
	function register_assets() {
		global $ewd_urp_controller;

		wp_enqueue_style( 'ewd-urp-css', EWD_URP_PLUGIN_URL . '/assets/css/ewd-urp.css', EWD_URP_VERSION );

		wp_enqueue_style( 'dashicons' );

		wp_enqueue_script( 'jquery-ui-core' );
		wp_enqueue_script( 'jquery-ui-autocomplete' );
		wp_enqueue_script( 'jquery-ui-slider' );

		wp_enqueue_script( 'ewd-urp-masonry-js', EWD_URP_PLUGIN_URL . '/assets/js/masonry.pkgd.min.js', array( 'jquery' ), EWD_URP_VERSION, true );
		
		wp_register_script( 'ewd-urp-js', EWD_URP_PLUGIN_URL . '/assets/js/ewd-urp.js', array( 'jquery', 'jquery-ui-core', 'jquery-ui-autocomplete', 'jquery-ui-slider' ), EWD_URP_VERSION, true );

		$data_array = array(	
			'maximum_score' 				=> $ewd_urp_controller->settings->get_setting( 'maximum-score' ),
			'review_character_limit' 		=> $ewd_urp_controller->settings->get_setting( 'review-character-limit' ),
			'flag_inappropriate_enabled' 	=> $ewd_urp_controller->settings->get_setting( 'flag-inappropriate' ),
			'autocomplete_product_names'	=> $ewd_urp_controller->settings->get_setting( 'autocomplete-product-names' ),
			'restrict_product_names'		=> $ewd_urp_controller->settings->get_setting( 'restrict-product-names' ),
			'review_format'					=> $ewd_urp_controller->settings->get_setting( 'review_format' )
		);

		wp_localize_script( 'ewd-urp-js', 'ewd_urp_php_data', $data_array );
		wp_enqueue_script( 'ewd-urp-js' );
	
		wp_register_script( 'ewd-urp-pie-graph-js', EWD_URP_PLUGIN_URL . '/assets/js/ewd-urp-pie-graph.js', array( 'jquery'), EWD_URP_VERSION, true );
		$maximum_score = $ewd_urp_controller->settings->get_setting( 'maximum-score' );
		$circle_graph_background_color = $ewd_urp_controller->settings->get_setting( 'styling-circle-graph-background-color' );
		$circle_graph_fill_color = $ewd_urp_controller->settings->get_setting( 'styling-circle-graph-fill-color' );
		$pie_data_array = array(
			'maximum_score' => $maximum_score,
			'circle_graph_background_color' => $circle_graph_background_color,
			'circle_graph_fill_color' => $circle_graph_fill_color
		);
		wp_localize_script( 'ewd-urp-pie-graph-js', 'ewd_urp_pie_data', $pie_data_array );
		wp_enqueue_script( 'ewd-urp-pie-graph-js' );
	
		wp_enqueue_script( 'jquery-ui-datepicker', array( 'jquery' ) );
		wp_enqueue_script( 'ewd-urp-jquery-datepicker', EWD_URP_PLUGIN_URL . '/assets/js/ewd-urp-datepicker.js', array( 'jquery', 'jquery-ui-datepicker' ), EWD_URP_VERSION, true );
	}

	/**
	 * Add links to the plugin listing on the installed plugins page
	 * @since 3.0.0
	 */
	public function plugin_action_links( $links, $plugin ) {

		if ( $plugin == EWD_URP_PLUGIN_FNAME ) {

			$links['settings'] = '<a href="admin.php?page=ewd-urp-settings" title="' . __( 'Head to the settings page for Ultimate Reviews', 'ultimate-reviews' ) . '">' . __( 'Settings', 'ultimate-reviews' ) . '</a>';
		}

		return $links;

	}

	/**
	 * Replace the content of the single review page with the review shortcode
	 * @since 3.0.0
	 */
	public function alter_review_content( $content ) {
		global $post, $ewd_urp_controller;

		if ( $post->post_type != 'urp_review' ) { return $content; }

		if ( ! empty( $ewd_urp_controller->shortcode_printing ) ) { return $content; }

		$content = do_shortcode( '[select-review review_id="' . $post->ID . '"]' );

		return $content;
	}

	/**
	 * Replace the author of a single review with the review author name
	 * @since 3.0.0
	 */
	public function alter_review_author( $author ) {
		global $post;

		if ( $post->post_type != 'urp_review' ) { return $author; }

		$author = get_post_meta($post->ID, 'EWD_URP_Post_Author', true);

		return $author;
	}

	/**
	 * Adds in a menu bar for the plugin
	 * @since 3.0.0
	 */
	public function display_header_area() {
		global $ewd_urp_controller;

		$screen = get_current_screen();
		
		if ( empty( $screen->parent_file ) or $screen->parent_file != 'edit.php?post_type=urp_review' ) { return; }
		
		if ( ! $ewd_urp_controller->permissions->check_permission( 'styling' ) or get_option( 'EWD_URP_Trial_Happening' ) == 'Yes' ) {
			?>
			<div class="ewd-urp-dashboard-new-upgrade-banner">
				<div class="ewd-urp-dashboard-banner-icon"></div>
				<div class="ewd-urp-dashboard-banner-buttons">
					<a class="ewd-urp-dashboard-new-upgrade-button" href="https://www.etoilewebdesign.com/license-payment/?Selected=URP&Quantity=1" target="_blank">UPGRADE NOW</a>
				</div>
				<div class="ewd-urp-dashboard-banner-text">
					<div class="ewd-urp-dashboard-banner-title">
						GET FULL ACCESS WITH OUR PREMIUM VERSION
					</div>
					<div class="ewd-urp-dashboard-banner-brief">
						WooCommerce Integration, Advanced styling options, Advanced control options and more!
					</div>
				</div>
			</div>
			<?php
		}
		
		?>
		<div class="ewd-urp-admin-header-menu">
			<h2 class="nav-tab-wrapper">
			<a id="ewd-urp-dash-mobile-menu-open" href="#" class="menu-tab nav-tab"><?php _e("MENU", 'ultimate-reviews'); ?><span id="ewd-urp-dash-mobile-menu-down-caret">&nbsp;&nbsp;&#9660;</span><span id="ewd-urp-dash-mobile-menu-up-caret">&nbsp;&nbsp;&#9650;</span></a>
			<a id="dashboard-menu" href='admin.php?page=ewd-urp-dashboard' class="menu-tab nav-tab <?php if ( $screen->id == 'urp_review_ewd-urp-dashboard' ) {echo 'nav-tab-active';}?>"><?php _e("Dashboard", 'ultimate-reviews'); ?></a>
			<?php if ( $ewd_urp_controller->settings->get_setting( 'admin-approval' ) ) { ?>
				<a id="approved-reviews-menu" href='edit.php?post_type=urp_review&post_status=publish' class="menu-tab nav-tab <?php if ( $screen->id == 'edit-urp_review' and ( ! isset( $_GET['post_status'] ) or $_GET['post_status'] == 'publish' ) ) {echo 'nav-tab-active';}?>"><?php _e("Approved Reviews", 'ultimate-reviews'); ?></a>
				<a id="awaiting-approval-reviews-menu" href='edit.php?post_type=urp_review&post_status=draft' class="menu-tab nav-tab <?php if ( $screen->id == 'edit-urp_review' and ( isset( $_GET['post_status'] ) and $_GET['post_status'] == 'draft' ) ) {echo 'nav-tab-active';}?>"><?php _e("Awaiting Approval", 'ultimate-reviews'); ?></a>
			<?php } else { ?>
				<a id="reviews-menu" href='edit.php?post_type=urp_review' class="menu-tab nav-tab <?php if ( $screen->id == 'edit-urp_review' ) {echo 'nav-tab-active';}?>"><?php _e("Reviews", 'ultimate-reviews'); ?></a>
			<?php } ?>
			<a id="categories-menu" href='edit-tags.php?taxonomy=urp-review-category&post_type=urp_review' class="menu-tab nav-tab <?php if ( $screen->id == 'edit-urp-review-category' ) {echo 'nav-tab-active';}?>"><?php _e("Categories", 'ultimate-reviews'); ?></a>
			<a id="import-menu" href='edit.php?post_type=urp_review&page=ewd-urp-import' class="menu-tab nav-tab <?php if ( $screen->id == 'urp_review_page_ewd-urp-import' ) {echo 'nav-tab-active';}?>"><?php _e("Import", 'ultimate-reviews'); ?></a>
			<a id="export-menu" href='edit.php?post_type=urp_review&page=ewd-urp-export' class="menu-tab nav-tab <?php if ( $screen->id == 'urp_review_page_ewd-urp-export' ) {echo 'nav-tab-active';}?>"><?php _e("Export", 'ultimate-reviews'); ?></a>
			<a id="options-menu" href='edit.php?post_type=urp_review&page=ewd-urp-settings' class="menu-tab nav-tab <?php if ( $screen->id == 'urp_review_page_ewd-urp-settings' ) {echo 'nav-tab-active';}?>"><?php _e("Settings", 'ultimate-reviews'); ?></a>
			</h2>
		</div>
		<?php
	}

}
} // endif;

global $ewd_urp_controller;
$ewd_urp_controller = new ewdurpInit();

