<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>		
<div id="page-content">
	<div class="column how">
		<h2>How?</h2>
		<div class="item stackoverflow">
			<img src="/resource/img/discuss/stackoverflow.png" alt="Stackoverflow" title="Stackoverflow"/>
  			<div class="item-cnt">
	  			<p class="desc">
		  			Rikulo's official forum is <a href="/">Stackoverflow</a>, to ask a Rikulo question 
		  			on Stackoverflow please use the "rikulo" tag.
		  		</p>
		  		<div class="button">
		  			<div class="button-inner">
		  				<a href="/" title="Ask Question on Stackoverflow">Ask Question on Stackoverflow</a>
		  			</div>
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
		  			<div class="button-inner">
		  				<a href="/" title="Email Us">Email Us</a>
	  				</div>
		  		</div>
	  		</div>
		</div>
	</div>
	<div class="column discussion">
		<h2>Latest discussions</h2>
		<%
		String[][] discussions = new String[2][];
		discussions[0] = new String[]{"Sunt in culpa qui offcia desernut mollit anim id est laborum",
				"23 minutes ago",""};
		
		discussions[1] = new String[]{"Officia deserunt mollit anim id est laborum velit irure",
				"May 17, 2012","by Captain Hook"};
	
		
		
		for (int i = 0, j = discussions.length; i < j; i++) {
			String[] discussion = (String[]) discussions[i];
		%>
		<div class="discussions">
			<div class="desc">
				<a href="/"><%=discussion[0]%></a>
			</div>
			<div class="data">
				<span class="date"><%=discussion[1]%></span>
				<span class="author"><%=discussion[2]%></span>
			</div>
		</div>
		<%
			}
		%> 
		<div class="button">
			<div class="button-inner">
  				<a href="/" title="Join Discussion">Join Discussion</a>
  			</div>
  		</div>
	</div>
</div>