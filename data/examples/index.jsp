<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>		
<div id="page-content" class="examples-page grid_12 clearfix">
	<div class="item grid_4 alpha">
		<a class="img" target="_blank" href="/">
			<img alt="Snake Game" src="/resource/img/examples/demo_snake3.png">
		</a>
		<h3 class="title"><a target="_blank" href="/">
			Snake Game</a></h3>
		<p class="desc">
			Using Rikulo, Dart, HTML 5 and Canvas to create a snake style game
		</p>
		<div class="buttons">
			<a class="demo" target="_blank" href="/">Demo</a>
			<span class="sepbar"></span>
			<a class="source" target="_blank" href="/">Source Code</a>
			<span class="sepbar"></span>
			<a class="blog" target="_blank" href="/">Blog post</a>
		</div>
	</div>
	<div class="item grid_4">
		<a class="img" target="_blank" href="/">
			<img alt="Circles" src="/resource/img/examples/demo_circles.png">
		</a>
		<h3 class="title"><a target="_blank" href="/">
			Circles</a></h3>
		<p class="desc">
			Simple dart game by <a class="highlight" target="_blank" href="/">John Don</a>
		</p>
	</div>
	<div class="item support grid_4 omega">
		<a class="img" target="_blank" href="/">
			<img alt="Spirodraw" src="/resource/img/examples/demo_spirodraw.png">
		</a>
		<h3 class="title"><a target="_blank" href="/">
			Spirodraw</a></h3>
		<p class="desc">
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
			sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
			magna aliquam erat volutpat.
		</p>
	</div>
	<div class="sep clearfix"></div>
	<div class="item grid_4 alpha">
		<a class="img" target="_blank" href="/">
			<img alt="Slider" src="/resource/img/examples/demo_slider2.png">
		</a>
		<h3 class="title"><a target="_blank" href="/">
			Slider</a></h3>
		<p class="desc">
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
			sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
			magna aliquam erat volutpat.
		</p>
	</div>
	<div class="item grid_4">
		<a class="img" target="_blank" href="/">
			<img alt="Scroll View" src="/resource/img/examples/demo_scroll-view.png">
		</a>
		<h3 class="title"><a target="_blank" href="/">
			Scroll View</a></h3>
		<p class="desc">
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
			sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
			magna aliquam erat volutpat.
		</p>
	</div>
	<div class="item grid_4 omega">
		<a class="img" target="_blank" href="/">
			<img alt="Linear Layout" src="/resource/img/examples/demo_linear-layout.png">
		</a>
		<h3 class="title"><a target="_blank" href="/">
			Linear Layout</a></h3>
		<p class="desc">
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
			sed diam nonummy nibh euismod tincidunt ut laoreet dolore 
			magna aliquam erat volutpat.
		</p>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		if (isTouchDevice()) {
			$("#page-content .item .buttons").fadeTo(0, 1);
		} else {
			$("#page-content .item").hover(function() {
				var node = this;
				$('.item').not(this).stop().fadeTo("fast", 0.5);
				$(this).children('.buttons').stop().fadeTo("fast", 1);
			},function() {
				$('.item').stop().fadeTo("fast", 1);
				$(this).children('.buttons').stop().fadeTo("fast", 0);
			});
			$("#page-content .buttons a").hover(function() {
				var pos = $(this).bgPosSplit();
				$(this).css({backgroundPosition: '0 ' + (parseInt(pos[1]) - 48) + 'px'});
			},function() {
				var pos = $(this).bgPosSplit();
				$(this).css({backgroundPosition: '0 ' + (parseInt(pos[1]) + 48) + 'px'});
			});
		}
	});
</script>
