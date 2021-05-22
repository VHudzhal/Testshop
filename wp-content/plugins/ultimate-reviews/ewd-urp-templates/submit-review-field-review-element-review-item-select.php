<?php global $ewd_urp_controller; ?>

<div class='ewd-urp-meta-field'>

	<label for='overall_score' class='ewd-urp-submit-review-label'>
		<?php echo esc_attr( $this->get_element_name() ); ?> <?php echo esc_html( $this->get_score_label() ); ?>:
	</label>

	<select class='ewd-urp-dropdown-score-input' id='ewd-urp-<?php echo esc_attr( $this->get_element_input_name() ); ?>' name='<?php echo esc_attr( $this->get_element_input_name() ); ?>' <?php echo $this->element_required(); ?> />
		
		<?php for ( $i = $ewd_urp_controller->settings->get_setting( 'maximum-score' ); $i >= 1 ; $i-- ) { ?>
			<option value='<?php echo $i; ?>'><?php echo $i; ?></option>
		<?php } ?>
		
	</select>

	<?php echo ( $ewd_urp_controller->settings->get_setting( 'review-style' ) == 'percentage' ? '%' : '' ); ?>
	<?php echo ( $ewd_urp_controller->settings->get_setting( 'review-style' ) == 'stars' ? __( 'out of ', 'ultimate-reviews' ) . $ewd_urp_controller->settings->get_setting( 'maximum-score' ) : '' ); ?>

</div>