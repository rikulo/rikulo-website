<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="page-content" class="learn-page grid_12 clearfix">
		<%
			String product = request.getParameter("project");
			boolean isEmpty = product == null || product.length() == 0;
		
			if (isEmpty || "ui".equals(product)) {
		%>
		
		<div id="rikulo-ui" class="item container_12 alpha">
			<h1 class="section-title">Rikulo UI</h1>
			<div class="container_12 clearfix">
				<div class="getting_started grid_4 alpha">
						<h2>Getting Started</h2>
						<ul class="items">
							<%-- Jumpping to github might confuse for new users (might enable it when we have official release)
							<li><a onclick="_gaq.push(['_trackEvent', 'download', 'rikulo-list']);" href="https://github.com/rikulo/ui/downloads" title="Download Rikulo">Download Rikulo</a></li>
							--%>
							<li><a href="http://blog.rikulo.org/posts/2012/Jul/General/the-rikulo-way/" title="The Rikulo Way">The Rikulo Way</a></li>
							<li><a href="http://docs.rikulo.org/ui/latest/Getting_Started/Hello_World.html" title="Tutorial">Tutorial</a></li>
						</ul>
				</div>
				<div class="reference grid_4">
					<h2>Reference</h2>
					<ul class="items">
						<li><a href="http://docs.rikulo.org" title="Documentation">Documentation</a></li>
						<li>API Reference
							<ul>
								<li><a href="http://api.rikulo.org" title="Rikulo API Reference">Rikulo UI API</a></li>
								<li><a href="http://api.rikulo.org/uxl/latest/" title="Rikulo UXL API Reference">Rikulo UXL API</a></li>
								<li><a href="http://api.rikulo.org/gap/latest/" title="Rikulo Gap API Reference">Rikulo Gap API</a></li>
								<li><a href="http://api.rikulo.org/commons/latest/" title="Rikulo Commons API Reference">Rikulo Commons API</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="support grid_4 omega">
					<h2>Support</h2>
					<ul class="items">
						<li><a onclick="_gaq.push(['_trackEvent', 'question', 'support-stack']);" href="http://stackoverflow.com/questions/tagged/rikulo" title="Discussion at Stackoverflow">Discussion</a></li>
						<li><a href="https://github.com/rikulo/ui/issues" title="Issues">Issues</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="sep clearfix"></div>
		<%
			}
			if (isEmpty || "stream".equals(product)) {
		%>
		<div id="rikulo-stream" class="container_12 clearfix">
			<h1 class="section-title">Rikulo Stream</h1>

			<div class="container_12 clearfix">
				<div class="getting_started grid_4 alpha">
					<h2>Getting Started</h2>
					<ul class="items">
						<%-- Jumpping to github might confuse for new users (might enable it when we have official release)
						<li><a onclick="_gaq.push(['_trackEvent', 'download', 'rikulo-list']);" href="https://github.com/rikulo/ui/downloads" title="Download Rikulo">Download Rikulo</a></li>
						--%>
						<li><a href="http://docs.rikulo.org/stream/latest/Getting_Started/Introduction.html" title="Introduction to Rikulo Stream">Introduction &amp; Installation</a></li>
					</ul>
				</div>
				<div class="reference grid_4">
					<h2>Reference</h2>
					<ul class="items">
						<li><a href="http://docs.rikulo.org/stream/latest/" title="Documentation">Documentation</a></li>
						<li>API Reference
							<ul>
								<li><a href="http://api.rikulo.org/stream/latest" title="Rikulo API Reference">Rikulo Steam API</a></li>
								<li><a href="http://api.rikulo.org/commons/latest/" title="Rikulo Commons API Reference">Rikulo Commons API</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="support grid_4 omega">
					<h2>Support</h2>
					<ul class="items">
						<li><a onclick="_gaq.push(['_trackEvent', 'question', 'support-stack']);" href="http://stackoverflow.com/questions/tagged/rikulo" title="Discussion at Stackoverflow">Discussion</a></li>
						<li><a href="https://github.com/rikulo/stream/issues" title="Issues">Issues</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="sep clearfix"></div>
		<%
			}
		%>
		<div class="grid_12">
			<div class="item license grid_6 alpha">
				<h2>Licensing</h2>
				<div class="license-cnt">
					<img alt="Apache License" src="/resource/img/learn/apachelicense.png"/>
					<blockquote>
						<p>Rikulo is licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0.html">Apache Software License 2.0</a>. 
							You can use it wherever you please, including open source and commercial applications.
						</p>
					</blockquote>
				</div>
			</div>
		</div>
</div>