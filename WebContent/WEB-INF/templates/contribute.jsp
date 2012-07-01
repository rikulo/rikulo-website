<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.potix.website.*"%>
<%
	String pn = request.getParameter("pn");
%>

<title>Contribute | Rikulo</title>
<link rel="stylesheet" type="text/css" href="/less/contribute" media="all" />

<%@include file="/WEB-INF/templates/page/template_header.jsp"%>
 <jsp:include page="<%=pn %>" />
