<?php
if ( ! defined( 'ABSPATH' ) ) exit;

if ( ! class_exists( 'ewdurpSettings' ) ) {
/**
 * Class to handle configurable settings for Ultimate Reviews
 * @since 3.0.0
 */
class ewdurpSettings {

	/**
	 * Default values for settings
	 * @since 3.0.0
	 */
	public $defaults = array();

	/**
	 * Stored values for settings
	 * @since 3.0.0
	 */
	public $settings = array();

	public function __construct() {

		add_action( 'init', array( $this, 'set_defaults' ) );

		add_action( 'init', array( $this, 'load_settings_panel' ) );
	}

	/**
	 * Load the plugin's default settings
	 * @since 3.0.0
	 */
	public function set_defaults() {

		$this->defaults = array(

			'maximum-score'				=> 5,
			'review-style'				=> 'points',
			'review-score-input'		=> 'stars',
			'product-name-input-type'	=> 'text',
			'reviews-per-page'			=> 100,
			'pagination-location'		=> 'top',

			'review-format'				=> 'standard',
			'summary-statistics'		=> 'none',
			'thumbnail-characters'		=> 140,

			'woocommerce-review-types'	=> 'default',
			'display-related-reviews'	=> 0,

			'group-by-product-order'	=> 'asc',
			'ordering-type'				=> 'date',
			'order-direction'			=> 'asc',

			'reviews-skin'				=> 'basic',
			'indepth-layout'			=> 'regular',
			'read-more-style'			=> 'standardlink',

			'review-filtering'			=> '',
			'login-options'				=> '',
			'review-elements'			=> $this->get_default_review_elements(),
			'product-names-array'		=> '',
			'reminders-array'			=> '',
			'email-messages-array'		=> '',
			'items-reviewed'			=> 'Product'
		);

		$this->defaults = apply_filters( 'ewd_urp_defaults', $this->defaults );
	}

	/**
	 * Get a setting's value or fallback to a default if one exists
	 * @since 3.0.0
	 */
	public function get_setting( $setting ) { 

		if ( empty( $this->settings ) ) {
			$this->settings = get_option( 'ewd-urp-settings' );
		}
		
		if ( isset( $this->settings[ $setting ] ) ) {
			return apply_filters( 'ewd-urp-settings-' . $setting, $this->settings[ $setting ] );
		}

		if ( ! empty( $this->defaults[ $setting ] ) or isset( $this->defaults[ $setting ] ) ) {
			return apply_filters( 'ewd-urp-settings-' . $setting, $this->defaults[ $setting ] );
		}

		return apply_filters( 'ewd-urp-settings-' . $setting, null );
	}

	/**
	 * Set a setting to a particular value
	 * @since 3.0.0
	 */
	public function set_setting( $setting, $value ) {

		$this->settings[ $setting ] = $value;
	}

	/**
	 * Save all settings, to be used with set_setting
	 * @since 3.0.0
	 */
	public function save_settings() {
		
		update_option( 'ewd-urp-settings', $this->settings );
	}

	/**
	 * Load the admin settings page
	 * @since 3.0.0
	 * @sa https://github.com/NateWr/simple-admin-pages
	 */
	public function load_settings_panel() {
		global $ewd_urp_controller;

		require_once( EWD_URP_PLUGIN_DIR . '/lib/simple-admin-pages/simple-admin-pages.php' );
		$sap = sap_initialize_library(
			$args = array(
				'version'       => '2.4.1',
				'lib_url'       => EWD_URP_PLUGIN_URL . '/lib/simple-admin-pages/',
			)
		);

		$sap->add_page(
			'submenu',
			array(
				'id'            => 'ewd-urp-settings',
				'title'         => __( 'Settings', 'ultimate-reviews' ),
				'menu_title'    => __( 'Settings', 'ultimate-reviews' ),
				'parent_menu'	=> 'edit.php?post_type=urp_review',
				'description'   => '',
				'capability'    => 'manage_options',
				'default_tab'   => 'ewd-urp-basic-tab',
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-basic-tab',
				'title'         => __( 'Basic', 'ultimate-reviews' ),
				'is_tab'		=> true,
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-general',
				'title'         => __( 'General', 'ultimate-reviews' ),
				'tab'	        => 'ewd-urp-basic-tab',
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'warningtip',
			array(
				'id'			=> 'shortcodes-reminder',
				'title'			=> __( 'REMINDER:', 'ultimate-reviews' ),
				'placeholder'	=> __( 'To display reviews, place the [ultimate-reviews] shortcode on a page' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'warningtip',
			array(
				'id'			=> 'shortcodes-reminder-2',
				'title'			=> __( 'REMINDER:', 'ultimate-reviews' ),
				'placeholder'	=> __( 'To allow visitors to submit reviews, place the [submit-review] shortcode on a page' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'textarea',
			array(
				'id'			=> 'custom-css',
				'title'			=> __( 'Custom CSS', 'ultimate-reviews' ),
				'description'	=> __( 'You can add custom CSS styles to your reviews in the box above.', 'ultimate-reviews' ),			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'text',
			array(
				'id'            => 'maximum-score',
				'title'         => __( 'Maximum Review Score', 'ultimate-reviews' ),
				'description'	=> __( 'What should the maximum score be on the review form? Common values are 100 for the \'percentage\' review style, and 5 or 10 for the other styles.', 'ultimate-reviews' ),
				'small'			=> true,
				'placeholder'	=> $this->defaults['maximum-score']
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'radio',
			array(
				'id'			=> 'review-style',
				'title'			=> __( 'Review Style', 'ultimate-reviews' ),
				'description'	=> __( 'What style should the submit-review form use to collect reviews?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['review-style'],
				'options'		=> array(
					'points'		=> __( 'Points', 'ultimate-reviews' ),
					'percentage'	=> __( 'Percentage', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'radio',
			array(
				'id'			=> 'review-score-input',
				'title'			=> __( 'Review Score Input', 'ultimate-reviews' ),
				'description'	=> __( 'What type of input should be used for review scores in the submit-review shortcode?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['review-score-input'],
				'options'		=> array(
					'text'			=> __( 'Text', 'ultimate-reviews' ),
					'select'		=> __( 'Select', 'ultimate-reviews' ),
					'stars'			=> __( 'Stars', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'toggle',
			array(
				'id'			=> 'review-image',
				'title'			=> __( 'Review Image', 'ultimate-reviews' ),
				'description'	=> __( 'Should there be a field for the reviewer to upload an image of what they\'re reviewing?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'toggle',
			array(
				'id'			=> 'review-video',
				'title'			=> __( 'Review Video', 'ultimate-reviews' ),
				'description'	=> __( 'Should there be a field for the reviewer to embed a video with their review from an external site (YouTube, Vimeo, etc.)?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'toggle',
			array(
				'id'			=> 'review-category',
				'title'			=> __( 'Review Category', 'ultimate-reviews' ),
				'description'	=> __( 'Should the reviewer be able to select a category for their review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'checkbox',
			array(
				'id'			=> 'review-filtering',
				'title'			=> __( 'Review Filtering', 'ultimate-reviews' ),
				'description'	=> __( 'Should visitors be able to filter reviews by product name, score or review author?', 'ultimate-reviews' ),
				'options'		=> array(
					'score' 		=> 'Review Score',
					'name' 			=> 'Product Name',
					'author'		=> 'Review Author'
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-general',
			'toggle',
			array(
				'id'			=> 'show-tinymce',
				'title'			=> __( 'Shortcode Builder', 'ultimate-reviews' ),
				'description'	=> __( 'Should a shortcode builder be added to the tinyMCE toolbar in the page editor?', 'ultimate-reviews' )
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-functionality',
				'title'         => __( 'Functionality', 'ultimate-reviews' ),
				'tab'	        => 'ewd-urp-basic-tab',
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'toggle',
			array(
				'id'			=> 'submit-review-toggle',
				'title'			=> __( 'Submit Review Toggle', 'ultimate-reviews' ),
				'description'	=> __( 'Should the submit review form be hidden until a button is clicked to show it?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'toggle',
			array(
				'id'			=> 'autocomplete-product-names',
				'title'			=> __( 'Autocomplete Product Names', 'ultimate-reviews' ),
				'description'	=> __( 'Should the names of the available products display in an auto-complete box when a visitor starts typing? Products need to be entered in the list below or UPCP Integration has to be turned on for this to work.', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'toggle',
			array(
				'id'			=> 'link-to-post',
				'title'			=> __( 'Link To Post', 'ultimate-reviews' ),
				'description'	=> __( 'Should the review title link to the single post page for the review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'toggle',
			array(
				'id'			=> 'flag-inappropriate',
				'title'			=> __( 'Flag Inappropriate Content', 'ultimate-reviews' ),
				'description'	=> __( 'Should visitors be able to flag content as inappropriate, so that admins can then review it?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'toggle',
			array(
				'id'			=> 'author-click-filter',
				'title'			=> __( 'Review Author Links', 'ultimate-reviews' ),
				'description'	=> __( 'Should the author\'s name be clickable, so that visitors can see other reviews by the same author?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'toggle',
			array(
				'id'			=> 'review-comments',
				'title'			=> __( 'Allow Review Comments', 'ultimate-reviews' ),
				'description'	=> __( 'Should comments be allowed, if the "Allow Comments" box for individual reviews is selected from the edit review screen?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'text',
			array(
				'id'            => 'review-character-limit',
				'title'         => __( 'Review Character Limit', 'ultimate-reviews' ),
				'description'	=> __( 'What should be the limit on the number of characters in a review? Leave blank for unlimited characters.', 'ultimate-reviews' ),
				'small'			=> true
			)
		);

		$emails = array();
		if ( is_plugin_active( 'ultimate-wp-mail/Main.php' ) ) {

			$email_posts = get_posts( array( 'post_type' => 'uwpm_mail_template', 'posts_per_page' => -1 ) );
			foreach ( $email_posts as $email_post ) { $emails[$email_post->ID ] = $email_post->post_title; }
		}

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-functionality',
			'select',
			array(
				'id'            => 'email-on-submission',
				'title'         => __( 'Submission Thank You Email', 'ultimate-reviews' ),
				'description'   => 'You can use the <a href="https://wordpress.org/plugins/ultimate-wp-mail/">Ultimate WP Mail plugin</a> to create a custom email that is sent whenever a review is submitted.',
				'blank_option'	=> false,
				'options'       => $emails
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-products-for-review',
				'title'         => __( 'Products Available for Review', 'ultimate-reviews' ),
				'tab'	        => 'ewd-urp-basic-tab',
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-products-for-review',
			'toggle',
			array(
				'id'			=> 'restrict-product-names',
				'title'			=> __( 'Restrict Product Names', 'ultimate-reviews' ),
				'description'	=> __( 'Should the names of the products be restricted to only those specified?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-products-for-review',
			'radio',
			array(
				'id'			=> 'product-name-input-type',
				'title'			=> __( 'Product Name Input Type', 'ultimate-reviews' ),
				'description'	=> __( 'Should the product name input be a text field or a dropdown (select) field? (Dropdown only works if UPCP integration is turned on or "Products List" is filled in below)', 'ultimate-reviews' ),
				'default'		=> $this->defaults['product-name-input-type'],
				'options'		=> array(
					'text'			=> __( 'Text', 'ultimate-reviews' ),
					'dropdown'		=> __( 'Dropdown', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-products-for-review',
			'toggle',
			array(
				'id'			=> 'upcp-integration',
				'title'			=> __( 'UPCP Integration', 'ultimate-reviews' ),
				'description'	=> __( 'Should the product names be taken from the Ultimate Product Catalogue Plugin if the names are being restricted or the product name input type is set to "Dropdown"? (Ultimate Product Catalogue plugin needs to be installed to work correctly)', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-products-for-review',
			'infinite_table',
			array(
				'id'			=> 'product-names-array',
				'title'			=> __( 'Product List', 'ultimate-reviews' ),
				'add_label'		=> __( '&plus; ADD', 'ultimate-reviews' ),
				'del_label'		=> __( 'Delete', 'ultimate-reviews' ),
				'description'	=> __( 'If UPCP integration is set to "No", and the product names are restricted or the input type is set to "Dropdown", the list of products above will be used to restrict the possible product names.', 'ultimate-reviews' ),
				'fields'		=> array(
					'name' => array(
						'type' 		=> 'text',
						'label' 	=> 'Product Name',
						'required' 	=> true
					)
				)
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-display-and-layout',
				'title'         => __( 'Display and Layout', 'ultimate-reviews' ),
				'tab'	        => 'ewd-urp-basic-tab',
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-display-and-layout',
			'toggle',
			array(
				'id'			=> 'display-author',
				'title'			=> __( 'Display Author Name', 'ultimate-reviews' ),
				'description'	=> __( 'Should the author\'s name be posted with the review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-display-and-layout',
			'toggle',
			array(
				'id'			=> 'display-date',
				'title'			=> __( 'Display Date Submitted', 'ultimate-reviews' ),
				'description'	=> __( 'Should the date the review was submitted be posted with the review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-display-and-layout',
			'toggle',
			array(
				'id'			=> 'display-time',
				'title'			=> __( 'Display Time Submitted', 'ultimate-reviews' ),
				'description'	=> __( 'Should the time the review was submitted be posted with the review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-display-and-layout',
			'toggle',
			array(
				'id'			=> 'display-categories',
				'title'			=> __( 'Display Categories', 'ultimate-reviews' ),
				'description'	=> __( 'Should the review\'s categories be posted with the review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-display-and-layout',
			'text',
			array(
				'id'            => 'reviews-per-page',
				'title'         => __( 'Reviews Per Page', 'ultimate-reviews' ),
				'description'	=> __( 'Set the maximum number of reviews that should be displayed at one time.', 'ultimate-reviews' ),
				'small'			=> true,
				'placeholder'	=> $this->defaults['reviews-per-page']
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-display-and-layout',
			'radio',
			array(
				'id'			=> 'pagination-location',
				'title'			=> __( 'Pagination Location', 'ultimate-reviews' ),
				'description'	=> __( 'Where should the pagination controls be located, if there are more reviews than the maximum per page?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['pagination-location'],
				'options'		=> array(
					'top'			=> __( 'Top', 'ultimate-reviews' ),
					'bottom'		=> __( 'Bottom', 'ultimate-reviews' ),
					'both'			=> __( 'Both', 'ultimate-reviews' ),
				)
			)
		);

		if ( ! $ewd_urp_controller->permissions->check_permission( 'premium' ) ) {
			$ewd_urp_premium_permissions = array(
				'disabled'		=> true,
				'disabled_image'=> '#',
				'purchase_link'	=> 'https://www.etoilewebdesign.com/plugins/ultimate-reviews/'
			);
		}
		else { $ewd_urp_premium_permissions = array(); }

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-premium-tab',
				'title'         => __( 'Premium', 'ultimate-reviews' ),
				'is_tab'		=> true,
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
				'id'            => 'ewd-urp-premium-general',
				'title'         => __( 'General', 'ultimate-reviews' ),
				'tab'	        => 'ewd-urp-premium-tab',
				),
				$ewd_urp_premium_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'radio',
			array(
				'id'			=> 'review-format',
				'title'			=> __( 'Review Format', 'ultimate-reviews' ),
				'description'	=> '',
				'default'		=> $this->defaults['review-format'],
				'options'		=> array(
					'standard'			=> __( 'Standard', 'ultimate-reviews' ),
					'expandable'		=> __( 'Expandable', 'ultimate-reviews' ),
					'thumbnail'			=> __( 'Thumbnail', 'ultimate-reviews' ),
					'thumbnail_masonry'	=> __( 'Thumbnail Masonry', 'ultimate-reviews' ),
					'image'				=> __( 'Image', 'ultimate-reviews' ),
					'image_masonry'		=> __( 'Image Masonry', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'toggle',
			array(
				'id'			=> 'use-captcha',
				'title'			=> __( 'Captcha', 'ultimate-reviews' ),
				'description'	=> __( 'Should Captcha be added to the submit review form to prevent spamming? (requires image-creation support for your PHP installation)', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'toggle',
			array(
				'id'			=> 'review-karma',
				'title'			=> __( 'Review Karma', 'ultimate-reviews' ),
				'description'	=> __( 'Should visitors be allowed to vote up or down reviews that they find or don\'t find useful? ("Did you find this review helpful?") Uses cookies to make it more difficult to vote up or down multiple times.', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'toggle',
			array(
				'id'			=> 'infinite-scroll',
				'title'			=> __( 'Infinite Scroll', 'ultimate-reviews' ),
				'description'	=> __( 'If there are more than the maximum number of reviews per page displayed, should the next page of reviews be loaded automatically by AJAX so that the page doesn\'t need to be reloaded? This may not work if you also have a review widget displaying on the same page.', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'toggle',
			array(
				'id'			=> 'display-microdata',
				'title'			=> __( 'Include Microdata', 'ultimate-reviews' ),
				'description'	=> __( 'Should microdata be added to the reviews when they\'re displayed? Microdata helps search engine to display your reviews in a more helpful format <a href="http://www.htmlgoodies.com/html5/Web-Developer-Tutorial-HTML5-Microdata-3920016.htm#fbid=UWk0EObAqCE">Find out more</a>).', 'ultimate-reviews' )
			)
		);

		$microdata_types = array(
			'Book' 					=> 'Book',
			'Course' 				=> 'Course',
			'CreativeWorkSeason' 	=> 'Creative Work - Season',
			'CreativeWorkSeries' 	=> 'Creative Work - Series',
			'Episode' 				=> 'Episode',
			'Event' 				=> 'Event',
			'Game' 					=> 'Game',
			'HowTo' 				=> 'How To',
			'LocalBusiness' 		=> 'Local Business',
			'MediaObject' 			=> 'Media Object',
			'Movie' 				=> 'Movie',
			'MusicPlaylist' 		=> 'Music Playlist',
			'MusicRecording' 		=> 'Music Recording',
			'Organization' 			=> 'Organization',
			'Product' 				=> 'Product',
			'Recipe' 				=> 'Recipe',
			'SoftwareApplication' 	=> 'Software Application'
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'select',
			array(
				'id'            => 'items-reviewed',
				'title'         => __( 'Items Reviewed', 'ultimate-reviews' ),
				'description'   => __( 'For microdata to work correctly, the type of items being reviewed needs to be specified.', 'ultimate-reviews' ),
				'default'		=> $this->defaults['items-reviewed'],
				'blank_option'	=> false,
				'options'       => $microdata_types
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'toggle',
			array(
				'id'			=> 'admin-notification',
				'title'			=> __( 'Admin Notification Email', 'ultimate-reviews' ),
				'description'	=> __( 'Should an email be sent to the WordPress admin?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-general',
			'text',
			array(
				'id'            => 'admin-email-address',
				'title'         => __( 'Admin Email Address', 'ultimate-reviews' ),
				'description'	=> __( 'The email address admin notifications should be sent to, if "Admin Notification Email" is enabled. Leave blank to use the default WordPress admin email.', 'ultimate-reviews' )
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-premium-display',
					'title'         => __( 'Display Features', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-premium-tab',
				),
				$ewd_urp_premium_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-display',
			'radio',
			array(
				'id'			=> 'summary-statistics',
				'title'			=> __( 'Summary Statistics', 'ultimate-reviews' ),
				'description'	=> __( 'Should a summary of the reviews be displayed at the top (average score, etc.)? This feature may not work as expected with in-depth reviews and/or pagination.', 'ultimate-reviews' ),
				'default'		=> $this->defaults['summary-statistics'],
				'options'		=> array(
					'full'			=> __( 'Full', 'ultimate-reviews' ),
					'limited'		=> __( 'Limited', 'ultimate-reviews' ),
					'none'			=> __( 'None', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-display',
			'toggle',
			array(
				'id'			=> 'summary-clickable',
				'title'			=> __( 'Clickable Summary Stats', 'ultimate-reviews' ),
				'description'	=> __( 'Should visitors be able to click on the summary statistic bars ("Summary Statistics" must be set to "Full") to view all reviews with that score?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-display',
			'text',
			array(
				'id'            => 'thumbnail-characters',
				'title'         => __( 'Thumbnail Characters', 'ultimate-reviews' ),
				'description'	=> __( 'What is the maximum number of characters that should be shown in the preview in thumbnail format?', 'ultimate-reviews' ),
				'small'			=> true,
				'placeholder'	=> $this->defaults['thumbnail-characters']
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-display',
			'toggle',
			array(
				'id'			=> 'read-more-ajax',
				'title'			=> __( 'Thumbnail \'Read More\' AJAX', 'ultimate-reviews' ),
				'description'	=> __( 'If you have selected the "Thumbnail" format, should the content be loaded on the same page when clicking "Read More"?', 'ultimate-reviews' )
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-premium-restrictions',
					'title'         => __( 'Restrictions', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-premium-tab',
				),
				$ewd_urp_premium_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'toggle',
			array(
				'id'			=> 'admin-approval',
				'title'			=> __( 'Require Admin Approval', 'ultimate-reviews' ),
				'description'	=> __( 'Should new reviews have their status set to \'draft\' until an admin decides to publish them?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'toggle',
			array(
				'id'			=> 'require-email',
				'title'			=> __( 'Require Author Email', 'ultimate-reviews' ),
				'description'	=> __( 'Do reviewers have to include their email address (not publicly displayed) when they post a review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'toggle',
			array(
				'id'			=> 'email-confirmation',
				'title'			=> __( 'Require Email Confirmation', 'ultimate-reviews' ),
				'description'	=> __( 'Do reviewers have to confirm their email address before their review is displayed?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'toggle',
			array(
				'id'			=> 'display-on-confirmation',
				'title'			=> __( 'Display Form on Confirmation', 'ultimate-reviews' ),
				'description'	=> __( 'Should the submit review form be displayed when someone is confirming their email address?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'toggle',
			array(
				'id'			=> 'one-review-per-product-person',
				'title'			=> __( 'One Review per Person/Product', 'ultimate-reviews' ),
				'description'	=> __( 'Should users be restricted to leaving one review per product? Uses cookies to track which products a user has reviewed.', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'textarea',
			array(
				'id'			=> 'review-blacklist',
				'title'			=> __( 'Review Blacklist', 'ultimate-reviews' ),
				'description'	=> __( 'Enter terms, one per line, that you should block reviews from being submitted. This can include IP addresses that you want to block, review titles, author names, email addresses, etc.', 'ultimate-reviews' ),			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'toggle',
			array(
				'id'			=> 'require-login',
				'title'			=> __( 'Require Login', 'ultimate-reviews' ),
				'description'	=> __( 'Do reviewers have to log in before they can post a review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-premium-restrictions',
			'text',
			array(
				'id'            => 'wordpress-login-url',
				'title'         => __( 'WordPress Login URL', 'ultimate-reviews' ),
				'description'	=> __( 'The URL of your WordPress login page.', 'ultimate-reviews' )
			)
		);

		if ( ! $ewd_urp_controller->permissions->check_permission( 'woocommerce' ) ) {
			$ewd_urp_woocommerce_permissions = array(
				'disabled'		=> true,
				'disabled_image'=> '#',
				'purchase_link'	=> 'https://www.etoilewebdesign.com/plugins/ultimate-reviews/'
			);
		}
		else { $ewd_urp_woocommerce_permissions = array(); }

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-woocommerce-tab',
				'title'         => __( 'WooCommerce', 'ultimate-reviews' ),
				'is_tab'		=> true,
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-woocommerce-general',
					'title'         => __( 'WooCommerce Settings', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-woocommerce-tab',
				),
				$ewd_urp_woocommerce_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-general',
			'toggle',
			array(
				'id'			=> 'replace-woocommerce-reviews',
				'title'			=> __( 'Replace WooCommerce Reviews', 'ultimate-reviews' ),
				'description'	=> __( 'Should the "Reviews" tab on the WooCommerce product page use Ultimate Reviews instead of the default WooCommerce system?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-general',
			'toggle',
			array(
				'id'			=> 'woocommerce-review-submit-first',
				'title'			=> __( 'Submit Review on Top', 'ultimate-reviews' ),
				'description'	=> __( 'Should the "Submit Review" form be displayed above a product\'s reviews in WooCommerce?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-general',
			'toggle',
			array(
				'id'			=> 'only-woocommerce-products',
				'title'			=> __( 'Only Review WooCommerce Products', 'ultimate-reviews' ),
				'description'	=> __( 'Should visitors only be able to leave reviews for WooCommerce products, and no other products? Set "Product Name Input Type" in the "Basic" tab to "Dropdown" for this to work correctly', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-general',
			'radio',
			array(
				'id'            => 'woocommerce-review-types',
				'title'         => __( 'WooCommerce Review Types', 'ultimate-reviews' ),
				'description'   => __( 'How should WooCommerce reviews be organized?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['woocommerce-review-types'],
				'options'       => array(
					'default'		=> __( 'Default', 'ultimate-reviews' ),
					'date'			=> __( 'Most recent reviews', 'ultimate-reviews' ),
					'rating'		=> __( 'Top reviews', 'ultimate-reviews' ),
					'karma'			=> __( 'Most voted reviews ("Review Karma" in "Premium" options must be set to "Yes")', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-general',
			'toggle',
			array(
				'id'			=> 'override-woocommerce-ratings-display',
				'title'			=> __( 'Override Product Page Ratings', 'ultimate-reviews' ),
				'description'	=> __( 'Should the ratings area under the product name on the WooCommerce product page use the ratings from our plugin, instead of those from the default WooCommerce reviews?', 'ultimate-reviews' )
			)
		);

		// $sap->add_setting(
		// 	'ewd-urp-settings',
		// 	'ewd-urp-woocommerce-general',
		// 	'toggle',
		// 	array(
		// 		'id'			=> 'verified-buyer-badge',
		// 		'title'			=> __( 'Verified Buyer Badge', 'ultimate-reviews' ),
		// 		'description'	=> __( 'Enable to display a "Verified Buyer" badge on reviews. (Requires that "Verified Buyers Only" be enabled.)', 'ultimate-reviews' )
		// 	)
		// );

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-general',
			'toggle',
			array(
				'id'			=> 'match-woocommerce-categories',
				'title'			=> __( 'Match WooCommerce Categories', 'ultimate-reviews' ),
				'description'	=> __( 'Should review categories match the product categories in WooCommerce, and automatically attach a product\'s categories to reviews of that product? This will override the category selected by the review author if enabled.', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-general',
			'text',
			array(
				'id'            => 'woocommerce-category-product-reviews',
				'title'         => __( 'Display Related Reviews', 'ultimate-reviews' ),
				'description'	=> __( 'Display reviews for other products in the same category (or categories) if there are less than the number of reviews above. Use 0 to never display reviews for other products.', 'ultimate-reviews' ),
				'small'			=> true,
				'placeholder'	=> $this->defaults['display-related-reviews']
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-woocommerce-review-reminders',
					'title'         => __( 'Review Reminder Emails', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-woocommerce-tab',
				),
				$ewd_urp_woocommerce_permissions
			)
		);

		$review_reminders_description = '<ul><li>';
		$review_reminders_description .= __( 'Create as many reminders as you\'d like using the table above.', 'ultimate-reviews' );
		$review_reminders_description .= '</li><li>';
		$review_reminders_description .= __( 'Reminder Interval and Unit combine to set the amount of time after an order has been set to the selected status before a reminder to review is sent out.', 'ultimate-reviews' );
		$review_reminders_description .= '</li><li>';
		$review_reminders_description .= __( 'Reminders can be stopped for a specific order by going to the WooCommerce "Orders" tab and unselecting the "Send Reminders" checkbox.', 'ultimate-reviews' );
		$review_reminders_description .= '</li><li>';
		$review_reminders_description .= __( 'Alternatively, reminders will automatically stop if "Review Codes" are required for your site, and the code for a specific order is used.', 'ultimate-reviews' );
		$review_reminders_description .= '</li></ul>';

		$filtered_emails_array = array();
		foreach ( ewd_urp_decode_infinite_table_setting( $this->get_setting( 'email-messages-array' ) ) as $email_message ) { $filtered_emails_array[ $email_message->id ] = $email_message->subject; }

		$reminder_intervals = array( 'immediate' => 'Immediate' );
		for ( $i = 1; $i < 24; $i++ ) { $reminder_intervals[$i] = $i; }

		$woocommerce_statuses =	function_exists( 'wc_get_order_statuses' ) ? wc_get_order_statuses() : array();

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-review-reminders',
			'infinite_table',
			array(
				'id'			=> 'reminders-array',
				'title'			=> __( 'Review Reminders', 'ultimate-reviews' ),
				'add_label'		=> __( '&plus; ADD', 'ultimate-reviews' ),
				'del_label'		=> __( 'Delete', 'ultimate-reviews' ),
				'description'	=> $review_reminders_description,
				'fields'		=> array(
					'id' => array(
						'type' 		=> 'text',
						'label' 	=> 'Reminder ID',
						'required' 	=> true
					),
					'email-to-send' => array(
						'type' 		=> 'select',
						'label'		=> 'Email to Send',
						'required'	=> true,
						'options' 	=> $filtered_emails_array
					),
					'reminder-interval' => array(
						'type' 		=> 'select',
						'label'		=> 'Reminder Interval',
						'required'	=> true,
						'options' 	=> $reminder_intervals
					),
					'reminder-unit' => array(
						'type' 		=> 'select',
						'label'		=> 'Reminder Unit',
						'required'	=> true,
						'options' 	=> array(
							'hours'		=> __( 'Hours', 'ultimate-reviews' ),
							'days'		=> __( 'Days', 'ultimate-reviews' ),
							'weeks'		=> __( 'Weeks', 'ultimate-reviews' ),
						)
					),
					'status' => array(
						'type' 		=> 'select',
						'label'		=> 'Status',
						'required'	=> true,
						'options' 	=> $woocommerce_statuses
					),
				)
			)
		);

		$email_messages_description = '<ul><li>';
		$email_messages_description .= __( 'What should be in the messages sent to users?', 'ultimate-reviews' );
		$email_messages_description .= '</li><li>';
		$email_messages_description .= __( 'You can use [section]...[/section] and [footer]...[/footer] to split up the content of your email. You can also include a link button, like so: [button link=\'LINK_URL_GOES_HERE\']BUTTON_TEXT[/button], and a link to review each individual item in an order with:[review-items link=\'LINK_URL_TO_SUBMIT_REVIEW_PAGE\']', 'ultimate-reviews' );
		$email_messages_description .= '</li><li>';
		$email_messages_description .= __( 'You can also put [purchase-date] or into the message body or subject, to put in the date of the purchase or the review code for the purchase, respectively.', 'ultimate-reviews' );
		$email_messages_description .= '</li><li>';
		$email_messages_description .= __( 'Use the area below to send yourself a sample email.', 'ultimate-reviews' );
		$email_messages_description .= '</li></ul>';

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-review-reminders',
			'infinite_table',
			array(
				'id'			=> 'email-messages-array',
				'title'			=> __( 'Email Messages', 'ultimate-reviews' ),
				'add_label'		=> __( '&plus; ADD', 'ultimate-reviews' ),
				'del_label'		=> __( 'Delete', 'ultimate-reviews' ),
				'description'	=> $email_messages_description,
				'fields'		=> array(
					'id' => array(
						'type' 		=> 'text',
						'label' 	=> 'Message ID',
						'required' 	=> true
					),
					'subject' => array(
						'type' 		=> 'text',
						'label' 	=> __( 'Message Subject', 'ultimate-reviews' ),
						'required' 	=> true
					),
					'message' => array(
						'type' 		=> 'text',
						'label' 	=> __( 'Message', 'ultimate-reviews' ),
						'required' 	=> true
					)
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-review-reminders',
			'select',
			array(
				'id'            => 'send-sample-email-message',
				'title'         => __( 'Sample Email Message', 'ultimate-reviews' ),
				'description'	=> __( 'Choose an email message to send as a sample.', 'ultimate-reviews' ),
				'blank_option'	=> false,
				'options'       => $filtered_emails_array
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-review-reminders',
			'text',
			array(
				'id'            => 'send-sample-email-address',
				'title'         => __( 'Sample Email Address', 'ultimate-reviews' ),
				'description'	=> __( 'Choose an email address to send the above sample email message to. Make sure that you click the "Save Changes" button below before sending the test message, to receive the most recent version of your email.' )
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-woocommerce-reminder-email-styling',
					'title'         => __( 'WooCommerce Settings', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-woocommerce-tab',
				),
				$ewd_urp_woocommerce_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-reminder-email-styling',
			'colorpicker',
			array(
				'id'			=> 'styling-email-background-color',
				'title'			=> __( 'Email Background Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-reminder-email-styling',
			'colorpicker',
			array(
				'id'			=> 'styling-email-inner-color',
				'title'			=> __( 'Email Inner Background Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-reminder-email-styling',
			'colorpicker',
			array(
				'id'			=> 'styling-email-text-color',
				'title'			=> __( 'Email Text Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-reminder-email-styling',
			'colorpicker',
			array(
				'id'			=> 'styling-email-button-background-color',
				'title'			=> __( 'Button Background Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-reminder-email-styling',
			'colorpicker',
			array(
				'id'			=> 'styling-email-button-text-color',
				'title'			=> __( 'Button Text Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-reminder-email-styling',
			'colorpicker',
			array(
				'id'			=> 'styling-email-button-bg-hover-color',
				'title'			=> __( 'Button Hover Background Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-woocommerce-reminder-email-styling',
			'colorpicker',
			array(
				'id'			=> 'styling-email-button-text-hover-color',
				'title'			=> __( 'Button Hover Text Color', 'ultimate-reviews' )
			)
		);

		if ( ! $ewd_urp_controller->permissions->check_permission( 'elements' ) ) {
			$ewd_urp_elements_permissions = array(
				'disabled'		=> true,
				'disabled_image'=> '#',
				'purchase_link'	=> 'https://www.etoilewebdesign.com/plugins/ultimate-reviews/'
			);
		}
		else { $ewd_urp_elements_permissions = array(); }

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-elements-tab',
				'title'         => __( 'Elements', 'ultimate-reviews' ),
				'is_tab'		=> true,
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-elements-general',
					'title'         => __( 'Review Element Options', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-elements-tab',
				),
				$ewd_urp_elements_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-elements-general',
			'toggle',
			array(
				'id'			=> 'indepth-reviews',
				'title'			=> __( 'In-Depth Reviews', 'ultimate-reviews' ),
				'description'	=> __( 'Should the reviews have multiple parts (set in the table below) rather than just an overall score?', 'ultimate-reviews' )
			)
		);

		$review_elements_description = '<ul><li>';
		$review_elements_description .= __( 'Use the table above to add fields to your submit review form (requires that in-depth reviews be enabled).', 'ultimate-reviews' );
		$review_elements_description .= '</li><li>';
		$review_elements_description .= __( 'You can drag and drop the elements in the table to arrange the order in which they will appear.', 'ultimate-reviews' );
		$review_elements_description .= '</li><li>';
		$review_elements_description .= __( 'The "Review Line" field type will add a new in-depth category that visitors can rate and that will count towards the overall score (ex: Appearance, Value, etc.).', 'ultimate-reviews' );
		$review_elements_description .= '</li><li>';
		$review_elements_description .= __( 'For the "Radio" and "Checkbox" field types, supply a comma-separated list of your desired input values in the "Options" column.', 'ultimate-reviews' );
		$review_elements_description .= '</li></ul>';

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-elements-general',
			'infinite_table',
			array(
				'id'			=> 'review-elements',
				'title'			=> __( 'Review Elements', 'ultimate-reviews' ),
				'add_label'		=> __( '&plus; ADD', 'ultimate-reviews' ),
				'del_label'		=> __( 'Delete', 'ultimate-reviews' ),
				'description'	=> $review_elements_description,
				'fields'		=> array(
					'name' => array(
						'type' 		=> 'text',
						'label' 	=> __( 'Field Name', 'ultimate-reviews' ),
						'required' 	=> true
					),
					'required' => array(
						'type' 		=> 'select',
						'label'		=> __( 'Required', 'ultimate-reviews' ),
						'required'	=> true,
						'options' 	=> array(
							0 			=> 'No',
							1 			=> 'Yes'
						)
					),
					'explanation' => array(
						'type' 		=> 'select',
						'label'		=> __( 'Explanation Allowed', 'ultimate-reviews' ),
						'required'	=> true,
						'options' 	=> array(
							1 			=> 'Yes',
							0 			=> 'No'
						)
					),
					'type' => array(
						'type' 		=> 'select',
						'label'		=> __( 'Type', 'ultimate-reviews' ),
						'required'	=> true,
						'options' 	=> array(
							'default' 		=> __( 'Default Field', 'ultimate-reviews' ),
							'reviewitem' 	=> __( 'Review Line', 'ultimate-reviews' ),
							'text' 			=> __( 'Text Box', 'ultimate-reviews' ),
							'textarea' 		=> __( 'Text Area', 'ultimate-reviews' ),
							'dropdown' 		=> __( 'Dropdown', 'ultimate-reviews' ),
							'checkbox'		=> __( 'Checkbox', 'ultimate-reviews' ),
							'radio'			=> __( 'Radio', 'ultimate-reviews' ),
							'date' 			=> __( 'Date', 'ultimate-reviews' ),
							'datetime'		=> __( 'Date/Time', 'ultimate-reviews' ),
						)
					),
					'options' => array(
						'type' 		=> 'text',
						'label' 	=> __( 'Options', 'ultimate-reviews' ),
						'required' 	=> false
					),
				)
			)
		);

		if ( ! $ewd_urp_controller->permissions->check_permission( 'ordering' ) ) {
			$ewd_urp_ordering_permissions = array(
				'disabled'		=> true,
				'disabled_image'=> '#',
				'purchase_link'	=> 'https://www.etoilewebdesign.com/plugins/ultimate-reviews/'
			);
		}
		else { $ewd_urp_ordering_permissions = array(); }

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-ordering-tab',
				'title'         => __( 'Ordering', 'ultimate-reviews' ),
				'is_tab'		=> true,
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-ordering-general',
					'title'         => __( 'Order Options', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-ordering-tab',
				),
				$ewd_urp_ordering_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-ordering-general',
			'toggle',
			array(
				'id'			=> 'group-by-product',
				'title'			=> __( 'Group By Product', 'ultimate-reviews' ),
				'description'	=> __( 'If the product_name attribute is left blank, should the reviews be grouped by the product they review?', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-ordering-general',
			'radio',
			array(
				'id'			=> 'group-by-product-order',
				'title'			=> __( 'Group By Product Direction', 'ultimate-reviews' ),
				'description'	=> __( 'If reviews are grouped by product name, should they be grouped in ascending or descending order?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['group-by-product-order'],
				'options'		=> array(
					'asc'			=> __( 'Ascending', 'ultimate-reviews' ),
					'desc'			=> __( 'Descending', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-ordering-general',
			'radio',
			array(
				'id'			=> 'ordering-type',
				'title'			=> __( 'Ordering Type', 'ultimate-reviews' ),
				'description'	=> __( 'What type of ordering should be used for the reviews?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['ordering-type'],
				'options'		=> array(
					'date'			=> __( 'Submitted Date', 'ultimate-reviews' ),
					'karma'			=> __( 'Review Karma (Not possible if grouping by product name)', 'ultimate-reviews' ),
					'rating'		=> __( 'Rating (Not possible if grouping by product name)', 'ultimate-reviews' ),
					'title'			=> __( 'Review Title', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-ordering-general',
			'radio',
			array(
				'id'			=> 'order-direction',
				'title'			=> __( 'Order Direction', 'ultimate-reviews' ),
				'description'	=> __( 'Should the ordering be ascending or descending?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['order-direction'],
				'options'		=> array(
					'asc'			=> __( 'Ascending', 'ultimate-reviews' ),
					'desc'			=> __( 'Descending', 'ultimate-reviews' ),
				)
			)
		);

		if ( ! $ewd_urp_controller->permissions->check_permission( 'labelling' ) ) {
			$ewd_urp_labelling_permissions = array(
				'disabled'		=> true,
				'disabled_image'=> '#',
				'purchase_link'	=> 'https://www.etoilewebdesign.com/plugins/ultimate-reviews/'
			);
		}
		else { $ewd_urp_labelling_permissions = array(); }

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-labelling-tab',
				'title'         => __( 'Labelling', 'ultimate-reviews' ),
				'is_tab'		=> true,
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-labelling-review-content',
					'title'         => __( 'Review Content', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-labelling-tab',
				),
				$ewd_urp_labelling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-posted',
				'title'         => __( 'Posted', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-by',
				'title'         => __( 'By', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-on',
				'title'         => __( 'On', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-score',
				'title'         => __( 'Score', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-explanation',
				'title'         => __( 'Explanation', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-review-for',
				'title'         => __( 'Review for', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-categories',
				'title'         => __( 'Categories', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-review-content',
			'text',
			array(
				'id'            => 'label-verified-buyers',
				'title'         => __( 'Verified Buyer', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-labelling-filtering-area',
					'title'         => __( 'Filtering Area', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-labelling-tab',
				),
				$ewd_urp_labelling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-filtering-area',
			'text',
			array(
				'id'            => 'label-filter-button',
				'title'         => __( 'Filter (button)', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-filtering-area',
			'text',
			array(
				'id'            => 'label-filter-product-name',
				'title'         => __( 'Product Name', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-filtering-area',
			'text',
			array(
				'id'            => 'label-filter-all',
				'title'         => __( 'All', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-filtering-area',
			'text',
			array(
				'id'            => 'label-filter-review-score',
				'title'         => __( 'Review Score', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-filtering-area',
			'text',
			array(
				'id'            => 'label-filter-review-author',
				'title'         => __( 'Review Author', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-labelling-submit-reviews',
					'title'         => __( 'Submit Reviews', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-labelling-tab',
				),
				$ewd_urp_labelling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-product',
				'title'         => __( 'Product Name', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-author',
				'title'         => __( 'Review Author', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-author-comment',
				'title'         => __( 'Author \'Comment\'', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-title',
				'title'         => __( 'Review Title', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-title-comment',
				'title'         => __( 'Title \'Comment\'', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-score',
				'title'         => __( 'Overall Score', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-review',
				'title'         => __( 'Review', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-element-score',
				'title'         => __( 'Element \'Score\'', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-explanation',
				'title'         => __( 'Category \'Explanation\'', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-button',
				'title'         => __( '\'Send Review\' Button', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-reviewer-email-address',
				'title'         => __( 'Reviewer\'s Email Address', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-reviewer-email-address-desc',
				'title'         => __( 'Email Address Instructions', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-submit-reviews',
			'text',
			array(
				'id'            => 'label-submit-image-numbe',
				'title'         => __( 'Image Number', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-labelling-reviews-summary',
					'title'         => __( 'Reviews Summary', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-labelling-tab',
				),
				$ewd_urp_labelling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-reviews-summary',
			'text',
			array(
				'id'            => 'label-summary-average-score',
				'title'         => __( 'Average Score', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-reviews-summary',
			'text',
			array(
				'id'            => 'label-summary-ratings',
				'title'         => __( 'Ratings', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-labelling-messages',
					'title'         => __( 'Messages', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-labelling-tab',
				),
				$ewd_urp_labelling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-messages',
			'text',
			array(
				'id'            => 'label-submit-success-message',
				'title'         => __( 'Submit Success Message', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-labelling-messages',
			'text',
			array(
				'id'            => 'label-submit-draft-message',
				'title'         => __( 'Submit Draft Add On Message', 'ultimate-reviews' ),
				'description'	=> ''
			)
		);

		if ( ! $ewd_urp_controller->permissions->check_permission( 'styling' ) ) {
			$ewd_urp_styling_permissions = array(
				'disabled'		=> true,
				'disabled_image'=> '#',
				'purchase_link'	=> 'https://www.etoilewebdesign.com/plugins/ultimate-reviews/'
			);
		}
		else { $ewd_urp_styling_permissions = array(); }

		$sap->add_section(
			'ewd-urp-settings',
			array(
				'id'            => 'ewd-urp-styling-tab',
				'title'         => __( 'Styling', 'ultimate-reviews' ),
				'is_tab'		=> true,
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-styling-general',
					'title'         => __( 'General', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-styling-tab',
				),
				$ewd_urp_styling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-general',
			'toggle',
			array(
				'id'			=> 'disable-numerical-score',
				'title'			=> __( 'Disable Score Display', 'ultimate-reviews' ),
				'description'	=> __( 'Should the numerical review score be hidden?', 'ultimate-reviews' ),
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-general',
			'radio',
			array(
				'id'			=> 'reviews-skin',
				'title'			=> __( 'Review Skin Style', 'ultimate-reviews' ),
				'description'	=> __( 'What styling skin should the reviews use?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['reviews-skin'],
				'options'		=> array(
					'basic'			=> __( 'None', 'ultimate-reviews' ),
					'simplestars'	=> __( 'Simple Stars', 'ultimate-reviews' ),
					'thumbs'		=> __( 'Thumbs', 'ultimate-reviews' ),
					'hearts'		=> __( 'Hearts', 'ultimate-reviews' ),
					'simplebar'		=> __( 'Simple Bar', 'ultimate-reviews' ),
					'colorbar'		=> __( 'Color Bar', 'ultimate-reviews' ),
					'circle'		=> __( 'Small Circle Graph', 'ultimate-reviews' ),
					'textcircle'	=> __( 'Circle Graph with Score', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-general',
			'toggle',
			array(
				'id'			=> 'review-group-separating-line',
				'title'			=> __( 'Review Group Separating Line', 'ultimate-reviews' ),
				'description'	=> __( 'Add a separating line between each group of reviews (must have "Group By Product" enabled).', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-general',
			'radio',
			array(
				'id'			=> 'indepth-layout',
				'title'			=> __( 'In-Depth Review Categories Layout', 'ultimate-reviews' ),
				'description'	=> __( 'Choose a layout for the display of the different categories when in-depth reviews are enabled.', 'ultimate-reviews' ),
				'default'		=> $this->defaults['indepth-layout'],
				'options'		=> array(
					'regular'		=> __( 'Regular', 'ultimate-reviews' ),
					'alternating'	=> __( 'Alternating Background Color', 'ultimate-reviews' ),
				)
			)
		);

			$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-general',
			'radio',
			array(
				'id'			=> 'read-more-style',
				'title'			=> __( '"Read More" Style', 'ultimate-reviews' ),
				'description'	=> __( 'In the thumbnail review format, should the "read more" text be a standard link or a button?', 'ultimate-reviews' ),
				'default'		=> $this->defaults['read-more-style'],
				'options'		=> array(
					'standardlink'	=> __( 'Standard Link', 'ultimate-reviews' ),
					'button'		=> __( 'Button', 'ultimate-reviews' ),
				)
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-styling-premium-content',
					'title'         => __( 'Premium Content Styling', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-styling-tab',
				),
				$ewd_urp_styling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'colorpicker',
			array(
				'id'			=> 'styling-review-title-font-color',
				'title'			=> __( 'Review Title Text Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-title-font',
				'title'         => __( 'Review Title Font Family', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-title-font-size',
				'title'         => __( 'Review Title Font Size', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-title-margin',
				'title'         => __( 'Review Title Margin', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-title-padding',
				'title'         => __( 'Review Title Padding', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'colorpicker',
			array(
				'id'			=> 'styling-review-content-font-color',
				'title'			=> __( 'Review Content Text Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-content-font',
				'title'         => __( 'Review Content Font Family', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-content-font-size',
				'title'         => __( 'Review Content Font Size', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-content-margin',
				'title'         => __( 'Review Content Margin', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-content-padding',
				'title'         => __( 'Review Content Padding', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'colorpicker',
			array(
				'id'			=> 'styling-review-date-font-color',
				'title'			=> __( 'Review Meta Text Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-date-font',
				'title'         => __( 'Review Meta Font Family', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-date-font-size',
				'title'         => __( 'Review Meta Font Size', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-date-margin',
				'title'         => __( 'Review Meta Margin', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-date-padding',
				'title'         => __( 'Review Meta Padding', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'colorpicker',
			array(
				'id'			=> 'styling-review-score-font-color',
				'title'			=> __( 'Review Score Text Color', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-score-font',
				'title'         => __( 'Review Score Font Family', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-score-font-size',
				'title'         => __( 'Review Score Font Size', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-score-margin',
				'title'         => __( 'Review Score Margin', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-content',
			'text',
			array(
				'id'            => 'styling-review-score-padding',
				'title'         => __( 'Review Score Padding', 'ultimate-reviews' ),
				'description'	=> '',
				'small'			=> true
			)
		);

		$sap->add_section(
			'ewd-urp-settings',
			array_merge(
				array(
					'id'            => 'ewd-urp-styling-premium-colors',
					'title'         => __( 'Premium Color Selection', 'ultimate-reviews' ),
					'tab'	        => 'ewd-urp-styling-tab',
				),
				$ewd_urp_styling_permissions
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-summary-stats-color',
				'title'			=> __( 'Summary Statistics', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-simple-bar-color',
				'title'			=> __( 'Simple Bar', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-color-bar-high',
				'title'			=> __( 'Color Bar - High', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-color-bar-medium',
				'title'			=> __( 'Color Bar - Medium', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-color-bar-low',
				'title'			=> __( 'Color Bar - Low', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-review-background-color',
				'title'			=> __( 'Review Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-review-header-background-color',
				'title'			=> __( 'Header Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-review-content-background-color',
				'title'			=> __( 'Content Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-readmore-button-background-color',
				'title'			=> __( 'Read More Button Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-readmore-button-text-color',
				'title'			=> __( 'Read More Button Text', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-readmore-button-hover-bg-color',
				'title'			=> __( 'Read More Button Hover Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-readmore-button-hover-text-color',
				'title'			=> __( 'Read More Button Hover Text', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-image-style-background-color',
				'title'			=> __( 'Image Style Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-circle-graph-background-color',
				'title'			=> __( 'Circle Graph Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-circle-graph-fill-color',
				'title'			=> __( 'Circle Graph Fill', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-rating-stars-color',
				'title'			=> __( 'Rating Stars', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-verified-checkmark-bg-color',
				'title'			=> __( 'Verified Buyer Badge Background', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-verified-checkmark-color',
				'title'			=> __( 'Verified Buyer Badge Checkmark', 'ultimate-reviews' )
			)
		);

		$sap->add_setting(
			'ewd-urp-settings',
			'ewd-urp-styling-premium-colors',
			'colorpicker',
			array(
				'id'			=> 'styling-verified-checkmark-text-color',
				'title'			=> __( 'Verified Buyer Badge Text', 'ultimate-reviews' )
			)
		);

		$sap = apply_filters( 'ewd_urp_settings_page', $sap );

		$sap->add_admin_menus();

	}

	/**
	 * Returns the default review element fields
	 *
	 * @since 3.0.0
	 */
	public function get_default_review_elements() {

		$review_elements = array(
			(object) array( 
				'name' 			=> 'Product Name (if applicable)',
			 	'required' 		=> 'yes',
			 	'explanation' 	=> 'no',
			 	'type' 			=> 'default',
			 	'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Review Author',
				'required' 		=> 'no',
				'explanation' 	=> 'no',
				'type' 			=> 'default',
				'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Reviewer Email (if applicable)',
				'required' 		=> 'no',
				'explanation' 	=> 'no',
				'type' 			=> 'default',
				'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Review Title',
				'required' 		=> 'yes',
				'explanation' 	=> 'no',
				'type' 			=> 'default',
				'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Review Image (if applicable)',
				'required' 		=> 'no',
				'explanation' 	=> 'no',
				'type' 			=> 'default',
				'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Review Video (if applicable)', 
				'required' 		=> 'no', 
				'explanation' 	=> 'no', 
				'type' 			=> 'default',
				'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Review',
				'required' 		=> 'yes',
				'explanation' 	=> 'no',
				'type' 			=> 'default',
				'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Overall Score',
				'required' 		=> 'yes',
				'explanation' 	=> 'no',
				'type' 			=> 'default',
				'options' 		=> ''
			),
			(object) array( 
				'name' 			=> 'Review Category (if applicable)',
				'required' 		=> 'no',
				'explanation' 	=> 'no',
				'type' 			=> 'default',
				'options' 		=> ''
			)
		);

		return $review_elements;
	}

	/**
	 * Returns the review elements that should be displayed
	 *
	 * @since 3.0.0
	 */
	public function get_review_elements() {
		
		if ( $this->get_setting( 'indepth-reviews' ) ) {
			return ewd_urp_decode_infinite_table_setting( $this->get_setting( 'review-elements' ) );
		}

		return $this->get_default_review_elements();
	}

}
} // endif;
