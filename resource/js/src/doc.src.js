$(function() {
	var path = window.location.href;
	
	$('#toc a').each(function() {
		var $n = $(this);
		if ($n.attr('href') == path) {
			$n.addClass('item-sel');
			$n.removeAttr('href');
		}
	});
});
