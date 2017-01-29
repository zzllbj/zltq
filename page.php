<?php get_header(); ?>


<div class="row">
  <div class="span8">

	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
		<h1><?php the_title(); ?></h1>
	  	<?php the_content(); ?>

	<?php endwhile; else: ?>
		<p><?php _e('您好， 这个页面没有文章.'); ?></p>
	<?php endif; ?>

  </div>
  <div class="span4">
	<h2>Sidebar</h2>	
  </div>
</div>


<?php get_footer(); ?>