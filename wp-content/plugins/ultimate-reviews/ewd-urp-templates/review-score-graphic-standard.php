<?php global $ewd_urp_controller; ?>

<div class='ewd-urp-review-graphic ewd-urp-review-skin-<?php echo esc_attr( $this->reviews_skin );?>'>

	<?php for ( $i = 1; $i <= $ewd_urp_controller->settings->get_setting( 'maximum-score'); $i++ ) { ?>
		
		<?php if ( $i <= ( $this->score + .25 ) ) { ?> <div class='ewd-urp-graphic-full'></div> 
		<?php } elseif ( $i <= ( $this->score + .75 ) ) { ?> <div class='ewd-urp-graphic-half'></div>
		<?php } else { ?> <div class='ewd-urp-graphic-empty'></div> <?php } ?>
	<?php } ?>

</div>