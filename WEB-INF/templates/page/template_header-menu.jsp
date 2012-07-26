<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.potix.website.rikulo.*,com.potix.website.rikulo.util.*"%>
<%
	String ua = request.getHeader("user-agent");
	if (ua != null)
		ua = ua.toLowerCase();
	String name = request.getAttribute(Consts.MENU_CATEGORY) == null ? ""
			: request.getAttribute(Consts.MENU_CATEGORY).toString();
	String selClass = "menuitem-sel";
	boolean oldBrowser = false;//(WebUtil.isMSIE(ua) && WebUtil.getIEVer(ua) < 9);
%>
<div id="main_menu" class="grid_9 clearfix">
	<nav class="navigation_menu"> 
		<header>
			<h5>Navigation Menu</h5>
		</header>
		<ul class='menu <%=oldBrowser ? "old-style" : "new-style"%>'>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_EXAMPLES) ? selClass: ""%>'>
				<a href="/examples/" class="menulink">Examples</a>
			</li>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_CONTRIBUTE) ? selClass: ""%>'>
				<a href="/contribute/" class="menulink">Contribute</a>
			</li>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_DISCUSS) ? selClass: ""%>'>
				<a href="/discuss/" class="menulink">Discuss</a>
			</li>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_LEARN) ? selClass: ""%>'>
				<a href="/learn/" class="menulink">Learn</a>
			</li>
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_BLOG) ? selClass: ""%>'>
				<a href="http://blog.rikulo.org" class="menulink">Blog</a>
			</li>
		</ul>
	</nav>
</div>