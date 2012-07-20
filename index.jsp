<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="false" pageEncoding="UTF-8"%>
<%@page import="java.text.*,java.util.*,com.potix.website.*,com.potix.website.rikulo.util.*"%>
<%@include file="/WEB-INF/templates/page/template_bop.jsp"%>
<%
	SimpleDateFormat fmt = new SimpleDateFormat(
			"EEE, dd MMM yyyy HH:mm:ss zz");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -10);
	response.setHeader("Last-Modified", fmt.format(new Date()));
	
	String bannerImage = "banner_image_emptybg.png";
	if (ua != null) {//ua declare in template_bop.jsp
		ua = ua.toLowerCase();
		if (WebUtil.isPhone(ua))
			bannerImage = "banner_image_responsive.png";
	}
%>
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
						<img class="responsive-image" alt="Rikulo Live Demo" title="Rikulo Live Demo" 
							src="/resource/img/index/src/<%=bannerImage%>" 
							data-320src="/resource/img/index/src/banner_image_responsive.png" 
							data-fullsrc="/resource/img/index/src/banner_image_emptybg.png"/>
						<iframe class="rikulo-demo" src="/data/index/demo1.html" ></iframe>
					<!--<![endif]-->
				</div>
				<section> 
					<header class="header grid_6">
						<div class="title grid_6 alpha">
							<h2 class="text">Apps on target</h2>
						</div>
						<h1 class="desc grid_6 alpha">Rikulo is a free and open source framework for creating incredible cross-platform web and native mobile applications in Dart &amp; HTML5.</h1>
						<div class="buttons grid_4 alpha">
							<div class="download-button">
								<div class="hover grid_4 alpha omega"></div>	
								<a onclick="_gaq.push(['_trackEvent', 'download', 'rikulo', 'latest']);" href="https://github.com/downloads/rikulo/rikulo/rikulo-2012-07-16.zip" title="Download"> 
									<span class="name">Download</span><br> 
									<span class="version">Latest Version</span><br> 
									<span class="license">Apache license 2.0</span>
								</a>
							</div>
							<a onclick="_gaq.push(['_trackEvent', 'download', 'rikulo-list']);" 
								href="https://github.com/rikulo/rikulo/downloads" 
								class="git-link" title="Other Versions on GitHub">
								Other Versions on GitHub<span></span></a>
						</div>
						<div class="google-plus grid_2 omega">
							<!-- Place this tag where you want the +1 button to render. -->
							<div class="g-plusone" data-href="http://www.rikulo.org"></div>
						</div>
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