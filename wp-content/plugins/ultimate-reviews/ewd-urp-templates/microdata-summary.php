<?php global $ewd_urp_controller; ?>
<div class='ewd-urp-microdata ewd-urp-hidden' itemprop='aggregateRating' itemscope itemtype='http://schema.org/AggregateRating'>
	<div itemprop='itemReviewed' itemscope itemtype='https://schema.org/<?php echo $ewd_urp_controller->settings->get_setting( 'items-reviewed' ); ?>'>
		<meta itemprop='name' content='<?php $this->product_name; ?>' />
		<div itemprop='aggregateRating' itemscope itemtype='https://schema.org/AggregateRating'>
			<meta itemprop='ratingValue' content='<?php echo $this->get_average_score(); ?>' />
			<meta itemprop='ratingCount' content='<?php echo count( $this->reviews ); ?>' />
		</div>
	</div>
	<meta itemprop='ratingValue' content='<?php echo $this->get_average_score(); ?>' />
	<meta itemprop='bestRating' content='<?php echo $ewd_urp_controller->settings->get_setting( 'maximum-score' ) ?>' />
	<meta itemprop='reviewCount' content='<?php echo count( $this->reviews ); ?>' />
</div>