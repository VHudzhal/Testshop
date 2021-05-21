<?php
/**
 * Add to wishlist popup template
 *
 * @author Your Inspiration Themes
 * @package YITH WooCommerce Wishlist
 * @version 3.0.0
 */

/**
 * Template variables:
 *
 * @var $base_url string Current page url
 * @var $lists YITH_WCWL_Wishlist[]
 * @var $show_exists bool Whether to show Exists message or not
 * @var $product_id int Current product id
 * @var $parent_product_id int Parent for current product
 * @var $show_count bool Whether to show count of times item was added to wishlist
 * @var $exists bool Whether the product is already in list
 * @var $already_in_wishslist_text string Already in wishlist message
 * @var $browse_wishlist_text string Browse wishlist message
 * @var $wishlist_url string View wishlist url
 * @var $link_classes string Classes for the Add to Wishlist link
 * @var $link_popup_classes string Classes for Open Add to Wishlist Popup link
 * @var $label_popup string Label for Open Add to Wishlist Popup link
 * @var $popup_title string Popup title
 * @var $product_image string Product image url (not is use)
 */

if ( ! defined( 'YITH_WCWL' ) ) {
	exit;
} // Exit if accessed directly

$unique_id = mt_rand();
?>

<div class="yith-wcwl-add-button with-dropdown">
	<a href="<?php echo YITH_WCWL()->get_add_to_wishlist_url( $product_id, array( 'base_url' => $base_url ) ) ?>" rel="nofollow" data-product-id="<?php echo $product_id ?>" data-product-type="<?php echo $product_type?>" data-original-product-id="<?php echo $parent_product_id ?>" class="<?php echo $link_classes ?>" data-title="<?php echo esc_attr( apply_filters( 'yith_wcwl_add_to_wishlist_title', $label ) ) ?>">
		<?php echo $icon ?>
		<?php echo $label ?>
	</a>

	<?php if( ! empty( $lists ) ): ?>

		<!-- WISHLIST DROPDOWN -->
		<ul id="add_to_wishlist_popup_<?php echo $product_id ?>_<?php echo $unique_id?>" class="yith-wcwl-dropdown">
			<?php foreach( $lists as $list ):?>

                <?php
                    // skip list if default
                    if( $list->is_default() ){
                        continue;
                    }
                ?>

				<li>
					<a href="<?php echo YITH_WCWL()->get_add_to_wishlist_url( $product_id, array( 'wishlist_id' => $list->get_id(), 'base_url' => $base_url ) ) ?>" rel="nofollow" data-product-id="<?php echo $product_id ?>" data-product-type="<?php echo $product_type?>" data-original-product-id="<?php echo $parent_product_id ?>" data-wishlist-id="<?php echo $list->get_id() ?>" class="add_to_wishlist"><?php echo $list->get_formatted_name() ?></a>
				</li>
			<?php endforeach; ?>
		</ul>

	<?php endif; ?>
</div>