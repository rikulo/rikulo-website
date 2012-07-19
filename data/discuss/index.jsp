<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>		
<div id="page-content" class="grid_12 clearfix">
	<div class="how grid_6 alpha">
		<h2>How?</h2>
		<div class="item stackoverflow">
			<img src="/resource/img/discuss/stackoverflow.png" alt="Stackoverflow" title="Stackoverflow"/>
  			<div class="item-cnt">
	  			<p class="desc">
		  			Rikulo's official forum is <a href="http://www.stackoverflow.com">Stackoverflow</a>, to ask a Rikulo question 
		  			on Stackoverflow please use the <img class="tag" src="../../resource/img/discuss/tag.png"> tag.
		  		</p>
		  		<div class="button">
	  				<a onclick="_gaq.push(['_trackEvent', 'question', 'ask-button']);" href="http://stackoverflow.com/questions/tagged/rikulo" title="Ask Question on Stackoverflow">Ask Question on Stackoverflow</a>
		  		</div>
	  		</div>
		</div>
		<div class="item email">
			<img src="/resource/img/discuss/email.png" alt="Email" title="Email"/>
			<div class="item-cnt">
		  		<p class="desc">
		  			If you have any questions related directly to the framework rather than 
		  			a technical problem please drop us an email.
		  		</p>
		  		<div class="button">
	  				<a href="mailto:info@rikulo.org" title="Email Us">Email Us</a>
		  		</div>
	  		</div>
		</div>
	</div>
	<div class="discussion grid_6 omega">
		<h2>Latest discussions</h2>
		<jsp:include page="/WEB-INF/templates/articles/discussions-page.html" />
		<div class="button">
			<a onclick="_gaq.push(['_trackEvent', 'question', 'join-discussion']);" href="http://stackoverflow.com/questions/tagged/rikulo" title="Join Discussion">Join Discussion</a>
  		</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$("#page-content .button").hover(function() {
			var pos = $(this).bgPosSplit();
			$(this).css({backgroundPosition: pos[0] + ' -40px'});
		},function() {
			var pos = $(this).bgPosSplit();
			$(this).css({backgroundPosition: pos[0] + ' 0'});
		});
		$("#page-content .button-inner").hover(function() {
			var pos = $(this).bgPosSplit();
			$(this).css({backgroundPosition: pos[0] + ' -120px'});
		},function() {
			var pos = $(this).bgPosSplit();
			$(this).css({backgroundPosition: pos[0] + ' -80px'});
		});
	});
</script>
