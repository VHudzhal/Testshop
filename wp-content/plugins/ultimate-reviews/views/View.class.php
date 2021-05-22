<?php

/**
 * Base class for any view requested on the front end.
 *
 * @since 3.0.0
 */
class ewdurpView extends ewdurpBase {

	/**
	 * Post type to render
	 */
	public $post_type = null;

	/**
	 * Map types of content to the template which will render them
	 */
	public $content_map = array(
		'title'							 => 'content/title',
	);

	/**
	 * Initialize the class
	 * @since 3.0.0
	 */
	public function __construct( $args ) {

		// Parse the values passed
		$this->parse_args( $args );
		
		// Filter the content map so addons can customize what and how content
		// is output. Filters are specific to each view, so for this base view
		// you would use the filter 'us_content_map_ewdurpView'
		$this->content_map = apply_filters( 'ewd_urp_content_map_' . get_class( $this ), $this->content_map );

	}

	/**
	 * Render the view and enqueue required stylesheets
	 *
	 * @note This function should always be overridden by an extending class
	 * @since 3.0.0
	 */
	public function render() {

		$this->set_error(
			array( 
				'type'		=> 'render() called on wrong class'
			)
		);
	}

	/**
	 * Load a template file for views
	 *
	 * First, it looks in the current theme's /ewd-urp-templates/ directory. Then it
	 * will check a parent theme's /ewd-urp-templates/ directory. If nothing is found
	 * there, it will retrieve the template from the plugin directory.

	 * @since 3.0.0
	 * @param string template Type of template to load (eg - reviews, review)
	 */
	function find_template( $template ) {

		$this->template_dirs = array(
			get_stylesheet_directory() . '/' . EWD_URP_TEMPLATE_DIR . '/',
			get_template_directory() . '/' . EWD_URP_TEMPLATE_DIR . '/',
			EWD_URP_PLUGIN_DIR . '/' . EWD_URP_TEMPLATE_DIR . '/'
		);
		
		$this->template_dirs = apply_filters( 'ewd_urp_template_directories', $this->template_dirs );

		foreach ( $this->template_dirs as $dir ) {
			if ( file_exists( $dir . $template . '.php' ) ) {
				return $dir . $template . '.php';
			}
		}

		return false;
	}

	/**
	 * Enqueue stylesheets
	 */
	public function enqueue_assets() {

		//enqueue assets here
	}

	public function get_option( $option_name ) {
		global $ewd_urp_controller;

		return ! empty( $this->$option_name ) ? $this->$option_name : $ewd_urp_controller->settings->get_setting( $option_name );
	}

	public function get_label( $label_name ) {
		global $ewd_urp_controller;

		if ( empty( $this->label_defaults ) ) { $this->set_label_defaults(); }

		return ! empty( $ewd_urp_controller->settings->get_setting( $label_name ) ) ? $ewd_urp_controller->settings->get_setting( $label_name ) : $this->label_defaults[ $label_name ];
	}

	public function set_label_defaults() {

		$this->label_defaults = array(
			'label-reviews'								=> __( 'reviews', 'ultimate-reviews' ),
			'label-posted'								=> __( 'Posted', 'ultimate-reviews'),
			'label-by'									=> __( 'by', 'ultimate-reviews'),
			'label-on'									=> __( 'on', 'ultimate-reviews'),
			'label-score'								=> __( 'Score', 'ultimate-reviews'),
			'label-explanation'							=> __( 'Explanation', 'ultimate-reviews'),
			'label-submit-product'						=> __( 'Product Name', 'ultimate-reviews'),
			'label-submit-author'						=> __( 'Review Author', 'ultimate-reviews'),
			'label-submit-author-comment'				=> __( 'What name should be displayed with your review?', 'ultimate-reviews'),
			'label-submit-title'						=> __( 'Review Title', 'ultimate-reviews'),
			'label-submit-title-comment'				=> __( 'What title should be displayed with your review?', 'ultimate-reviews'),
			'label-submit-score'						=> __( 'Overall Score', 'ultimate-reviews'),
			'label-submit-review'						=> __( 'Review', 'ultimate-reviews'),
			'label-submit-element-score'				=> __( 'Score', 'ultimate-reviews'),
			'label-submit-explanation'					=> __( 'Explanation', 'ultimate-reviews'),
			'label-submit-button'						=> __( 'Send Review', 'ultimate-reviews'),
			'label-submit-success-message'				=> __( 'Thank you for submitting a review.', 'ultimate-reviews'),
			'label-submit-draft-message'				=> __( 'Your review will be visible once it\'s approved by an administrator.', 'ultimate-reviews'),
			'label-review-for'							=> __( 'Review for', 'ultimate-reviews' ),
			'label-reviews-for'							=> __( 'Reviews for', 'ultimate-reviews' ),
			'label-categories'							=> __( 'Categories', 'ultimate-reviews'),
			'label-verified-buyers'						=> __( 'Verified Buyer', 'ultimate-reviews'),
			'label-filter-button'						=> __( 'Filter', 'ultimate-reviews' ),
			'label-filter-product-name'					=> __( 'Product Name', 'ultimate-reviews' ),
			'label-filter-all'							=> __( 'All', 'ultimate-reviews' ),
			'label-filter-review-score'					=> __( 'Review Score', 'ultimate-reviews'),
			'label-filter-review-author'				=> __( 'Review Author', 'ultimate-reviews'),
			'label-search-reviews'						=> __( 'Search Reviews', 'ultimate-reviews'),
			'label-submit-reviewer-email-address'		=> __( 'Reviewer\'s Email Address', 'ultimate-reviews'),
			'label-submit-reviewer-email-address-desc'	=> __( 'Please confirm your email to verify your identity. It will not be displayed.', 'ultimate-reviews'),
			'label-submit-image-number'					=> __( 'Image Number', 'ultimate-reviews'),
			'label-summary-average-score'				=> __( 'Average Score', 'ultimate-reviews'),
			'label-summary-ratings'						=> __( 'ratings', 'ultimate-reviews'),
		);
	}

	public function add_custom_styling() {
		global $ewd_urp_controller;

		echo '<style>';
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-title-font' ) != '' ) { echo '.ewd-urp-review-title { font-family: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-title-font' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-title-font-size' ) != '' ) { echo '.ewd-urp-review-title { font-size: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-title-font-size' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-title-font-color' ) != '' ) { echo '.ewd-urp-review-title { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-title-font-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-title-margin' ) != '' ) { echo '.ewd-urp-review-title { margin: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-title-margin' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-title-padding' ) != '' ) { echo '.ewd-urp-review-title { padding: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-title-padding' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-content-font' ) != '' ) { echo '.ewd-urp-review-body { font-family: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-content-padding' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-content-font-size' ) != '' ) { echo '.ewd-urp-review-body { font-size: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-content-font-size' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-content-font-color' ) != '' ) { echo '.ewd-urp-review-body { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-content-font-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-content-margin' ) != '' ) { echo '.ewd-urp-review-body { margin: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-content-margin' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-content-padding' ) != '' ) { echo '.ewd-urp-review-body { padding: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-content-padding' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-date-font' ) != '' ) { echo '.ewd-urp-author-date-categories { font-family: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-date-font' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-date-font-size' ) != '' ) { echo '.ewd-urp-author-date-categories { font-size: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-date-font-size' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-date-font-color' ) != '' ) { echo '.ewd-urp-author-date-categories { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-date-font-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-date-margin' ) != '' ) { echo '.ewd-urp-author-date-categories { margin: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-date-margin' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-date-padding' ) != '' ) { echo '.ewd-urp-author-date-categories { padding: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-date-padding' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-score-font' ) != '' ) { echo '.ewd-urp-review-score { font-family: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-score-font' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-score-font-size' ) != '' ) { echo '.ewd-urp-review-score { font-size: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-score-font-size' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-score-font-color' ) != '' ) { echo '.ewd-urp-review-score { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-score-font-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-score-margin' ) != '' ) { echo '.ewd-urp-review-score { margin: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-score-margin' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-score-padding' ) != '' ) { echo '.ewd-urp-review-score { padding: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-score-padding' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-background-color' ) != '' ) { echo '.ewd-urp-review-div { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-background-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-header-background-color' ) != '' ) { echo '.ewd-urp-review-header { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-header-background-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-review-content-background-color' ) != '' ) { echo '.ewd-urp-review-content { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-review-content-background-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-background-color' ) != '' ) { echo '.ewd-urp-thumbnail-read-more a { background: ' . $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-background-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-text-color' ) != '' ) { echo '.ewd-urp-thumbnail-read-more a { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-text-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-hover-bg-color' ) != '' ) { echo '.ewd-urp-thumbnail-read-more a:hover { background: ' . $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-hover-bg-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-hover-text-color' ) != '' ) { echo '.ewd-urp-thumbnail-read-more a:hover { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-readmore-button-hover-text-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-verified-checkmark-color' ) != '' ) { echo '.ewd-urp-verified-buyer-badge-image { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-verified-checkmark-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-verified-checkmark-bg-color' ) != '' ) { echo '.ewd-urp-verified-buyer-badge-image { background: ' . $ewd_urp_controller->settings->get_setting( 'styling-verified-checkmark-bg-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-verified-checkmark-text-color' ) != '' ) { echo '.ewd-urp-verified-buyer-badge-text { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-verified-checkmark-text-color' ) . ' !important; }'; }

			if ( $ewd_urp_controller->settings->get_setting( 'styling-summary-stats-color' ) != '' ) { echo '.ewd-urp-standard-summary-graphic-full-sub-group { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-summary-stats-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-simple-bar-color' ) != '' ) { echo '.ewd-urp-blue-bar { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-simple-bar-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-color-bar-low' ) != '' ) { echo '.ewd-urp-red-bar { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-color-bar-low' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-color-bar-medium' ) != '' ) { echo '.ewd-urp-yellow-bar { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-color-bar-medium' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-color-bar-high' ) != '' ) { echo '.ewd-urp-green-bar { background-color: ' . $ewd_urp_controller->settings->get_setting( 'styling-color-bar-high' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-image-style-background-color' ) != '' ) { echo '.ewd-urp-review-format-image .ewd-urp-review-score, .ewd-urp-review-format-image .ewd-urp-review-link, .ewd-urp-review-format-image_masonry .ewd-urp-review-score, .ewd-urp-review-format-image_masonry .ewd-urp-review-link { background: ' . $ewd_urp_controller->settings->get_setting( 'styling-image-style-background-color' ) . ' !important; }'; }
			if ( $ewd_urp_controller->settings->get_setting( 'styling-rating-stars-color' ) != '' ) { echo '.ewd-urp-graphic-full, .ewd-urp-graphic-empty { color: ' . $ewd_urp_controller->settings->get_setting( 'styling-rating-stars-color' ) . ' !important; }'; }
			
			// These two settings were never implemented
			// if ( $ewd_urp_controller->settings->get_setting( 'styling-circle-graph-background-color' ) != '' ) { echo ' { background: ' . $ewd_urp_controller->settings->get_setting( 'styling-circle-graph-background-color' ) . ' !important; }'; }
			// if ( $ewd_urp_controller->settings->get_setting( 'styling-circle-graph-fill-color' ) != '' ) { echo ' { background: ' . $ewd_urp_controller->settings->get_setting( 'styling-circle-graph-fill-color' ) . ' !important; }'; }

			$ewd_urp_controller->settings->get_setting( 'custom-css' );

		echo  '</style>';
	}

}
