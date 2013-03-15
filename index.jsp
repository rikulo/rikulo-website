<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="false" pageEncoding="UTF-8"%>
<%@page import="java.text.*,java.util.*"%>
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
<meta name="description" content="Rikulo is a free and open source framework for creating incredible cross-platform web, native mobile and server applications in Dart and HTML5.">
<meta name="keywords" content="Rikulo, Web, Mobile, Dart, Web framework, Dart server, Mobile framekwork, Open Source, Apache, PhoneGap, Cordova">
<title>Web and Mobile Dart Framework | Rikulo</title>

<link rel="stylesheet" type="text/css" href="/less/index" />
    
<%@include file="/WEB-INF/templates/page/template_header.jsp"%>
</div>
</div>
<style type="text/css">
		
</style>

<div id="row-banner">
	<div id="row-banner-mobile" class="container_12 clearfix">
		<div class="mobile-item clearfix">
			<a href="/projects/ui"></a>
			<div class="project-name-mobile">
				Rikulo UI
			</div>
			<div class="project-image-mobile rikulo-ui-image-mobile">

			</div>
			<div class="project-text-mobile">Rikulo UI is a free and open source Dart framework for creating incredible cross-platform web and native mobile applications using HTML5.
			</div>
		</div>

		<div class="mobile-item clearfix">
			<a href="/projects/stream"></a>
			<div class="project-name-mobile">
				Rikulo Stream
			</div>
			<div class="project-image-mobile rikulo-stream-image-mobile">
			</div>
			<div class="project-text-mobile">Rikulo Stream is a Dart web server supporting request routing, filtering, template technology, file-based static resources and MVC design pattern.
			</div>
		</div>
	</div>
	<div id="row-banner-inner" class="container_12 clearfix">
		<article> 
			<header class="h5header">
				<h2>Rikulo - Web and Mobile in Dart</h2>
				<h2>Build amazing native mobile application in Dart and Cordova (PhoneGap)</h2>
			</header>
			<div id="banner-accordion" class="ipad-banner">
				<div class="accord accord-trans-large">
					<div class="accord-name ui_selected">
					</div>
					<div class="accord-info">
						<div class="firstPart">
							<header class="header">
								<div class="title">
									<h2 class="text">UI on target</h2>
								</div>
								<h1 class="desc"><span style="font-weight:bold;"><a href="/projects/ui" style="color: #0D0D0D; font-size: 18px;">Rikulo UI</a></span> is a free and open source Dart framework for creating incredible cross-platform web and native mobile applications using HTML5.</h1>
							</header>
							<div class="buttons grid_4 alpha">
								<div class="install">
									<div class="download-button">	
										<a title="Install Instructions" href="http://docs.rikulo.org/ui/latest/Getting_Started/Introduction.html" onclick="_gaq.push(['_trackEvent', 'install', 'rikulo', 'latest']);"> 
										</a>
									</div>
									<a title="Rikulo on Github" class="git-link" href="https://github.com/rikulo/ui/" onclick="_gaq.push(['_trackEvent', 'clone', 'rikulo']);">
									Clone us on GitHub<span></span></a>
								</div>
								<div class="examples">
									<a title="See the Rikulo UI project page" href="/projects/ui"> 
									</a>
								</div>
							</div>
						</div>
						<div class="secondPart rikulo-ui-image">
							<iframe src="/data/index/demo1.html" class="rikulo-demo"></iframe>
						</div>
					</div>
				</div>
				<div class="accord">
					<div class="accord-name server">
					</div>
					<div class="accord-info">
						<div class="firstPart">
							<div class="title">
									<h2 class="text">Serve your Web</h2>
								</div>
							<h1 class="desc"><span style="font-weight:bold;"><a href="/projects/stream" style="color: #0D0D0D; font-size: 18px;">Rikulo Stream</a></span> is a Dart web server supporting request routing, template technology, file-based static resources and MVC design pattern.</h1>
							<div class="buttons grid_4 alpha">
								<div class="install">
									<div class="download-button">	
										<a title="Install Instructions" href="http://docs.rikulo.org/stream/latest/Getting_Started/Introduction.html" onclick="_gaq.push(['_trackEvent', 'install', 'rikulo', 'latest']);"> 
										</a>
									</div>
									<a title="Rikulo on Github" class="git-link" href="https://github.com/rikulo/stream" onclick="_gaq.push(['_trackEvent', 'clone', 'rikulo']);">
									Clone us on GitHub<span></span></a>
								</div>
								<div class="examples">
									<a title="See the Rikulo Stream project page" href="/projects/stream"> 
									</a>
								</div>
							</div>
						</div>
						<div class="secondPart rikulo-stream-image">
							<a href="/projects/stream" ></a>
						</div>
					</div>
				</div>
			</div>
		</article>
	</div>
</div>
<script type="text/javascript">
	var accords = $('.accord');
	var currentAccord = $('#banner-accordion > :first-child');
	var currentAccord_name = $(currentAccord).find('> :first-child');
	var transSupported = Modernizr.csstransitions;

	$(accords).click(function() {
		var clicked = $(this);

		//if already selected do nothing
		if(clicked.is(currentAccord)) {
			return;
		}

		var clicked_accordion_name = clicked.find('> :first-child');

		if($(clicked_accordion_name).hasClass('ui')) {
			$(clicked_accordion_name).addClass("ui_selected").removeClass("ui");
			$(currentAccord_name).addClass("server").removeClass("server_selected");
		} else {
			$(clicked_accordion_name).addClass("server_selected").removeClass("server");
			$(currentAccord_name).addClass("ui").removeClass("ui_selected");
		}

		if(transSupported) {
			$(currentAccord).addClass("accord-trans-small").removeClass("accord-trans-large");
			$(clicked).addClass("accord-trans-large").removeClass("accord-trans-small");
		} else {
			$(currentAccord).animate({"width": "40px"}, { queue: false, duration:600 });
			$(clicked).animate({"width": "908px"}, { queue: false, duration:600});
		}

		currentAccord = clicked;
		currentAccord_name = clicked.find('> :first-child');
	});
</script>
<jsp:include page="/WEB-INF/templates/page/index_articlerow.jsp" />
<div>
	<div>
		<%-- FAKE TEMPLATE FOR FOOTER--%>
		<%@include file="/WEB-INF/templates/page/template_footer.jsp"%>
		<script type="text/javascript"
			src="/resource/js/page/index.js?b=<%=new java.util.Date().getTime()%>"></script>
		<%@include file="/WEB-INF/templates/page/template_eop.jsp"%>
