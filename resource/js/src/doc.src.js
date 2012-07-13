$(function() {
	var path = window.location.href;
	path = path.substring(path.indexOf('/rikulo/latest/'), path.length);
	$('#toc a').each(function() {
		var $n = $(this);
		if ($n.attr('href') == path) {
			$n.addClass('item-sel');
			$n.removeAttr('href');
		}
	});
});
