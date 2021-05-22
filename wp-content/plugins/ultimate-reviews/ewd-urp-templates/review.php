<?php global $ewd_urp_controller; ?>

<div <?php echo ewd_format_classes( $this->classes ); ?>  <?php echo ( $ewd_urp_controller->settings->get_setting( 'display-microdata' ) ? 'itemprop="review" itemscope itemtype="http://schema.org/Review"' : '' ); ?>>

	<?php $this->print_microdata(); ?>

	<?php $this->maybe_print_header_image(); ?>

	<?php $this->maybe_print_product_name(); ?>

	<div class='ewd-urp-review-header' data-postid='<?php echo $this->unique_id; ?>-<?php echo $this->ID; ?>'>

		<?php $this->maybe_print_verified_buyer(); ?>

		<?php $this->print_score(); ?>

		<?php $this->maybe_print_inappropriate_flag(); ?>

		<?php $this->maybe_print_karma(); ?>

		<?php $this->print_title(); ?>

	</div>

	<div class='ewd-urp-clear'></div>

	<div class='ewd-urp-review-content <?php echo ( $this->review_format == 'expandable' ? 'ewd-urp-content-hidden' : '' ); ?>' id='ewd-urp-review-content-<?php echo $this->unique_id; ?>-<?php echo $this->ID; ?>' data-postid='<?php echo $this->unique_id; ?>-<?php echo $this->ID; ?>'>

		<?php $this->maybe_print_author_date_categories(); ?>

		<div class='ewd-urp-clear'></div>

		<?php $this->maybe_print_image(); ?>

		<?php $this->maybe_print_video(); ?>

		<div class='ewd-urp-clear'></div>

		<div class='ewd-urp-review-body' id='ewd-urp-body-<?php echo $this->unique_id; ?>'>

			<div class='ewd-urp-review-margin ewd-urp-review-post' id='ewd-urp-review-<?php echo $this->unique_id; ?>' itemprop='reviewBody'><?php echo apply_filters( 'the_content', html_entity_decode( $this->get_printable_content() ) ); ?></div>

			<?php $this->maybe_print_read_more(); ?>

		</div>

	<?php $this->maybe_print_indepth_fields(); ?>

	<?php $this->maybe_print_comments(); ?>

	</div>

	<div class='ewd-urp-clear'></div>

</div>