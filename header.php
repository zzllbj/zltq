<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Bootstrap测试学习</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Le styles -->
    <link href="<?php bloginfo('stylesheet_url');?>" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <?php wp_enqueue_script("jquery"); ?>
    <?php wp_head(); ?>
  </head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
          <ul class="nav nav-tabs">
              <?php wp_list_pages(array('title_li' => '', 'exclude' => 4)); ?>
          </ul>
        </div><!--/.nav-collapse -->
	</nav>

<div class="page-header">
  <h1><?php bloginfo('name'); ?><small>Subtext for header</small></h1>
</div>
<div class="container">