$(function() {
	$('#toc a').attr("href", function(i, href) {
		var path = window.location.href,
			index = path.indexOf('latest/'),
			prefix = path.substring(0, index + 7),
			relPath = path.substring(index + 7, path.length);
		
		if (href == relPath) {
			$(this).addClass('item-sel');
		}
		
		return prefix + href;
	});
	$('a.item-sel').removeAttr('href');
});
