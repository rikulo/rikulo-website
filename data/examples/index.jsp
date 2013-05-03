<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>		
<div id="page-content" class="examples-page grid_12 clearfix">
	<div class="item grid_4 alpha">
		<a class="img" href="/resource/js/examples/index-snake.html">
			<img alt="Snake Game" src="/resource/img/examples/demo_snake.png">
		</a>
		<h3 class="title"><a href="/resource/js/examples/index-snake.html">
			Snake Game</a></h3>
		<p class="desc">
			Implement a simple Snake game using Rikulo's canvas
		</p>
		<div class="buttons">
			<a class="demo" href="/resource/js/examples/index-snake.html">Demo</a>
			<span class="sepbar"></span>
			<a class="source" href="https://github.com/rikulo/ui/tree/master/example/snake">Source Code</a>
			<span class="sepbar"></span>
			<a class="blog" href="http://blog.rikulo.org/posts/2012/Jul/Tutorial/creating-a-snake-game-using-rikulo-html-5-and-the-canvas/">Blog post</a>
		</div>
	</div>
	<div class="item grid_4">
		<a class="img" href="/resource/js/examples/index-bootjackdquery.html">
			<img alt="Bootjack" src="/resource/img/examples/demo_bootjack.png">
		</a>
		<h3 class="title"><a href="/resource/js/examples/index-bootjackdquery.html">
			Bootjack</a></h3>
		<p class="desc">
			Bring the power of Twitter Bootstrap and jQuery into your Dart application
		</p>
		<div class="buttons">
			<a class="demo" href="/resource/js/examples/index-bootjackdquery.html">Demo</a>
			<span class="sepbar"></span>
			<a class="source" href="https://github.com/rikulo/bootjack/blob/master/example/demo.dart">Source Code</a>
			<span class="sepbar"></span>
			<a class="blog" href="http://blog.rikulo.org/posts/2013/May/General/bootjack-and-dquery/">Blog post</a>
		</div>
	</div>
	<div class="item support grid_4 omega">
		<a class="img" href="/resource/js/examples/index-angryhead.html">
			<img alt="Angry Head" src="/resource/img/examples/demo_angryhead.png">
		</a>
		<h3 class="title"><a href="/resource/js/examples/index-angryhead.html">
			Angry Head</a></h3>
		<p class="desc">
			Learn how to bounce a head around a container without a canvas
		</p>
		<div class="buttons">
			<a class="demo" href="/resource/js/examples/index-angryhead.html">Demo</a>
			<span class="sepbar"></span>
			<a class="source" href="https://github.com/rikulo/ui/blob/master/test/TestAnimation3.dart">Source Code</a>
		</div>
	</div>
	<div class="sep clearfix"></div>
	<div class="item grid_4 alpha">
		<a class="img" href="/resource/js/examples/index-star.html">
			<img alt="Star Chart" src="/resource/img/examples/demo_scroll-view-starchart.png">
		</a>
		<h3 class="title"><a href="/resource/js/examples/index-star.html">
			Star Chart</a></h3>
		<p class="desc">
			Create the stars using Rikulo's ScrollView!
		</p>
		<div class="buttons">
			<a class="demo" href="/resource/js/examples/index-star.html">Demo</a>
			<span class="sepbar"></span>
			<a class="source" href="https://github.com/rikulo/ui/blob/master/example/scroll-view/StarChartDemo.dart">Source Code</a>
		</div>
	</div>
	<div class="item grid_4">
		<a class="img" href="/resource/js/examples/index-list.html">
			<img alt="List" src="/resource/img/examples/demo_scroll-view-list.png">
		</a>
		<h3 class="title"><a href="/resource/js/examples/index-list.html">
			List</a></h3>
		<p class="desc">
			List your data using Rikulo's ScrollView
		</p>
		<div class="buttons">
			<a class="demo" href="/resource/js/examples/index-list.html">Demo</a>
			<span class="sepbar"></span>
			<a class="source" href="https://github.com/rikulo/ui/blob/master/example/scroll-view/ListViewDemo.dart">Source Code</a>
			<span class="sepbar"></span>
			<a class="blog" href="http://blog.rikulo.org/posts/2012/Jul/Tutorial/building-a-list-view-demo-using-rikulo/">Blog post</a>
		</div>
	</div>
	<div class="item grid_4 omega">
		<a class="img" href="/resource/js/examples/index-grid.html">
			<img alt="Grid" src="/resource/img/examples/demo_scroll-view-grid.png">
		</a>
		<h3 class="title"><a href="/resource/js/examples/index-grid.html">
			Grid</a></h3>
		<p class="desc">
			Display a large amount of data in a Grid using Rikulo's ScrollView
		</p>
		<div class="buttons">
			<a class="demo" href="/resource/js/examples/index-grid.html">Demo</a>
			<span class="sepbar"></span>
			<a class="source" href="https://github.com/rikulo/ui/blob/master/example/scroll-view/GridViewDemo.dart">Source Code</a>
			<span class="sepbar"></span>
			<a class="blog" href="http://blog.rikulo.org/posts/2012/Aug/Tutorial/building-a-grid-demo-using-rikulo/">Blog post</a>
		</div>
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
