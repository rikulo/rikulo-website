<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.potix.website.*"%>
<%
	String pn = request.getParameter("pn");
	String banner = request.getParameter("banner");
%>
<div id="page-banner">
	<h1 class="page-name"><%=banner%></h1>
</div>
<jsp:include page="<%=pn%>" />
