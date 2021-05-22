<?php global $ewd_urp_controller; ?>

<div class='ewd-urp-microdata ewd-urp-hidden' itemprop='reviewRating' itemscope itemtype='http://schema.org/Rating'>
	<meta itemprop='worstRating' content='1'/>
	<meta itemprop='ratingValue' content='<?php echo esc_attr( $this->score ); ?>'/>
	<meta itemprop='bestRating' content='<?php echo $ewd_urp_controller->settings->get_setting( 'maximum-score' ) ?>'/>
</div>