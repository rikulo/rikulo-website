$(function() {
	$('.twitters').each(function(index) {
		var $n = $(this),
			$auther = $n.find('.author'),
			userNameUrl = 'https://twitter.com/intent/user?screen_name=' + $auther.html(),
			$saying = $n.find('.saying'),
			sayingCnt = $saying.html(),
			profileTemplate = 'https://twitter.com/#!/search/?q=%23',
			annoTemplate = 'https://twitter.com/';
		
		/*add align CSS*/
		$n.children('.pointer').addClass((index % 2 == 0)? 'pointer-r': 'pointer-l');
		$n.find('a .twitter-img').addClass((index % 2 == 0)? 'img-r': 'img-l');
		$n.children('.bubble').addClass((index % 2 == 0)? 'bubble-l': 'bubble-r');
		
		/*apply links*/
		$auther.attr('href', userNameUrl);
		$n.find('.img-icon').attr('href', userNameUrl);
		
		sayingCnt = sayingCnt.replace(/(http[s]?:\/\/(.*?\S*))/g, 
			'<a href="$1">$2</a>');
		
		sayingCnt = sayingCnt.replace(/(@(.*?\S*))/g, 
			'<a href="'+annoTemplate+'$2">$1</a>');
		
		$saying.html(sayingCnt.replace(/(#(.*?\S*))/g, 
			'<a href="'+profileTemplate+'$2&src=hash">$1</a>'));
	});
	
	if (isTouchDevice()) {
		$("#row-banner .buttons").css('display', 'none');
		$(".twitters. .bubble-cnt").addClass('edit');
	} else {
		$("#row-banner-inner .download-button").hover(function() {
			$(this).children().first().stop().fadeTo(200, 1);//duration, opacity
		},function() {
			$(this).children().first().stop().fadeTo(200, 0);
		});
		$(".twitters .bubble-cnt").hover(function() {
			$(this).addClass('edit');
		},function() {
			$(this).removeClass('edit');
		});
	}
	$(".twitters").each(function() {
		
	});
});
