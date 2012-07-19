$(function() {
	$('.twitters').each(function(index) {
		var $n = $(this);
		$n.children('.pointer').addClass((index % 2 == 0)? 'pointer-r': 'pointer-l');
		$n.children('.twitter-img').addClass((index % 2 == 0)? 'img-r': 'img-l');
		$n.children('.bubble').addClass((index % 2 == 0)? 'bubble-l': 'bubble-r');
	});
	
	if (isTouchDevice()) {
		$("#row-banner .buttons").css('display', 'none');
		$(".twitters. .bubble-cnt").addClass('edit');
	} else {
		$("#row-banner-inner .download-button").hover(function() {
			$(this).children().first().fadeTo(200, 1);//duration, opacity
		},function() {
			$(this).children().first().fadeTo(200, 0);
		});
		$(".twitters. .bubble-cnt").hover(function() {
			$(this).addClass('edit');
		},function() {
			$(this).removeClass('edit');
		});
	}
	/*google plus*/
	var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
	po.src = 'https://apis.google.com/js/plusone.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
});
