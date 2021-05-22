<?php global $ewd_urp_controller; ?>

<?php echo esc_html( $this->get_label( 'label-by' ) ); ?>

<?php if ( $ewd_urp_controller->settings->get_setting( 'author-click-filter' ) ) { ?>

	<a href='<?php echo add_query_arg( 'review_author', $this->review_author ); ?>' >
<?php } ?>

<span class='ewd-urp-author' itemprop='author'><?php echo esc_html( $this->review_author ); ?></span>

<?php if ( $ewd_urp_controller->settings->get_setting( 'author-click-filter' ) ) { ?>

	</a>
<?php } ?>