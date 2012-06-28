<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.*,java.util.*,com.potix.website.*"%>
<%
	SimpleDateFormat fmt = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zz");
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
  </div>
</div>
<jsp:include page="/WEB-INF/templates/page/index_newsrow.jsp" />
<div>
  <div>
    <%-- FAKE TEMPLATE FOR FOOTER--%>
    <%@include file="/WEB-INF/templates/page/template_footer.jsp"%>
    <script type="text/javascript" src="/resource/js/page/index.js?b=<%=new java.util.Date().getTime()%>"></script>
    <%@include file="/WEB-INF/templates/page/template_eop.jsp"%>