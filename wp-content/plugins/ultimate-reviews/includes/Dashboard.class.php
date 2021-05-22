<?php
if ( !defined( 'ABSPATH' ) ) exit;

if ( !class_exists( 'ewdurpDashboard' ) ) {
/**
 * Class to handle plugin dashboard
 *
 * @since 3.0.0
 */
class ewdurpDashboard {

	public $message;
	public $status = true;

	public function __construct() {
		add_action( 'admin_menu', array( $this, 'add_dashboard_to_menu' ), 99 );

		add_action( 'admin_enqueue_scripts',  array( $this, 'enqueue_scripts' ) );

		add_action( 'wp_ajax_ewd_urp_hide_upgrade_box', array($this, 'hide_upgrade_box') );
		add_action( 'wp_ajax_ewd_urp_display_upgrade_box', array($this, 'display_upgrade_box') );
	}

	public function add_dashboard_to_menu() {
		global $ewd_urp_controller;
		global $submenu;

		add_submenu_page( 
			'edit.php?post_type=urp_review', 
			'Dashboard', 
			'Dashboard', 
			'manage_options', 
			'ewd-urp-dashboard', 
			array($this, 'display_dashboard_screen') 
		);

		// Create a new sub-menu in the order that we want
		$new_submenu = array();
		$menu_item_count = 3;

		if ( ! isset( $submenu['edit.php?post_type=urp_review'] ) or  ! is_array($submenu['edit.php?post_type=urp_review']) ) { return; }
		
		foreach ( $submenu['edit.php?post_type=urp_review'] as $key => $sub_item ) {
			
			if ( $sub_item[0] == 'Dashboard' ) { $new_submenu[0] = $sub_item; }
			elseif ( $sub_item[0] == 'Settings' ) { $new_submenu[ sizeof($submenu) ] = $sub_item; }
			elseif ( $ewd_urp_controller->settings->get_setting( 'admin-approval' ) and $sub_item[2] == 'edit.php?post_type=urp_review' ) {

				$new_submenu[1] = array(
					__( 'Approved Reviews', 'ultimate-reviews' ), 
					'edit_posts', 
					'edit.php?post_type=urp_review&post_status=publish'
				);

				$new_submenu[2] = array(
					__( 'Awaiting Approval', 'ultimate-reviews' ), 
					'edit_posts', 
					'edit.php?post_type=urp_review&post_status=draft'
				);
			}
			else {
				
				$new_submenu[$menu_item_count] = $sub_item;
				$menu_item_count++;
			}
		}

		if ( $ewd_urp_controller->settings->get_setting( 'admin-approval' ) ) { 

			foreach ( $submenu['edit.php?post_type=urp_review'] as $key => $sub_item ) {

				if ( $sub_item[2] == 'edit.php?post_type=urp_review' ) {}
			}
		}

		ksort($new_submenu);
		
		$submenu['edit.php?post_type=urp_review'] = $new_submenu;
		
		if ( isset( $dashboard_key ) ) {
			$submenu['edit.php?post_type=urp_review'][0] = $submenu['edit.php?post_type=urp_review'][$dashboard_key];
			unset($submenu['edit.php?post_type=urp_review'][$dashboard_key]);
		}
	}

	// Enqueues the admin script so that our hacky sub-menu opening function can run
	public function enqueue_scripts() {
		global $admin_page_hooks;

		$currentScreen = get_current_screen();
		if ( $currentScreen->id == $admin_page_hooks['edit.php?post_type=urp_review'] . '_page_ewd-urp-dashboard' ) {
			wp_enqueue_style( 'ewd-urp-admin-css', EWD_URP_PLUGIN_URL . '/assets/css/ewd-urp-admin.css', array(), EWD_URP_VERSION );
			wp_enqueue_script( 'ewd-urp-admin-js', EWD_URP_PLUGIN_URL . '/assets/js/ewd-urp-admin.js', array( 'jquery' ), EWD_URP_VERSION, true );
		}
	}

	public function display_dashboard_screen() { 
		global $ewd_urp_controller;

		$permission = $ewd_urp_controller->permissions->check_permission( 'styling' );

		$args = array(
			'post_type' => 'urp_review',
			'orderby' 	=> 'meta_value_num',
			'meta_key' 	=> 'urp_view_count'
		);
		
		$query = new WP_Query( $args );
		$reviews = $query->get_posts();

		?>

		<div id="ewd-urp-dashboard-content-area">

			<div id="ewd-urp-dashboard-content-left">
		
				<?php if ( ! $permission or get_option("EWD_URP_Trial_Happening") == "Yes" ) {
					$premium_info = '<div class="ewd-urp-dashboard-new-widget-box ewd-widget-box-full">';
					$premium_info .= '<div class="ewd-urp-dashboard-new-widget-box-top">';
					$premium_info .= sprintf( __( '<a href="%s" target="_blank">Visit our website</a> to learn how to upgrade to premium.'), 'https://www.etoilewebdesign.com/premium-upgrade-instructions/' );
					$premium_info .= '</div>';
					$premium_info .= '</div>';

					$premium_info = apply_filters( 'ewd_dashboard_top', $premium_info, 'URP', 'https://www.etoilewebdesign.com/license-payment/?Selected=URP&Quantity=1' );

					echo $premium_info;
				} ?>
		
				<div class="ewd-urp-dashboard-new-widget-box ewd-widget-box-full" id="ewd-urp-dashboard-support-widget-box">
					<div class="ewd-urp-dashboard-new-widget-box-top">Get Support<span id="ewd-urp-dash-mobile-support-down-caret">&nbsp;&nbsp;&#9660;</span><span id="ewd-urp-dash-mobile-support-up-caret">&nbsp;&nbsp;&#9650;</span></div>
					<div class="ewd-urp-dashboard-new-widget-box-bottom">
						<ul class="ewd-urp-dashboard-support-widgets">
							<li>
								<a href="https://www.youtube.com/playlist?list=PLEndQUuhlvSpw3HQakJHj4G0F0Gyc" target="_blank">
									<img src="<?php echo plugins_url( '../assets/img/ewd-support-icon-youtube.png', __FILE__ ); ?>">
									<div class="ewd-urp-dashboard-support-widgets-text">YouTube Tutorials</div>
								</a>
							</li>
							<li>
								<a href="https://wordpress.org/plugins/ultimate-reviews/#faq" target="_blank">
									<img src="<?php echo plugins_url( '../assets/img/ewd-support-icon-faqs.png', __FILE__ ); ?>">
									<div class="ewd-urp-dashboard-support-widgets-text">Plugin FAQs</div>
								</a>
							</li>
							<li>
								<a href="https://www.etoilewebdesign.com/support-center/?Plugin=URP&Type=FAQs" target="_blank">
									<img src="<?php echo plugins_url( '../assets/img/ewd-support-icon-documentation.png', __FILE__ ); ?>">
									<div class="ewd-urp-dashboard-support-widgets-text">Documentation</div>
								</a>
							</li>
							<li>
								<a href="https://www.etoilewebdesign.com/support-center/" target="_blank">
									<img src="<?php echo plugins_url( '../assets/img/ewd-support-icon-forum.png', __FILE__ ); ?>">
									<div class="ewd-urp-dashboard-support-widgets-text">Get Support</div>
								</a>
							</li>
						</ul>
					</div>
				</div>
		
				<div class="ewd-urp-dashboard-new-widget-box ewd-widget-box-full" id="ewd-urp-dashboard-optional-table">
					<div class="ewd-urp-dashboard-new-widget-box-top">Reviews Summary<span id="ewd-urp-dash-optional-table-down-caret">&nbsp;&nbsp;&#9660;</span><span id="ewd-urp-dash-optional-table-up-caret">&nbsp;&nbsp;&#9650;</span></div>
					<div class="ewd-urp-dashboard-new-widget-box-bottom">
						<table class='ewd-urp-overview-table wp-list-table widefat fixed striped posts'>
							<thead>
								<tr>
									<th><?php _e("Title", 'EWD_ABCO'); ?></th>
									<th><?php _e("Views", 'EWD_ABCO'); ?></th>
									<th><?php _e("Review Rating", 'EWD_ABCO'); ?></th>
								</tr>
							</thead>
							<tbody>
								<?php
									if ( empty( $reviews ) ) {echo "<tr><td colspan='3'>" . __("No reviews to display yet. Create a review and then view it for it to be displayed here.", 'ultimate-reviews') . "</td></tr>";}
									else {
										foreach ( $reviews as $review ) { ?>
											<tr>
												<td><a href='post.php?post=<?php echo $review->ID;?>&action=edit'><?php echo $review->post_title; ?></a></td>
												<td><?php echo get_post_meta($review->ID, 'urp_view_count', true); ?></td>
												<td><?php echo get_post_meta($review->ID, 'EWD_URP_Overall_Score', true); ?></td>
											</tr>
										<?php }
									}
								?>
							</tbody>
						</table>
					</div>
				</div>
		
				<div class="ewd-urp-dashboard-new-widget-box <?php echo ( ($hideReview != 'Yes' and $Ask_Review_Date < time()) ? 'ewd-widget-box-two-thirds' : 'ewd-widget-box-full' ); ?>">
					<div class="ewd-urp-dashboard-new-widget-box-top">What People Are Saying</div>
					<div class="ewd-urp-dashboard-new-widget-box-bottom">
						<ul class="ewd-urp-dashboard-testimonials">
							<?php $randomTestimonial = rand(0,2);
							if($randomTestimonial == 0){ ?>
								<li id="ewd-urp-dashboard-testimonial-one">
									<img src="<?php echo plugins_url( '../assets/img/dash-asset-stars.png', __FILE__ ); ?>">
									<div class="ewd-urp-dashboard-testimonial-title">"Wonderful Solution. 1st-rate Support"</div>
									<div class="ewd-urp-dashboard-testimonial-author">- @lbdee</div>
									<div class="ewd-urp-dashboard-testimonial-text">This plugin adds serious value to WordPress/WooCommerce. Just as impressive is the support which is as responsive as the plugin... <a href="https://wordpress.org/support/topic/wonderful-solution-1st-rate-support/" target="_blank">read more</a></div>
								</li>
							<?php }
							if($randomTestimonial == 1){ ?>
								<li id="ewd-urp-dashboard-testimonial-two">
									<img src="<?php echo plugins_url( '../assets/img/dash-asset-stars.png', __FILE__ ); ?>">
									<div class="ewd-urp-dashboard-testimonial-title">"Great support"</div>
									<div class="ewd-urp-dashboard-testimonial-author">- @aniadealemania</div>
									<div class="ewd-urp-dashboard-testimonial-text">Very nice and helpful support. Thanks guys! <a href="https://wordpress.org/support/topic/great-support-1286/" target="_blank">read more</a></div>
								</li>
							<?php }
							if($randomTestimonial == 2){ ?>
								<li id="ewd-urp-dashboard-testimonial-three">
									<img src="<?php echo plugins_url( '../assets/img/dash-asset-stars.png', __FILE__ ); ?>">
									<div class="ewd-urp-dashboard-testimonial-title">"Great Plugin, greater support"</div>
									<div class="ewd-urp-dashboard-testimonial-author">- @jstjames</div>
									<div class="ewd-urp-dashboard-testimonial-text">The plugin worked exactly as described and when my team needed help installing/figuring something out, they were quick to respond... <a href="https://wordpress.org/support/topic/great-plugin-greater-support-4/" target="_blank">read more</a></div>
								</li>
							<?php } ?>
						</ul>
					</div>
				</div>
		
				<?php if ( ! $permission or get_option("EWD_URP_Trial_Happening") == "Yes" ) { ?>
					<div class="ewd-urp-dashboard-new-widget-box ewd-widget-box-full" id="ewd-urp-dashboard-guarantee-widget-box">
						<div class="ewd-urp-dashboard-new-widget-box-top">
							<div class="ewd-urp-dashboard-guarantee">
								<div class="ewd-urp-dashboard-guarantee-title">14-Day 100% Money-Back Guarantee</div>
								<div class="ewd-urp-dashboard-guarantee-text">If you're not 100% satisfied with the premium version of our plugin - no problem. You have 14 days to receive a FULL REFUND. We're certain you won't need it, though.</div>
							</div>
						</div>
					</div>
				<?php } ?>
		
			</div> <!-- left -->
		
			<div id="ewd-urp-dashboard-content-right">
		
				<?php if ( ! $permission or get_option("EWD_URP_Trial_Happening") == "Yes" ) { ?>
					<div class="ewd-urp-dashboard-new-widget-box ewd-widget-box-full" id="ewd-urp-dashboard-get-premium-widget-box">
						<div class="ewd-urp-dashboard-new-widget-box-top">Get Premium</div>

						<?php if ( get_option( "EWD_URP_Trial_Happening" ) == "Yes" ) { do_action( 'ewd_trial_happening', 'URP' ); } ?>

						<div class="ewd-urp-dashboard-new-widget-box-bottom">
							<div class="ewd-urp-dashboard-get-premium-widget-features-title"<?php echo ( ( get_option("EWD_URP_Trial_Happening") == "Yes" ) ? "style='padding-top: 20px;'" : ""); ?>>GET FULL ACCESS WITH OUR PREMIUM VERSION AND GET:</div>
							<ul class="ewd-urp-dashboard-get-premium-widget-features">
								<li>Search &amp; Review Summary Shortcodes</li>
								<li>WooCommerce Integration</li>
								<li>Admin &amp; Review Reminder Emails</li>
								<li>Advanced Display Options</li>
								<li>+ More</li>
							</ul>
							<a href="https://www.etoilewebdesign.com/license-payment/?Selected=URP&Quantity=1" class="ewd-urp-dashboard-get-premium-widget-button" target="_blank">UPGRADE NOW</a>
							
							<?php if ( ! get_option("EWD_URP_Trial_Happening") ) { 
								$trial_info = sprintf( __( '<a href="%s" target="_blank">Visit our website</a> to learn how to get a free 7-day trial of the premium plugin.'), 'https://www.etoilewebdesign.com/premium-upgrade-instructions/' );		

								echo apply_filters( 'ewd_trial_button', $trial_info, 'URP' );
							} ?>
				</div>
					</div>
				<?php } ?>
		
				<!-- <div class="ewd-urp-dashboard-new-widget-box ewd-widget-box-full">
					<div class="ewd-urp-dashboard-new-widget-box-top">Other Plugins by Etoile</div>
					<div class="ewd-urp-dashboard-new-widget-box-bottom">
						<ul class="ewd-urp-dashboard-other-plugins">
							<li>
								<a href="https://wordpress.org/plugins/ultimate-product-catalogue/" target="_blank"><img src="<?php echo plugins_url( '../images/ewd-urp-icon.png', __FILE__ ); ?>"></a>
								<div class="ewd-urp-dashboard-other-plugins-text">
									<div class="ewd-urp-dashboard-other-plugins-title">Product Catalog</div>
									<div class="ewd-urp-dashboard-other-plugins-blurb">Enables you to display your business's products in a clean and efficient manner.</div>
								</div>
							</li>
							<li>
								<a href="https://wordpress.org/plugins/ultimate-reviews/" target="_blank"><img src="<?php echo plugins_url( '../images/ewd-urp-icon.png', __FILE__ ); ?>"></a>
								<div class="ewd-urp-dashboard-other-plugins-text">
									<div class="ewd-urp-dashboard-other-plugins-title">Ultimate Reviews</div>
									<div class="ewd-urp-dashboard-other-plugins-blurb">Let visitors submit reviews and display them right in the tabbed page layout!</div>
								</div>
							</li>
						</ul>
					</div>
				</div> -->
		
			</div> <!-- right -->	
		
		</div> <!-- us-dashboard-content-area -->
		
		<?php if ( ! $permission or get_option("EWD_URP_Trial_Happening") == "Yes" ) { ?>
			<div id="ewd-urp-dashboard-new-footer-one">
				<div class="ewd-urp-dashboard-new-footer-one-inside">
					<div class="ewd-urp-dashboard-new-footer-one-left">
						<div class="ewd-urp-dashboard-new-footer-one-title">What's Included in Our Premium Version?</div>
						<ul class="ewd-urp-dashboard-new-footer-one-benefits">
							<li>Review Search Shortcode</li>
							<li>Review Summary Shortcode</li>
							<li>Replace WooCommerce Reviews Tab</li>
							<li>Replace WooCommerce Ratings Stars</li>
							<li>Admin Notifications</li>
							<li>Review Reminder Emails</li>
							<li>Admin Approval of Reviews</li>
							<li>Require Login</li>
							<li>Schema Microdata</li>
							<li>Multiple Review Layouts</li>
							<li>Advanced Display Options</li>
						</ul>
					</div>
					<div class="ewd-urp-dashboard-new-footer-one-buttons">
						<a class="ewd-urp-dashboard-new-upgrade-button" href="https://www.etoilewebdesign.com/license-payment/?Selected=URP&Quantity=1" target="_blank">UPGRADE NOW</a>
					</div>
				</div>
			</div> <!-- us-dashboard-new-footer-one -->
		<?php } ?>	
		<div id="ewd-urp-dashboard-new-footer-two">
			<div class="ewd-urp-dashboard-new-footer-two-inside">
				<img src="<?php echo plugins_url( '../assets/img/ewd-logo-white.png', __FILE__ ); ?>" class="ewd-urp-dashboard-new-footer-two-icon">
				<div class="ewd-urp-dashboard-new-footer-two-blurb">
					At Etoile Web Design, we build reliable, easy-to-use WordPress plugins with a modern look. Rich in features, highly customizable and responsive, plugins by Etoile Web Design can be used as out-of-the-box solutions and can also be adapted to your specific requirements.
				</div>
				<ul class="ewd-urp-dashboard-new-footer-two-menu">
					<li>SOCIAL</li>
					<li><a href="https://www.facebook.com/EtoileWebDesign/" target="_blank">Facebook</a></li>
					<li><a href="https://twitter.com/EtoileWebDesign" target="_blank">Twitter</a></li>
					<li><a href="https://www.etoilewebdesign.com/blog/" target="_blank">Blog</a></li>
				</ul>
				<ul class="ewd-urp-dashboard-new-footer-two-menu">
					<li>SUPPORT</li>
					<li><a href="https://www.youtube.com/playlist?list=PLEndQUuhlvSpw3HQakJHj4G0F0Gyc" target="_blank">YouTube Tutorials</a></li>
					<li><a href="https://www.etoilewebdesign.com/support-center/?Plugin=URP&Type=FAQs" target="_blank">Documentation</a></li>
					<li><a href="https://www.etoilewebdesign.com/support-center/" target="_blank">Get Support</a></li>
					<li><a href="https://wordpress.org/plugins/ultimate-reviews/#faq" target="_blank">FAQs</a></li>
				</ul>
			</div>
		</div> <!-- ewd-urp-dashboard-new-footer-two -->
		
	<?php }

	public function display_notice() {
		if ( $this->status ) {
			echo "<div class='updated'><p>" . $this->message . "</p></div>";
		}
		else {
			echo "<div class='error'><p>" . $this->message . "</p></div>";
		}
	}
}
} // endif
