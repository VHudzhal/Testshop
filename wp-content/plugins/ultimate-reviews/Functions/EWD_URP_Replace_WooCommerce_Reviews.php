<?php

add_filter( 'woocommerce_product_tabs', 'EWD_URP_Replace_WooCommerce_Reviews', 98 );
function EWD_URP_Replace_WooCommerce_Reviews($tabs) {
	$Replace_WooCommerce_Reviews = get_option("EWD_URP_Replace_WooCommerce_Reviews");

	if ($Replace_WooCommerce_Reviews == "Yes") {
		$tabs['reviews']['callback'] = 'EWD_URP_WooCommerce_Reviews';
	}

	return $tabs;
}

function EWD_URP_WooCommerce_Reviews() {
	global $product;

	$WooCommerce_Review_Submit_First = get_option("EWD_URP_WooCommerce_Review_Submit_First");

	if ($product->is_type('variation')) {$Post_Data = get_post($product->get_parent_id());}
	else {$Post_Data = get_post($product->get_id());}

	if ($WooCommerce_Review_Submit_First == "Yes") {EWD_URP_Display_WC_Submit_Review_Form($Post_Data);}
	else {EWD_URP_Display_WC_Reviews($Post_Data);}
	
	echo "<div class='ewd-urp-woocommerce-tab-divider'></div>";
	
	if ($WooCommerce_Review_Submit_First == "Yes") {EWD_URP_Display_WC_Reviews($Post_Data);}
	else {EWD_URP_Display_WC_Submit_Review_Form($Post_Data);}
}

function EWD_URP_Display_WC_Reviews($Post_Data) {
	global $wpdb;

	$Maximum_Score = get_option("EWD_URP_Maximum_Score");
	$WooCommerce_Review_Types = get_option("EWD_URP_WooCommerce_Review_Types");
	$WooCommerce_Category_Product_Reviews = get_option("EWD_URP_WooCommerce_Category_Product_Reviews");

	echo "<h2>" . __("Reviews", 'ultimate-reviews') . "</h2>";
	
	if (!is_array($WooCommerce_Review_Types) or empty($WooCommerce_Review_Types) or in_array("Default", $WooCommerce_Review_Types)) {
		echo do_shortcode("[ultimate-reviews product_name='" . $Post_Data->post_title . "']");
		if ($WooCommerce_Category_Product_Reviews > 0) {
			$Reviews = $wpdb->get_results( $wpdb->prepare( "SELECT post_id FROM $wpdb->postmeta WHERE meta_key='EWD_URP_Product_Name' AND meta_value='%s'", $Post_Data->post_title ) );
			if ($wpdb->num_rows < $WooCommerce_Category_Product_Reviews) {
				$Reviews_To_Add = $WooCommerce_Category_Product_Reviews - $wpdb->num_rows;
				$WC_Cat_IDs = wp_get_post_terms($Post_Data->ID, "product_cat", array('fields' => 'ids'));
				$Args = array(
					'taxonomy' => 'urp-review-category',
					'fields' => 'ids',
					'meta_query' => array(
						'key' => 'product_cat',
						'value' => $WC_Cat_IDs,
						'compare' => 'IN'
						)
					);
				$URP_Cat_IDs = get_terms($Args);
				$Post_ID_Array = array();
				foreach ($Reviews as $Review) {$Post_ID_Array[] = $Review->post_id;}
				$Post_IDs = implode(",", $Post_ID_Array);
				if (!empty($URP_Cat_IDs)) {
					if ($wpdb->num_rows != 0) {echo "<div class='ewd-urp-woocommerce-tab-divider'></div>";}
					echo "<h3>" . __("Reviews for Similar Products") . "</h3>";
					echo do_shortcode("[ultimate-reviews product_name='" . $Post_Data->post_title . "' include_category_ids='" . $URP_Cat_IDs . "' exclude_ids='" . $Post_IDs . "' post_count='" . $Reviews_To_Add . "']");
				}
			}
		}
	}
	else {
		if (sizeof($WooCommerce_Review_Types) > 1) {
			foreach ($WooCommerce_Review_Types as $Key => $Review_Type) {
				echo "<div class='ewd-urp-wc-tab-title ";
				if ($Key == 0) {echo "ewd-urp-wc-active-tab-title";}
				echo "' data-tab='" . $Review_Type . "'>";
				if ($Review_Type == "Date") {echo __("Most recent reviews", 'ultimate-reviews');}
				elseif ($Review_Type == "Rating") {echo __("Top reviews", 'ultimate-reviews');}
				elseif ($Review_Type == "Karma") {echo __("Most useful reviews", 'ultimate-reviews');}
				echo "</div>";
			}
		}
		foreach ($WooCommerce_Review_Types as $Key => $Review_Type) {
			echo "<div class='ewd-urp-wc-tab ";
			if ($Key == 0) {echo "ewd-urp-wc-active-tab";}
			echo "' data-tab='" . $Review_Type . "'>";
			echo do_shortcode("[ultimate-reviews product_name='" . $Post_Data->post_title . "' orderby='" . $Review_Type . "']");
			echo "</div>";
		}
	}
}

function EWD_URP_Display_WC_Submit_Review_Form($Post_Data) {
	echo "<h2>" . __("Leave a review", 'ultimate-reviews') . "</h2>";
	echo "<style>.ewd-urp-form-header {display:none;}</style>";
	echo do_shortcode("[submit-review product_name='" . $Post_Data->post_title . "']");
}

add_filter( 'woocommerce_product_tabs', 'EWD_URP_WooCommerce_Add_Review_Count', 98 );
function EWD_URP_WooCommerce_Add_Review_Count($tabs) {
	global $product, $wp_filter;

	$Replace_WooCommerce_Reviews = get_option("EWD_URP_Replace_WooCommerce_Reviews");

	if ($Replace_WooCommerce_Reviews == "Yes" and is_object($product)) {
		if ($product->is_type('variation')) {$Post_Data = get_post($product->get_parent_id());}
		else {$Post_Data = get_post($product->get_id());}

		$Title = __('Reviews', 'ultimate-reviews') . " (" . EWD_URP_Get_Review_Count($Post_Data->post_title) . ")";

		$tabs['reviews']['title'] = $Title;	
	}

	return $tabs;
}

add_filter('woocommerce_product_get_rating_html', 'EWD_URP_WooCommerce_Rating_Filter', 98, 2);
add_filter('woocommerce_template_single_rating', 'EWD_URP_WooCommerce_Rating_Filter', 98, 2);
function EWD_URP_WooCommerce_Rating_Filter($content, $rating) {
	global $product;

	$Maximum_Score = get_option("EWD_URP_Maximum_Score") != 0 ? get_option("EWD_URP_Maximum_Score") : 5;
	$Replace_WooCommerce_Reviews = get_option("EWD_URP_Replace_WooCommerce_Reviews");

	if ($Replace_WooCommerce_Reviews != "Yes") {return $content;}

	if ($product->is_type('variation')) {$Post_Data = get_post($product->get_parent_id());}
	else {$Post_Data = get_post($product->get_id());}
	
	$EWD_URP_Rating = EWD_URP_Get_Aggregate_Score($Post_Data->post_title);

	if ( ! is_numeric( $EWD_URP_Rating ) ) { $EWD_URP_Rating = 0; }

	$rating_html  = '<div class="star-rating" title="' . sprintf( __( 'Rated %s out of %s', 'woocommerce' ), $EWD_URP_Rating, $Maximum_Score ) . '">';
	$rating_html .= '<span style="width:' . (( $EWD_URP_Rating / $Maximum_Score ) * 100 ) . '%"><strong class="rating">' . $EWD_URP_Rating . '</strong> ' . sprintf( __( 'out of %s', 'woocommerce' ), $Maximum_Score) . '</span>';
	$rating_html .= '</div>';

	return $rating_html;
}

add_filter('woocommerce_product_get_review_count', 'EWD_URP_WooCommerce_Review_Count_Filter', 98, 2);
function EWD_URP_WooCommerce_Review_Count_Filter($count, $item) {
	global $product;

	if ($product->is_type('variation')) {$Post_Data = get_post($product->get_parent_id());}
	else {$Post_Data = get_post($product->get_id());}

	return EWD_URP_Get_Review_Count($Post_Data->post_title);
}

add_filter('woocommerce_locate_template', 'EWD_URP_WooCommerce_Locate_Template', 10, 3);
function EWD_URP_WooCommerce_Locate_Template($template, $template_name, $template_path) {
	global $woocommerce;

	if ($template_name != "single-product/rating.php") {return $template;}

	$Replace_WooCommerce_Reviews = get_option("EWD_URP_Replace_WooCommerce_Reviews");
	$Override_WooCommerce_Theme = get_option("EWD_URP_Override_WooCommerce_Theme");

	$_template = $template;

	// Look within passed path within the theme - this is priority
	if (!$template_path) {$template_path = $woocommerce->template_url;}
	$template = locate_template(array(
								$template_path . $template_name,
								$template_name
							)
 	);

	// Modification: Get the template from this plugin, if it exists
	$Ratings_File_Path  = EWD_URP_CD_PLUGIN_PATH . 'html/WC_Rating.php';
	if ($Replace_WooCommerce_Reviews == "Yes" and (!$template or $Override_WooCommerce_Theme == "Yes") and file_exists($Ratings_File_Path)) {$template = $Ratings_File_Path;}

	// Use default template
	if (!$template) {$template = $_template;}

	return $template;
}

?>