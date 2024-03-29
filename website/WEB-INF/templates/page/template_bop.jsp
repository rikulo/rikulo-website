<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.potix.website.rikulo.util.*"%>
<%
	String ua = request.getHeader("user-agent");
	String responsiveCSS = "responsive_960";
	if (ua != null) {
		ua = ua.toLowerCase();
		if (WebUtil.isTablet(ua))
			responsiveCSS = "responsive_768";
		else if (WebUtil.isPhone(ua))
			responsiveCSS = "responsive_320";
	}
%>
<!DOCTYPE html>
<html lang="en" xmlns:fb="http://www.facebook.com/2008/fbml" xmlns:og="http://ogp.me/ns#">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" >
	
	<%--
	<meta property="og:title" content="Rikulo - Web and Mobile Apps in Dart" >
	<meta property="og:type" content="website" >
	<meta property="og:url" content="http://rikulo.org/" >
	<meta property="og:image" content="http://www.zkoss.org/resource/img/logo/zklogo_s.png" >
	<meta property="og:site_name" content="Rikulo - Dart Web Framework" >
	<meta property="og:description"
          content="A free and open source framework for creating incredible cross-platform native mobile applications in Dart and HTML5.
	<meta property="fb:app_id" content="215879398442065" > 
	<meta property="fb:admins" content="760738270" >
	
	
	<link href="http://feeds.feedburner.com/zkoss?format=xml" rel="alternate" type="application/rss+xml" title="Rikulo RSS FEED" />
	 --%>
	<meta name="description" content="Rikulo is a free and open source framework for creating incredible cross-platform native mobile applications in Dart and HTML5.">
	<meta name="keywords" content="Rikulo, Web, Mobile, Dart, Web framework, Ajax framekwork, Open Source, Apache">
	<meta http-equiv="X-UA-Compatible" content="chrome=1">	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="shortcut icon" type="image/ico" href="/resource/img/favicon.ico" >
	<link rel="bookmark" href="/resource/img/favicon.ico" >
	<link rel="stylesheet" type="text/css" href="http://rikulo.org/less/<%=responsiveCSS%>" />
	<link rel="stylesheet" type="text/css" href="/less/template" />
	<link href='http://fonts.googleapis.com/css?family=Asap:400,700,400italic,700italic|Oswald:400,300,700|Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href="http://blog.rikulo.org/feeds/all.rss.xml" rel="alternate" type="application/rss+xml" title="Rikulo RSS FEED" />
