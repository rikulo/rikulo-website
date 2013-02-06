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
			<li class='menuitem <%=name.equals(Consts.MENU_CATEGORY_PROJECTS) ? selClass: ""%>'>
				<div class="menuitem-right">
					<a class="menulink" style="cursor: default;">Projects&nbsp;<img src="/resource/img/template/icon_arrowdown.png" alt="arrow down" style="height: 4px; width: 7px; margin-bottom: 4px;" /></a>
						<ul>
        					<li class="round-top"></li>
        					<jsp:include page="/WEB-INF/templates/page/menu/projects.jsp" />
        					<li class="round-bottom"></li>
        					<li class="touch-close"><a title="Close Menu" href="#"></a></li>
						</ul>
				</div>
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