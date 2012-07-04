$(function() {
	$("#row-banner-inner .download-button").hover(function() {
		var pos = $(this).bgPosSplit();
		$(this).css({backgroundPosition: pos[0] + ' -82px'});
	},function() {
		var pos = $(this).bgPosSplit();
		$(this).css({backgroundPosition: pos[0] + ' 0px'});
	});
	
	$('.twitters').each(function(index) {
		var $n = $(this);
		$n.children('.pointer').addClass((index % 2 == 0)? 'pointer-r': 'pointer-l');
		$n.children('.twitter-img').addClass((index % 2 == 0)? 'img-r': 'img-l');
		$n.children('.bubble').addClass((index % 2 == 0)? 'bubble-l': 'bubble-r');
	});
	
	$(".twitters. .bubble-cnt").hover(function() {
		$(this).addClass('edit');
	},function() {
		$(this).removeClass('edit');
	});
});
