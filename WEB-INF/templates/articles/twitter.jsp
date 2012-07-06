<div id="twitter" class="row-item">
	<div class="head">
		<div class="headline">Twitter</div>
	</div>
	<%
		String[][] twitters = new String[3][];
		twitters[0] = new String[]{"author1.png", "Skyler69", "4 days ago",
				"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do #eiusmod tempor incididunt ut labore dolore magna."};
		
		twitters[1] = new String[]{"author2.png", "JesseP", "5 days ago",
				"Excepteur sint #occaecat cupidatat non proident, sunt in culpa qui offcia desernut mollit anim id est #laborum"};
		
		twitters[2] = new String[]{"author3.png", "WaltWhite", "6 days ago",
			"Duis aute irure dolor in reprehenderit in voluptate velit esse"};

		
		for (int i = 0, j = twitters.length; i < j; i++) {
			String[] twitter = (String[]) twitters[i];
		
	%>
	<div class="twitters"> 
		<img class="twitter-img" src="/resource/img/index/twitter/<%=twitter[0]%>" alt="<%=twitter[1]%>"/>
		<div class="pointer"></div>
		<aside class="bubble">
			<div class="corner top"></div>
			<div class="bubble-cnt">
				<a class="author" href="/"><%=twitter[1]%></a>
		  		<div class="saying"><%=twitter[3]%></div>
	  			<a class="date" href="/"><%=twitter[2]%></a>
	  			<a class="reply" href="/">- reply</a>
	  			<a class="retweet" href="/">- retweet</a>
	  			<a class="favorte" href="/">- favorte</a>
			</div>
			<div class="corner bottom"></div>
		</aside>
	</div>
	<%
		}
	%> 
</div>