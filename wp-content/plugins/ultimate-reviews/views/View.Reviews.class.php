<?php

/**
 * Class to display multiple reviews on the front end.
 *
 * @since 3.0.0
 */
class ewdurpViewReviews extends ewdurpView {

	// store all of the review objects for the reviews being displayed
	public $reviews = array();

	// store the names of all products reviewed
	private $product_names = array();

	// store the names of all review authors
	private $review_authors = array();

	// store summary information about review scores
	private $summary_statistics = array();

	// stores the product name for the review currently being displayed
	private $current_product;

	/**
	 * Define the the reviews to be used
	 *
	 * @since 3.0.0
	 */
	public function set_reviews( $reviews ) {
		global $ewd_urp_controller;

		foreach ( $reviews as $review ) {
			
			if ( get_class( $review ) != 'ewdurpReview' ) { continue; }

			$review_view = new ewdurpViewReview( $review );

			$review_view->reviews_skin = ! empty( $this->reviews_skin ) ? $this->reviews_skin : $ewd_urp_controller->settings->get_setting( 'reviews-skin' );
			$review_view->review_format = ! empty( $this->review_format ) ? $this->review_format : $ewd_urp_controller->settings->get_setting( 'review-format' );

			$this->reviews[] = $review_view;
		}
	}

	/**
	 * Render the view and enqueue required stylesheets
	 * @since 3.0.0
	 */
	public function render() {
		global $ewd_urp_controller;

		// Set attribute-alterable options
		$this->set_reviews_options();

		// Set parameter-alterable options
		$this->set_request_parameters();

		if ( ! count( $this->reviews ) ) {
			return;
		}

		// Get data on product names, score, etc.
		$this->create_reviews_data();

		// Add any dependent stylesheets or javascript
		$this->enqueue_assets();

		// Add css classes to the slider
		$this->classes = $this->get_classes();

		ob_start();

		ewd_add_frontend_ajax_url();

		$this->add_custom_styling();
		
		$template = $this->find_template( 'reviews' );
		if ( $template ) {
			include( $template );
		}

		$output = ob_get_clean();

		return apply_filters( 'ewd_urp_reviews_output', $output, $this );
	}

	/**
	 * Print the reviews in the review shortcode
	 *
	 * @since 3.0.0
	 */
	public function print_reviews() {
		global $ewd_urp_controller;

		foreach ( $this->reviews as $review_count => $review ) {

			if ( $review_count < $this->reviews_per_page * ( $this->current_page - 1) or $review_count >= $this->reviews_per_page * ( $this->current_page ) ) { continue; }

			if ( ! isset( $this->current_product) or $this->current_product != $review->product_name ) {

				$this->current_product = $review->product_name;

				$this->maybe_print_product_group_name();

				$this->maybe_print_summary_statistics();

				$this->maybe_open_reviews_container();
			}
			
			echo $review->render();

			if ( $review_count + 1 == sizeof( $this->reviews ) or $review_count + 1 >= $this->reviews_per_page * ( $this->current_page ) or $this->reviews[ $review_count + 1 ]->product_name != $this->current_product ) {

				$this->maybe_close_reviews_container();
			}
		}
	}

	/**
	 * Add in inputs for the key shortcode attributes, for filtering, pagination, etc.
	 *
	 * @since 3.0.0
	 */
	public function print_shortcode_args() {

		$template = $this->find_template( 'reviews-shortcode-args' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the pagination section, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_pagination( $location ) {
		global $ewd_urp_controller;

		if ( $this->max_page == 1 ) { return; }

		// display pagination at the bottom when infinite scroll enabled
		if ( $ewd_urp_controller->settings->get_setting( 'infinite-scroll' ) ) {

			if ( $location != 'bottom' ) { return; }
		}
		elseif ( $ewd_urp_controller->settings->get_setting( 'pagination-location' ) != 'both' and $ewd_urp_controller->settings->get_setting( 'pagination-location' ) != $location ) { return; }

		$template = $this->find_template( 'pagination' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the filtering section, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_filtering() {
		global $ewd_urp_controller;

		if ( empty( $ewd_urp_controller->settings->get_setting( 'review-filtering' ) ) ) { return; }

		$template = $this->find_template( 'filtering' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the product name filter if selected
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_product_name_filtering() {
		global $ewd_urp_controller;

		if ( ! in_array( 'name', $ewd_urp_controller->settings->get_setting( 'review-filtering' ) ) ) { return; }

		if ( empty( $this->product_names ) ) { return; }

		$template = $this->find_template( 'filtering-product-name' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the review author filter if selected
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_review_author_filtering() {
		global $ewd_urp_controller;

		if ( ! in_array( 'author', $ewd_urp_controller->settings->get_setting( 'review-filtering' ) ) ) { return; }

		if ( empty( $this->review_authors ) ) { return; }

		$template = $this->find_template( 'filtering-review-author' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the score filter if selected
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_score_filtering() {
		global $ewd_urp_controller;

		if ( ! in_array( 'score', $ewd_urp_controller->settings->get_setting( 'review-filtering' ) ) ) { return; }

		$template = $this->find_template( 'filtering-score' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display custom filters if enabled
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_custom_filtering() {
		global $ewd_urp_controller;

		$template = $this->find_template( 'filtering-custom' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the microdata section, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_microdata() {
		global $ewd_urp_controller;

		if ( empty( $ewd_urp_controller->settings->get_setting( 'display-microdata' ) ) ) { return; }

		$template = $this->find_template( 'microdata-summary' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Opens the inner reviews container that contains individual reviews
	 *
	 * @since 3.0.0
	 */
	public function maybe_open_reviews_container() {

		if ( ! empty( $this->reviews_container_open ) ) { return; }

		$this->reviews_container_open = true;

		$template = $this->find_template( 'reviews-review-container-open' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Closes the inner reviews container that contains individual reviews
	 *
	 * @since 3.0.0
	 */
	public function maybe_close_reviews_container() {

		if ( empty( $this->reviews_container_open ) ) { return; }

		$this->reviews_container_open = false;

		$template = $this->find_template( 'reviews-review-container-close' );
		
		if ( $template ) {
			include( $template );
		}
	}

	public function maybe_print_product_group_name() {
		global $ewd_urp_controller;

		if ( empty( $this->group_by_product ) ) { return; }

		if ( $ewd_urp_controller->settings->get_setting( 'summary-statistics' ) != 'none' ) { return; }

		$template = $this->find_template( 'reviews-grouped-products-name' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the summary statistics section, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_summary_statistics() {
		global $ewd_urp_controller;

		if ( $ewd_urp_controller->settings->get_setting( 'summary-statistics' ) == 'none' ) { return; }

		$template = $this->find_template( 'summary-statistics' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the summary statistics graphic, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_summary_graphic() {
		global $ewd_urp_controller;

		if ( $ewd_urp_controller->settings->get_setting( 'summary-statistics' ) != 'limited' ) { return; }

		$template = $this->find_template( 'summary-statistics-graphic-percentage' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the summary statistics score bars, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_score_bars() {
		global $ewd_urp_controller;

		if ( $ewd_urp_controller->settings->get_setting( 'summary-statistics' ) != 'full' ) { return; }

		$template = $this->find_template( 'summary-statistics-score-bars' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the summary statistics clear score link, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_clear_score_filter() {
		global $ewd_urp_controller;

		if ( $ewd_urp_controller->settings->get_setting( 'summary-statistics-score-bars' ) != 'full' ) { return; }

		if ( $ewd_urp_controller->settings->get_setting( 'summary-statistics-score-bars' ) == 'percentage' ) { return; }

		if ( $this->min_score != $this->max_score ) { return; }

		$template = $this->find_template( 'summary-statistics-clear-score-filter' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Display the summary statistics microdata, if selected via the settings page
	 *
	 * @since 3.0.0
	 */
	public function maybe_print_summary_statistics_microdata() {
		global $ewd_urp_controller;

		if ( empty( $ewd_urp_controller->settings->get_setting( 'display-microdata' ) ) ) { return; }

		$template = $this->find_template( 'summary-statistics-microdata' );
		
		if ( $template ) {
			include( $template );
		}
	}

	/**
	 * Get the width of the summary statistics score bar
	 *
	 * @since 3.0.0
	 */
	public function get_average_score() {

		return !empty( $this->summary_statistics[ $this->current_product ]['average_score'] ) ? $this->summary_statistics[ $this->current_product ]['average_score'] : 0;
	}

	/**
	 * Get the width of the summary statistics score bar
	 *
	 * @since 3.0.0
	 */
	public function get_summary_bar_width() {
		global $ewd_urp_controller;

		return ( $this->summary_statistics[ $this->current_product ]['average_score'] / $ewd_urp_controller->settings->get_setting( 'maximum-score' ) ) * 100;
	}

	/**
	 * Get the width of the summary statistics score bar
	 *
	 * @since 3.0.0
	 */
	public function get_summary_subscorebar_width( $i ) {
		global $ewd_urp_controller;

		return array_sum( $this->summary_statistics[ $this->current_product ]['scores'] ) ? ( $this->summary_statistics[ $this->current_product ]['scores'][ $i ] / array_sum( $this->summary_statistics[ $this->current_product ]['scores'] ) ) * 100 : 0;
	}

	/**
	 * Add in default options if not overwritten by shortcode attributes
	 *
	 * @since 3.0.0
	 */
	public function set_reviews_options() {
		global $ewd_urp_controller;
		
		$this->shortcode_id = ! empty( $this->shortcode_id ) ? $this->shortcode_id : ewd_random_string() ;
		$this->order = empty( $this->order ) ? $ewd_urp_controller->settings->get_setting( 'order-direction' ) : $this->order;
		$this->orderby = empty( $this->orderby ) ? $ewd_urp_controller->settings->get_setting( 'ordering-type' ) : $this->orderby;
		$this->group_by_product = empty( $this->group_by_product ) ? $ewd_urp_controller->settings->get_setting( 'group-by-product' ) : ( $this->group_by_product == "Yes" ? true : false );
		$this->reviews_per_page = empty( $this->reviews_per_page ) ? $ewd_urp_controller->settings->get_setting( 'reviews-per-page' ) : $this->reviews_per_page;

		$this->include_ids = empty( $this->include_ids ) ? explode( ',', $this->include_ids ) : null;
		$this->exclude_ids = empty( $this->exclude_ids ) ? explode( ',', $this->exclude_ids ) : null;

		$this->review_filtering = json_decode( $this->group_by_product );
		$this->custom_filters = is_array( json_decode( $this->custom_filters ) ) ? array_map( 'sanitize_text_field', $this->custom_filters ) : array();

		$this->reviews_per_page = ! empty( $this->reviews_per_page ) ? $this->reviews_per_page : ( ! empty( $this->post_count ) ? $this->post_count : $ewd_urp_controller->settings->get_setting( 'reviews-per-page' ) );
	}

	/**
	 * Get data on product names, score, and authors
	 *
	 * @since 3.0.0
	 */
	public function create_reviews_data() {
		global $ewd_urp_controller;

		foreach ( $this->reviews as $review ) {

			$this->product_names[] = $review->product_name;
			$this->review_authors[] = $review->review_author;

			// Initialize an entry in the summary statistics array for this product if it doesn't already exist
			if ( empty( $this->summary_statistics[ $review->product_name ] ) ) { $this->initialize_summary_statistics( $review->product_name ); }

			$this->summary_statistics[ $review->product_name ]['scores'][ (integer) $review->score ]++;
		}

		foreach ( $this->product_names as $product_name ) { 

			$total_scores = 0;

			for ( $i = 1; $i <= $ewd_urp_controller->settings->get_setting( 'maximum-score' ); $i++ ) {
				
				$total_scores += $i * $this->summary_statistics[ $product_name ]['scores'][ $i ];
			}

			$this->summary_statistics[ $product_name ]['average_score'] = array_sum ( $this->summary_statistics[ $product_name ]['scores'] ) ? round( ( $total_scores / array_sum( $this->summary_statistics[ $product_name ]['scores'] ) ), 2 ) : 0;
		}

		$this->product_names = array_unique( $this->product_names );
		$this->review_authors = array_unique( $this->review_authors );

		natcasesort( $this->product_names );
		natcasesort( $this->review_authors );

		$this->review_count = count( $this->reviews );
		$this->max_page = ceil( $this->review_count / $this->reviews_per_page ); 
	}

	/**
	 * Initialize the summary statistics for a particular product
	 *
	 * @since 3.0.0
	 */
	public function initialize_summary_statistics( $product_name ) {
		global $ewd_urp_controller;

		if ( ! empty( $this->summary_statistics[ $product_name ] ) ) { return; }

		$this->summary_statistics[ $product_name ] = array( 'scores' => array() );

		for ( $i = 0; $i <= $ewd_urp_controller->settings->get_setting( 'maximum-score' ); $i++ ) {

			$this->summary_statistics[ $product_name ]['scores'][ $i ] = 0;
		}
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
				'ewd-urp-reviews',
				'ewd-urp-reviews-' . $ewd_urp_controller->settings->get_setting( 'reviews-skin' ),
			)
		);

		if ( $ewd_urp_controller->settings->get_setting( 'infinite-scroll' ) ) { $classes[] = 'ewd-urp-infinite-scroll'; }

		return apply_filters( 'ewd_urp_reviews_classes', $classes, $this );
	}

	/**
	 * Allow some parameters to be overwritten with URL parameters, to link to specific review sets
	 * @since 3.0.0
	 */
	public function set_request_parameters() {

		if ( ! empty( $_REQUEST['product_name'] ) ) { $this->product_name = sanitize_text_field( stripslashes( $_REQUEST['product_name'] ) ); }

		if ( ! empty( $_REQUEST['current_page'] ) ) { $this->current_page = intval( $_REQUEST['current_page'] ); }

		if ( ! empty( $_REQUEST['review_score'] ) ) { $this->min_score = intval( $_REQUEST['review_score'] ); }
		if ( ! empty( $_REQUEST['review_score'] ) ) { $this->max_score = intval( $_REQUEST['review_score'] ); }

		if ( ! empty( $_REQUEST['review_min_score'] ) ) { $this->min_score = intval( $_REQUEST['review_min_score'] ); }
		if ( ! empty( $_REQUEST['review_max_score'] ) ) { $this->max_score = intval( $_REQUEST['review_max_score'] ); }

		if ( ! empty( $_REQUEST['review_author'] ) ) { $this->review_author = sanitize_text_field( stripslashes( $_REQUEST['review_author'] ) ); }


	}

	/**
	 * Enqueue the necessary CSS and JS files
	 * @since 3.0.0
	 */
	public function enqueue_assets() {
		global $ewd_urp_controller;
	
	    /*$slider_data = array( 
	    	'autoplay_slideshow' 		=> $ewd_urp_controller->settings->get_setting( 'autoplay-slideshow' ),
	        'autoplay_delay' 			=> substr( $ewd_urp_controller->settings->get_setting( 'autoplay-delay' ), 0, strpos( $ewd_urp_controller->settings->get_setting( 'autoplay-delay' ), '_' ) ),
	        'autoplay_interval' 		=> substr( $ewd_urp_controller->settings->get_setting( 'autoplay-interval' ), 0, strpos( $ewd_urp_controller->settings->get_setting( 'autoplay-delay' ), '_' ) ),
	        'slide_transition_effect' 	=> $ewd_urp_controller->settings->get_setting( 'slide-transition-effect' ),
	        'transition_time' 			=> substr( $ewd_urp_controller->settings->get_setting( 'transition-time' ), 0, strpos( $ewd_urp_controller->settings->get_setting( 'autoplay-delay' ), '_' ) ),
	        'aspect_ratio' 				=> $aspect_fraction,
	        'mobile_aspect_ratio' 		=> $mobile_aspect_fraction,
	        'slider_carousel' 			=> $ewd_urp_controller->settings->get_setting( 'carousel' ),
	        'carousel_columns' 			=> $ewd_urp_controller->settings->get_setting( 'carousel-columns' ),
	        'carousel_link_to_full' 	=> $ewd_urp_controller->settings->get_setting( 'carousel-link-to-full' ),
	        'carousel_advance' 			=> $ewd_urp_controller->settings->get_setting( 'carousel-advance' ),
	        'title_animate' 			=> $ewd_urp_controller->settings->get_setting( 'title-animate' ),
	        'lightbox' 					=> $ewd_urp_controller->settings->get_setting( 'lightbox' ),
	        'timer_bar' 				=> $ewd_urp_controller->settings->get_setting( 'timer-bar' ),
	        'force_full_width' 			=> $ewd_urp_controller->settings->get_setting( 'force-full-width' ),
	        'autoplay_pause_hover' 		=> $ewd_urp_controller->settings->get_setting( 'autoplay-pause-hover' )
	    );
	
	    wp_localize_script( 'ewd-urp-js', 'ewd_urp_php_data', $slider_data );
	
	    wp_enqueue_style( 'ewd-urp-css' );
	
	    if ( $ewd_urp_controller->settings->get_setting( 'lightbox' ) ) { 
	
	    	wp_enqueue_script( 'ultimate-lightbox' ); 
	
	    	wp_enqueue_style( 'ewd-ulb-main' );
	    }*/
	}
}
