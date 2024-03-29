<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="false" pageEncoding="UTF-8"%>
<%
String req_uri = request.getAttribute("javax.servlet.forward.request_uri") != null ?  request.getAttribute("javax.servlet.forward.request_uri").toString() : "";
%>
<%@include file="/WEB-INF/templates/page/template_bop.jsp"%>
	<title>Rikulo - Not Found <%=req_uri %></title>
	<link rel="stylesheet" type="text/css" href="/resource/css/error.css" />
<%@include file="/WEB-INF/templates/page/template_header.jsp"%>
		<div class="error404-page grid_12" >
			<div class="img grid_6 alpha omega" >
				<img class="image" src="/resource/img/error/footprints_bg.jpg">
			</div>
			<div class="header grid_5 alpha omega">
				<div class="title">Whoops!</div>
				<div class="desc">
					Looks like the page you are looking for does not exist, sorry.
				</div>
				<div class="button">
	  				<a href="/" title="Let's go back Home">Let's go back Home</a>
		  		</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/templates/page/template_footer.jsp" />
		<script type="text/javascript">
			$(function() {
				$("#error .button").hover(function() {
					var pos = $(this).bgPosSplit();
					$(this).css({backgroundPosition: pos[0] + ' -40px'});
				},function() {
					var pos = $(this).bgPosSplit();
					$(this).css({backgroundPosition: pos[0] + ' 0'});
				});
				$("#error .button-inner").hover(function() {
					var pos = $(this).bgPosSplit();
					$(this).css({backgroundPosition: pos[0] + ' -120px'});
				},function() {
					var pos = $(this).bgPosSplit();
					$(this).css({backgroundPosition: pos[0] + ' -80px'});
				});
			});
		</script>
		<%@include file="/WEB-INF/templates/page/template_eop.jsp"%>
	
