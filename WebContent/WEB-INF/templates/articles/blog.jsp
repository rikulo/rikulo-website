<div id="blogs" class="row-item">
	<div class="head">
		<div class="headline">Blog</div>
	</div>
	<%
		String[][] blogs = new String[2][];
		blogs[0] = new String[]{"Lorem ipsum dolor sit amet, consectetur adipisicing elit",
				"May 18, 2012","by Peter Pan"};
		
		blogs[1] = new String[]{"Ut emim ad minim veniam",
				"May 17, 2012","by Captain Hook"};
	
		
		
		for (int i = 0, j = blogs.length; i < j; i++) {
			String[] blog = (String[]) blogs[i];
	%>
	 <div class="blogs">
		<div class="desc">
			<a href="/"><%=blog[0]%></a>
		</div>
		<div class="data">
			<span class="date"><%=blog[1]%></span>
			<span class="author"><%=blog[2]%></span>
		</div>
	</div>
	<%
		}
	%> 
</div>