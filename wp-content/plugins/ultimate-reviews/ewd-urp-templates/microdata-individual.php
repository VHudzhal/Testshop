<?php global $ewd_urp_controller; ?>
<div class='ewd-urp-hidden' itemprop='itemReviewed' itemscope itemtype='https://schema.org/<?php echo $ewd_urp_controller->settings->get_setting( 'items-reviewed' ); ?>'>
	<meta itemprop='name' content='<?php echo esc_attr( $this->product_name ); ?>' />
	<div itemprop='aggregateRating' itemscope itemtype='https://schema.org/AggregateRating'>
		<meta itemprop='ratingValue' content='<?php echo esc_attr( $this->score ); ?>' />
		<meta itemprop='ratingCount' content='1' />
		<meta itemprop='bestRating' content='<?php echo $ewd_urp_controller->settings->get_setting( 'maximum-score' ) ?>' />
	</div>
</div>