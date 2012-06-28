<%
String req_uri = request.getAttribute("javax.servlet.forward.request_uri") != null ?  request.getAttribute("javax.servlet.forward.request_uri").toString() : "";
String req_search = req_uri.replaceAll("index.dsp","").replaceAll("/"," ");
%>
<%@include file="/WEB-INF/templates/page/template_bop.jsp"%>
	<title><%=req_uri %>  Under Maintenance | ZK</title>
	<link rel="stylesheet" type="text/css" href="/resource/css/error.css" />
<%@include file="/WEB-INF/templates/page/template_header.jsp"%>
		<div id="error">
			<h1>Under Maintenance</h1>
			
			<h3>The requested URL is under maintenance. </h3>
			<img src="/img/under_maintenance.gif" />
			<form id="cse-search-box2" class="search" action="/doc/searchresult.jsp">
						Try Search
						<input type="hidden" value="008321236477929467003:63kdpeqkkvw" name="cx">
						<input type="hidden" value="FORID:11" name="cof">
						<input id="q2" type="text" value="<%=req_search %>" size="30" name="q">
						<input type="image" name="sa" src="/img/search-bt.gif" id="sa2">
			</form>
			<ul>				
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
	
