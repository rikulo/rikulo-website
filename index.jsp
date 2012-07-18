<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="false" pageEncoding="UTF-8"%>
<%@page import="java.text.*,java.util.*,com.potix.website.*"%>
<%
	SimpleDateFormat fmt = new SimpleDateFormat(
			"EEE, dd MMM yyyy HH:mm:ss zz");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -10);
	response.setHeader("Last-Modified", fmt.format(new Date()));
%>
<%@include file="/WEB-INF/templates/page/template_bop.jsp"%>
<%--
<meta name="alexaVerifyID" content="Pm7SNmKasZyei0xlIk-o1dFuxro">
<meta name="verify-v1" content="gBA1yn9Oo4XnNC1ORE1yoH0Q/ssiWgaPOwCGZAXzM4Q=">
--%>
<meta name="description" content="Rikulo is a free and open source framework for creating incredible cross-platform native mobile applications in Dart and HTML5.">
<meta name="keywords" content="Rikulo, Web, Mobile, Dart, Web framework, Ajax framekwork, Open Source, Apache">
<title>Web and Mobile Apps in Dart | Rikulo</title>

<link rel="stylesheet" type="text/css" href="/less/index" />
    
<%@include file="/WEB-INF/templates/page/template_header.jsp"%>
</div>
</div>
<%--END OF TEMPLATE, NO NEED FOR INDEX--%>
<div id="row-banner">
	<div id="row-banner-inner" class="container_12 clearfix">
		<article> 
			<header class="h5header">
				<h2>Rikulo - Web and Mobile in Dart</h2>
			</header>
			<div class="banners banner1">
				<div class="banner-img grid_6">
					<!--[if lt IE 7]>
		        		<img class="img" src="/resource/img/index/src/banner_imagebg.png" alt="Rikulo Live Demo"  title="Rikulo Live Demo"/>
		        	<![endif]-->
					<!--[if !IE 6]>
						<img class="img" src="/resource/img/index/src/banner_image.png" alt="Rikulo Live Demo" title="Rikulo Live Demo"/>
					<![endif]-->
					<!--[if !IE]>-->
						<img class="img" src="/resource/img/index/src/banner_image_emptybg.png" alt="Rikulo Live Demo" title="Rikulo Live Demo" />
						<iframe class="rikulo-demo" src="/data/index/demo1.html" ></iframe>
					<!--<![endif]-->
				</div>
				<section> 
					<header class="header grid_6">
						<div class="title">
							<h2 class="text">Apps on target</h2>
						</div>
						<h1 class="desc">Rikulo is a free and open source framework for creating incredible cross-platform web and native mobile applications in Dart &amp; HTML5.</h1>
						<div>
							<div class="download-button">
								<div class="hover"></div>	
								<a onclick="_gaq.push(['_trackEvent', 'download', 'rikulo', 'latest']);" href="https://github.com/downloads/rikulo/rikulo/rikulo-2012-07-18.zip" title="Download"> 
									<span class="name">Download</span><br> 
									<span class="version">Latest Version</span><br> 
									<span class="license">Apache license 2.0</span>
								</a>
							</div>
							<div class="google-plus">
								<!-- Place this tag where you want the +1 button to render. -->
								<div class="g-plusone" data-href="http://www.rikulo.org"></div>
								
								<!-- Place this tag after the last +1 button tag. -->
								<script type="text/javascript">
								  (function() {
								    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
								    po.src = 'https://apis.google.com/js/plusone.js';
								    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
								  })();
								</script>
							</div>	
						</div>
						<a onclick="_gaq.push(['_trackEvent', 'download', 'rikulo-list']);" href="https://github.com/rikulo/rikulo/downloads" class="git-link" title="Other Versions on GitHub">Other Versions on GitHub<span></span></a>
					</header> 
				</section>
			</div>
		</article>
	</div>
</div>
<jsp:include page="/WEB-INF/templates/page/index_articlerow.jsp" />
<div>
	<div>
		<%-- FAKE TEMPLATE FOR FOOTER--%>
		<%@include file="/WEB-INF/templates/page/template_footer.jsp"%>
		<script type="text/javascript"
			src="/resource/js/page/index.js?b=<%=new java.util.Date().getTime()%>"></script>
		<%@include file="/WEB-INF/templates/page/template_eop.jsp"%>