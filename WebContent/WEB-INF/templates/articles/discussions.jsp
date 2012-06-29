<div id="discussions" class="row-item">
	<div class="head">
		<div class="headline">Discussions</div>
	</div>
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
</div>