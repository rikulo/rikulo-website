<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>		
<div id="page-content"  class="contribute-page grid_12 clearfix">
	<article>
	<div id="banner" class="container_12 clearfix">
		<div class="grid_6 project-image">
			<!--[if IE]>
				<img class="img" src="/resource/img/index/src/banner_image.png" alt="Rikulo Live Demo" title="Rikulo Live Demo"/>
			<![endif]-->
			<!--[if !IE]>-->
			<img class="responsive-image" alt="Rikulo Live Demo" title="Rikulo Live Demo" 
				src="/resource/img/index/src/banner_image.png" 
				data-320src="/resource/img/projects/image_rikuloui_responsive-phone.png" 
				data-fullsrc="/resource/img/index/src/banner_image.png"/>
			<iframe class="rikulo-demo" src="/data/index/demo1.html" ></iframe>
			<!--<![endif]-->
		</div>
		<section>
		<div class="grid_6">
			<header class="header">
				<div class="title">
					<h2 class="text">UI on target</h2>
				</div>
				<h1 class="desc">Rikulo UI is a free and open source Dart framework for creating incredible cross-platform web and native mobile applications using HTML5.</h1>

				<div class="buttons grid_4 alpha">
					<div class="install">
						<div class="download-button">	
							<a title="Install Instructions" href="http://docs.rikulo.org/rikulo/ui/Getting_Started/Introduction.html" onclick="_gaq.push(['_trackEvent', 'install', 'rikulo', 'latest']);"> 
							</a>
						</div>
						<a title="Rikulo on Github" class="git-link" href="https://github.com/rikulo/ui/" onclick="_gaq.push(['_trackEvent', 'clone', 'rikulo']);">
						Clone us on GitHub<span></span></a>
					</div>
					<div class="examples">
						<a title="See the Examples" href="/examples/"> 
						</a>
					</div>
				</div>
			</header>
		</div>
		</section>
	</div>
	</article>
	<div class="sep clearfix"></div>
	<div id="bottom" class="container_12 clearfix">
		<div class="grid_4">
			<h2>Features</h2>
			<ul class="features">
				<li>Structured UI model</li>
				<li>Responsive user experience across desktop &amp; touch devices</li>
				<li>MVC architecutre</li>
				<li>UXL for defining UI in XML</li>
				<li>Flexible and precise layout control</li>
				<li>Cordova/PhoneGap integeration</li>
			</ul>
		</div>
		<div class="grid_4">
			<h2>Examples</h2>
			<div class="example clearfix" onClick="">
				<a href="/resource/js/examples/index-snake.html">
					<img src="/resource/img/examples/demo_snake.png" alt="Snake Game">
					<span>Implement a simple Snake game using Rikulo's canvas</span>
				</a>
			</div>
			<div class="example clearfix">
				<a href="/resource/js/examples/index-star.html">
					<img src="/resource/img/examples/demo_scroll-view-starchart.png" alt="Star Chart">
					<span>Create the stars using Rikulo's ScrollView!</span>
				</a>
			</div>
			<div class="example clearfix">
				<a href="/examples">
					More examples
				</a>
			</div>
		</div>
		<div class="grid_4 clearfix">
			<h2>Links</h2>
			<ul class="features">
				<li><a href="/learn/">Learn about Rikulo UI</a></li>
				<li><a href="/contribute/">Contribute to Rikulo UI</a></li>
				<li><a href="/discuss/">Get help with Rikulo UI</a></li>
			</ul>
		</div>
	</div>
</div>