<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="4096kb" %>
<div id="row-articles">
	<div id="row-articles-innter" class="container_12 clearfix">
		<section> 
			<header><h5>Rikulo Blog</h5></header>
			<jsp:include page="/WEB-INF/templates/articles/blog.html" />
		</section>
		<section> 
			<header><h5>Rikulo Discussions</h5></header>
			<jsp:include page="/WEB-INF/templates/articles/discussions.html" />
		</section>
		<section> 
			<header><h5>Rikulo Twitter</h5></header>
			<jsp:include page="/WEB-INF/templates/articles/twitter.html" />
		</section>
	</div>	
</div>
