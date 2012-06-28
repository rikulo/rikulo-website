<%
String req_uri = request.getAttribute("javax.servlet.forward.request_uri") != null ?  request.getAttribute("javax.servlet.forward.request_uri").toString() : "";
String req_search = req_uri.replaceAll("index.dsp","").replaceAll("/"," ");
%>
<%@include file="/WEB-INF/templates/page/template_bop.jsp"%>
	<title>ZK - Exception <%=req_uri %></title>
	<link rel="stylesheet" type="text/css" href="/resource/css/error.css" />
<%@include file="/WEB-INF/templates/page/template_header.jsp"%>
		<div id="error">
			<h1>Sorry, Exception</h1>
			
			<h3>The requested URL was not found on this server. </h3>
			<form id="cse-search-box2" class="search" action="/doc/searchresult.jsp">
						Try Search
						<input type="hidden" value="008321236477929467003:63kdpeqkkvw" name="cx">
						<input type="hidden" value="FORID:11" name="cof">
						<input id="q2" type="text" value="<%=req_search %>" size="30" name="q">
						<input type="image" name="sa" src="/img/search-bt.gif" id="sa2">
			</form>
			<ul>
				<li>The purpose of this is to convey to you our sincere apologies
				for any inconvenience you may have experienced recently with respect to
				visiting our website. We are sorry to tell you that we perform some
				major infrastructure maintenance for server upgrade. We promise that
				the website will be running smoothly in the following few days. Thanks
				for you patience!</li>
				<li>Check URL spelling and try again.</li>
				<li>If this problem remains, please <a href="mailto:webmaster@potix.com">inform us</a>.</li>
			</ul>
			<div align="center"><a href="/">Back to ZK </a></div>
		</div>
		<jsp:include page="/WEB-INF/templates/page/template_footer_simple.jsp" />
		<script type="text/javascript">
			$(function(){
				$("#q2").focus().select();
			});
		</script>
		<%@include file="/WEB-INF/templates/page/template_eop.jsp"%>
	
