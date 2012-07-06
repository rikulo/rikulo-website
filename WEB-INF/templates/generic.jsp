<%@ page buffer="4096kb" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.potix.website.rikulo.*,java.text.*,java.util.*,java.io.*"%>
<%
	String header = request.getParameter("hd");
	String footer = request.getParameter("ft");		
	String title= request.getParameter("t");
	String menu = request.getParameter("menu");
	String path = request.getParameter("p");
	String styleSheet = request.getParameter("css");
	if (menu != null && menu.length() > 0)
		request.setAttribute(Consts.MENU_CATEGORY, Consts.getMenuCategory(menu.toLowerCase())); 	
	path = path.toLowerCase().replace("web-inf","WEB-INF");
	SimpleDateFormat fmt = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zz");
	response.setHeader("Pragma","no-cache"); 
	response.setDateHeader("Expires", -10);
	response.setHeader("Last-Modified", fmt.format(new Date())); 
	//System.out.println("template--->" + request.getQueryString());
%>
<%@include file="/WEB-INF/templates/page/template_bop.jsp"%>	
<% if (title != null) {%>
	<title><%=title %></title>
<% } %>

<% if (styleSheet != null) {%>
	<link rel="stylesheet" type="text/css" href="<%=styleSheet %>" />
<% } %>

<% if (header == null || header.length() == 0) {%>
	<%@include file="/WEB-INF/templates/page/template_header.jsp"%>	
<% } %>

<% if (path != null) {
%>
<jsp:include page="<%=path %>" />
<% } %>

<% if (footer == null || footer.length() == 0) {%>
	<jsp:include page="/WEB-INF/templates/page/template_footer.jsp" />
	<jsp:include page="/WEB-INF/templates/page/template_eop.jsp" />
<% } %>
