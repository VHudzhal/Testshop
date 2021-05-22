<?php

/**
 * Class to display a single review on the front end.
 *
 * @since 3.0.0
 */
class ewdurpViewReview extends ewdurpView {

	// Stores the scores for different elements if in-depth reviews is enabled
	public $scores = array();

	// Stores the explanations for different elements if in-depth reviews is enabled
	public $explanations = array();

	public function __construct( $args ) {

		parent::__construct( $args );

		$this->set_review_variables();
	}

	/**
	 * Render the view and enqueue required stylesheets
	 * @since 3.0.0
	 */
	public function render() {
		global $ewd_urp_controller;

		// Add any dependent stylesheets or javascript
		$this->enqueue_assets();

		// Add css classes to the slider
		$this->classes = $this->get_classes();

		$this->reviews_skin = ! empty( $this->reviews_skin ) ? $this->reviews_skin : $ewd_urp_controller->settings->get_setting( 'reviews-skin' );
		$this->review_format = ! empty( $this->review_format ) ? $this->review_format : $ewd_urp_controller->settings->get_setting( 'review-format' );

		$this->set_review_image();

		ob_start();

		if ( ! empty( $this->single_post ) ) { $this->add_custom_styling(); }

		$template = $this->find_template( 'review' );
		if ( $template ) {
			include( $template );
		}
		$output = ob_get_clean();

		return apply_filters( 'ewd_urp_review_output', $output, $this );
	}

	/**
	 * Set the variables for this specific review
	 * @since 3.0.0
	 */
	public function set_review_variables() {
		global $ewd_urp_controller;

		$this->unique_id 		= ewd_random_string() . '-' . $this->ID;

		$this->product_name 	= get_post_meta( $this->ID, 'EWD_URP_Product_Name', true );
		$this->review_author 	= get_post_meta( $this->ID, 'EWD_URP_Post_Author', true );
		$this->score 			= is_numeric( get_post_meta( $this->ID, 'EWD_URP_Overall_Score', true ) ) ? get_post_meta( $this->ID, 'EWD_URP_Overall_Score', true ) : 0;
		$this->karma 			= get_post_meta( $this->ID, 'EWD_URP_Review_Karma', true );
		$this->video 			= get_post_meta( $this->ID, 'EWD_URP_Review_Video', true );

		foreach ( $ewd_urp_controller->settings->get_review_elements() as $review_element ) {

			if ( $review_element->name == '' or $review_element->type == 'default' ) { continue; }

			$this->scores[ $review_element->name ] 		= get_post_meta( $this->ID, "EWD_URP_" . $review_element->name, true );
			$this->explanations[ $review_element->name ] 	= get_post_meta( $this->ID, "EWD_URP_" . $review_element->name . '_Description', true );
		}
	}

	public function set_review_image() {

		if ( $this->review_format == 'image' or $this->review_format == 'image_masonry' ) {
			
			$this->image 			= has_post_thumbnail( $this->ID ) ? get_the_post_thumbnail_url( $this->ID ) : false;
		}
		else {

			$this->image 			= has_post_thumbnail( $this->ID ) ? get_the_post_thumbnail( $this->ID ) : false;
		}
	}

	/**
	 * Display the microdata for a single review
	 *
	 * @since 3.0.0
	 */
	public function print_microdata() {
		global $ewd_urp_controller;

		if ( empty( $ewd_urp_controller->settings->get_setting( 'display-microdata' ) ) ) { return; }
		
		$template = $this->find_template( 'microdata-individual' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the header image, if needed for this particular review style
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_header_image() {
		global $ewd_urp_controller;

		if ( $this->review_format != 'image' and $this->review_format != 'image_masonry' ) { return; }
		
		if ( ! $this->image ) { return; }

		$template = $this->find_template( 'review-image-header' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the product name, if group by product is not turned on 
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_product_name() {
		global $ewd_urp_controller;

		if ( $ewd_urp_controller->settings->get_setting( 'group-by-product' ) ) { return; }
		
		$template = $this->find_template( 'review-product-name' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the button to flag a review as inappropriate, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_inappropriate_flag() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'flag-inappropriate' ) ) { return; }
		
		$template = $this->find_template( 'review-inappropriate-flag' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the verified buyer badge, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_verified_buyer() {
		global $ewd_urp_controller;

		return;
		
		if ( ! $ewd_urp_controller->settings->get_setting( 'verified-buyer-badge' ) ) { return; }
		
		$template = $this->find_template( 'review-verified-buyer' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the score for the review
	 *
	 * @since 3.0.0
	 */
	public function print_score() {
		
		$template = $this->find_template( 'review-score' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the numerical score for the review
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_score_number() {
		global $ewd_urp_controller;

		if ( ! empty( $ewd_urp_controller->settings->get_setting( 'disable-numerical-score' ) ) ) { return; }

		$template = $this->find_template( 'review-score-number' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the graphic of this review's score
	 *
	 * @since 3.0.0
	 */
	public function print_score_graphic() {
		
		if ( $this->reviews_skin == 'colorbar' ) { $template = $this->find_template( 'review-score-graphic-bar' ); }
		elseif ( $this->reviews_skin == 'simplebar' ) { $template = $this->find_template( 'review-score-graphic-bar' ); }
		elseif ( $this->reviews_skin == 'circle' ) { $template = $this->find_template( 'review-score-graphic-circle' ); }
		elseif ( $this->reviews_skin == 'textcircle' ) { $template = $this->find_template( 'review-score-graphic-text-circle' ); }
		else { $template = $this->find_template( 'review-score-graphic-standard' ); }
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the microdata for the review
	 *
	 * @since 3.0.0
	 */
	public function print_rating_microdata() {
		global $ewd_urp_controller;

		if ( empty( $ewd_urp_controller->settings->get_setting( 'display-microdata' ) ) ) { return; }
		
		$template = $this->find_template( 'microdata-rating' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the review karma, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_karma() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'review-karma' ) ) { return; }

		if ( ! isset( $this->review_karma ) ) { return; }
		
		$template = $this->find_template( 'review-karma' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the title for the review
	 *
	 * @since 3.0.0
	 */
	public function print_title() {

		if ( ! isset( $this->title ) ) { return; }
		
		$template = $this->find_template( 'review-title' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the date/author/categories section, if one of those is selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_author_date_categories() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'display-author' ) and 
			 ! $ewd_urp_controller->settings->get_setting( 'display-date' ) and
			 ! $ewd_urp_controller->settings->get_setting( 'display-time' ) and
			 ! $ewd_urp_controller->settings->get_setting( 'display-categories' ) ) { 

			return; 
		}
		
		$template = $this->find_template( 'review-author-date-categories' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the review author, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_author() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'display-author' ) ) { return; }
		
		$template = $this->find_template( 'review-author' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the review date/time, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_date() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'display-date' ) and ! $ewd_urp_controller->settings->get_setting( 'display-time' ) ) { return; }

		if ( ! isset( $this->date ) ) { return; }
		
		$template = $this->find_template( 'review-date' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the review categories, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_categories() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'display-categories' ) ) { return; }
		
		$template = $this->find_template( 'review-categories' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the review image, depending on the selected settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_image() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'review-image' ) or 
			 $this->review_format == 'image' or 
			 $this->review_format == 'image_masonry' ) { 
			
			return; 
		}

		if ( ! $this->image ) { return; }
		
		$template = $this->find_template( 'review-image' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the review video, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_video() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'review-video' ) ) { return; }

		if ( ! $this->video ) { return; }
		
		$template = $this->find_template( 'review-video' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display a read more link, if needed
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_read_more() {
		global $ewd_urp_controller;

		if ( ! isset( $this->review ) ) { return; }

		if ( $this->review == $this->get_printable_content() ) { return; }
		
		$template = $this->find_template( 'review-read-more' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display in-depth review fields, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_indepth_fields() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'indepth-reviews' ) ) { return; }
		
		$template = $this->find_template( 'review-indepth-fields' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display comments for a review, if selected via settings
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_comments() {
		global $ewd_urp_controller;

		if ( ! $ewd_urp_controller->settings->get_setting( 'review-comments' ) ) { return; }
		
		$template = $this->find_template( 'review-comments' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Get the non-default review fields
	 *
	 * @since 3.0.0
	 */
	public function get_indepth_fields() {
		global $ewd_urp_controller;

		$indepth_fields = array();
		
		foreach ( $ewd_urp_controller->settings->get_review_elements() as $review_element ) {

			if ( $review_element->type != 'default' ) { $indepth_fields[] = $review_element; }
		}

		return $indepth_fields;
	}

	/**
	 * Get the class for the color bar, based on selected style and review score
	 *
	 * @since 3.0.0
	 */
	public function get_color_bar_class() {
		global $ewd_urp_controller;

		if ( $this->reviews_skin == 'simplebar' ) { return 'ewd-urp-blue-bar'; }
		if ( $this->score >= 3.34 ) { return 'ewd-urp-green-bar'; }
		if ( $this->score >= 1.67 ) { return 'ewd-urp-yellow-bar'; }

		return 'ewd-urp-red-bar';
	}

	/**
	 * Get the width for the color bar, based on review score
	 *
	 * @since 3.0.0
	 */
	public function get_color_bar_width() {
		global $ewd_urp_controller;

		return round( ( $this->score * ( 100 / $ewd_urp_controller->settings->get_setting( 'maximum-score' ) ) ) * 0.95, 2 );
	}

	/**
	 * Get the margin (inverse of width) for the color bar, based on review score
	 *
	 * @since 3.0.0
	 */
	public function get_color_bar_margin() {
		global $ewd_urp_controller;

		return round( ( 100 - $this->score * ( 100 / $ewd_urp_controller->settings->get_setting( 'maximum-score' ) ) ) * 0.95, 2 );
	}

	/**
	 * Get the date and/or time for display, based on selected settings
	 *
	 * @since 3.0.0
	 */
	public function get_display_date_time() {
		global $ewd_urp_controller;

		if ( empty( $this->date ) ) { return; }

		return ( $ewd_urp_controller->settings->get_setting( 'display-date' ) ? date( get_option( 'date_format' ), strtotime( $this->date ) ) : '' ) . ' ' . ( $ewd_urp_controller->settings->get_setting( 'display-time' ) ? date( get_option( 'time_format' ), strtotime( $this->date ) ) : '' );
	}

	/**
	 * Get the categories assigned to the review as a string
	 *
	 * @since 3.0.0
	 */
	public function get_review_categories_string() {

		return implode( ', ', wp_get_post_terms( $this->ID, EWD_URP_REVIEW_CATEGORY_TAXONOMY, array( 'fields' => 'names' ) ) );
	}

	/**
	 * Get the embed code for the review's video
	 *
	 * @since 3.0.0
	 */
	public function get_video_embed_code() {

		if ( empty( $this->video ) ) { return; }
		
		return wp_oembed_get( $this->video, array( 'width' => 400, 'height' => 300 ) );
	}

	/**
	 * Get printable content for this review
	 *
	 * @since 3.0.0
	 */
	public function get_printable_content() {
		global $ewd_urp_controller;

		if ( empty( $this->review ) ) { return; }

		return $this->review_format == 'thumbnail' ? substr( $this->review, 0, $ewd_urp_controller->settings->get_setting( 'thumbnail-characters' ) ) : $this->review;
	}

	/**
	 * Get the score for an in-depth field
	 *
	 * @since 3.0.0
	 */
	public function get_review_field_score( $field_name ) {
		
		return ! empty( $this->scores[ $field_name ] ) ? $this->scores[ $field_name ] : null;
	}

	/**
	 * Get the explanation for an in-depth field
	 *
	 * @since 3.0.0
	 */
	public function get_review_field_explanation( $field_name ) {
		
		return ! empty( $this->explanations[ $field_name ] ) ? $this->explanations[ $field_name ] : null;
	}

	/**
	 * Get the comments for a review
	 *
	 * @since 3.0.0
	 */
	public function get_review_comments() {
		
		return get_comments( array( 'post_id' => $this->ID ) );
	}

	/**
	 * Get the initial reviews css classes
	 * @since 3.0.0
	 */
	public function get_classes( $classes = array() ) {
		global $ewd_urp_controller;

		$classes = array_merge(
			$classes,
			array(
				'ewd-urp-review-div',
				'ewd-urp-review-format-' . $this->review_format,
			)
		);

		if ( $ewd_urp_controller->settings->get_setting( 'read-more-ajax' ) ) { $classes[] = 'ewd-urp-ajax-read-more'; }

		return apply_filters( 'ewd_urp_review_classes', $classes, $this );
	}

	/**
	 * Enqueue the necessary CSS and JS files
	 * @since 3.0.0
	 */
	public function enqueue_assets() {
		global $ewd_urp_controller;

		
	}
}
