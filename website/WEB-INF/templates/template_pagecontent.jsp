<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String pn = request.getParameter("pn");
	String banner = request.getParameter("banner");
%>
<div id="page-banner" class="grid_12">
	<h1 class="page-name"><%=banner%></h1>
</div>
<jsp:include page="<%=pn%>" />
