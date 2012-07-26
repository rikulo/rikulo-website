$(function() {
	var path = window.location.href;
	path = path.substring(path.indexOf('/rikulo/latest/'), path.length);
	if (path.charAt(path.length-1) == '/')
		path = path.substring(0, path.length - 1);
	$('#toc a').each(function() {
		var $n = $(this);
		if ($n.attr('href') == path) {
			$n.addClass('item-sel');
			$n.removeAttr('href');
			var $title = $('title');
			$title.html($n.html() + ' | ' + $title.html());
			return false;
		}
	});
});
