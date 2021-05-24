<?php
/**
 * The template for displaying all pages
 * Template Name: Home page
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Shop_theme
 */

get_header();
?>

	<main id="primary" class="site-main">
        <section class="main-header">
            <div class="popular-title">
                <span class="hor-line"></span>
                <label for="">Popular products</label>
            </div>
        </section>
<div class="popular-products-slider slider single-item container">
        <?php $slider = get_field( 'slider' ); ?>
        <?php if ( $slider ) : ?>
            <?php foreach ( $slider as $post ) : ?>
                <?php setup_postdata ( $post ); ?>
            <?php wc_get_template_part('content', 'product-home')?>
<!--                <a href="--><?php //the_permalink(); ?><!--">--><?php //the_title(); ?><!--</a>-->
            <?php endforeach; ?>
            <?php wp_reset_postdata(); ?>
        <?php endif; ?>
</div>
		<?php

//		while ( have_posts() ) :
//			//the_post();
//
//			//get_template_part( 'template-parts/content', 'page' );
//
//			// If comments are open or we have at least one comment, load up the comment template.
//			if ( comments_open() || get_comments_number() ) :
//			//	comments_template();
//			endif;
//
//		endwhile; // End of the loop.
		?>

	</main><!-- #main -->

<?php
get_sidebar();
get_footer();
