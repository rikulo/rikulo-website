<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<meta name="description" content="ZK is the leading open source Ajax + Mobile Java Web framework integrating jQuery, Spring, JPA, Hibernate, JavaEE, Grails, Scala and many more.">
<meta name="keywords" content="ZK, Web, Ajax, Web framework, Ajax framekwork, Java framework, RIA, Java, jQuery, Spring, Java EE, Open Source, Groovy, Grails, LGPL">
<meta name="verify-v1" content="gBA1yn9Oo4XnNC1ORE1yoH0Q/ssiWgaPOwCGZAXzM4Q=">
<title>Leading Enterprise Java Web Framework | ZK</title>

 --%>

<link rel="stylesheet" type="text/css" href="/less/index" />
<%@include file="/WEB-INF/templates/page/template_header.jsp"%>
</div>
</div>
<%--END OF TEMPLATE, NO NEED FOR INDEX--%>
<div id="row-banner">
	<div id="row-banner-inner">
		<article> 
			<header class="h5header">
				<h2>Rikulo - Java Ajax Framework</h2>
			</header>
			<div class="banners banner1">
				<div class="banner-img">
					<!--[if lt IE 7]>
			        	<a href="/" title="Rikulo Live Demo">
			        		<img class="img" src="/resource/img/index/src/banner_imagebg.png" alt="Rikulo Live Demo"  title="Rikulo Live Demo"/>
		        		</a>
		        	<![endif]-->
					<!--[if !IE 6]>
						<a href="/" title="Rikulo Live Demo">
							<img class="img" src="/resource/img/index/src/banner_image.png" alt="Rikulo Live Demo" title="Rikulo Live Demo"/>
						</a>
					<![endif]-->
					<!--[if !IE]>-->
						<a href="/" title="Rikulo Live Demo"> 
							<img class="img" src="/resource/img/index/src/banner_image.png" alt="Rikulo Live Demo" title="Rikulo Live Demo" />
						</a>
					<!--<![endif]-->
				</div>
				<section> 
					<header class="header">
						<div class="title">
							<h2 class="text">Unleash creativity, discover endless possibilities</h2>
						</div>
						<p class="desc">Rikulo is a free and open source framework for creating incredible cross-platform native mobile applications.</p>
						<div class="download-button">
							<a href="/"title="Download"> 
								<span class="name">Download</span><br> 
								<span class="version">Version 1.0</span><br> 
								<span class="license">Apache license 2.0</span>
							</a>
						</div>
						<a href="/" class="git-link" title="Other Versions on GitHub">Other Versions on GitHub</a>
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