var myScroll,
	_selItem,
	scrollbarWidth,
	responsiveCssDelay = 800,
	pageInfo;//delay for responsive css replace	
$(function() {
	var $tocRoot = $('.root-level'),
		$toc = $('#toc'),
		$content = $('#content'),
		screenWidth = $(document).width();
	
	pageInfo = {
		isTouch: isTouchDevice(),
		is960: screenWidth > 959,
		is768: screenWidth < 960 && screenWidth > 767
	};
		
	if (pageInfo.is960)
		$content.css('min-height', $toc.height() + 'px');
	
	
	$('.control-button').click(function () {
		$toc.css('display', 'block');
		var left = $toc.position().left,
			ofs = $toc.outerWidth(true),
			doClose = left == 0,
			cntHeight = ($toc.height()-(pageInfo.is768? 62:94))+ 'px';//for overlap on control bar height
		
		$toc.stop().animate({left: (doClose?  -ofs - 32: 0)}, 600, function() {
		    if (doClose) {
		    	$toc.css('display', '');
		    	$content.css('min-height', '');
		    } else {
		    	$content.css('min-height', cntHeight);
		    }
		 });
		
		$('.control-button').stop().animate({left: (doClose?  0: ofs)}, 600);
		
//		$content.css('max-height', (doClose? '': cntHeight))
//			.css('overflow', (doClose? '': 'hidden'));
		
		if (pageInfo.is768) {
			$('#content').width(doClose? 748: 470)
				.css('padding-left', (doClose? '0': '266px'))
				.css('min-height', (doClose? '': cntHeight))
				.css('max-height', '');
		}
	});
	
	//apply selected item
	applySelected();
	
	
	var lastIndex;
	$(window).bind('onResponsiveCssChange', function(event, i, width) {
		if (!lastIndex)
			syncSizeChanged();
		else if (lastIndex != i)
			syncSizeChanged();
		lastIndex = i;
	});
		
});

function applySelected() { 
	var path = window.location.href,
		$title = $('title');
	path = path.substring(path.indexOf('/rikulo/latest/'), path.length);
	if (path.charAt(path.length-1) == '/')
		path = path.substring(0, path.length - 1);
	
	_selItem = $('#toc a[href="'+path+'"]');
	if (_selItem[0]) {
		_selItem.addClass('item-sel').removeAttr('href');
		_selItem.parents('li').addClass('cate-sel');
		$title.html(_selItem.html() + ' | ' + $title.html());
	}
}


function syncSizeChanged() {
	var $tocRoot = $('.root-level'),
		$toc = $('#toc'),
		screenWidth = $(document).width();
	
	pageInfo.is960 = screenWidth > 959;
	pageInfo.is768 = screenWidth < 960 && screenWidth > 767;
	
	
	$('.control-button').css('left', '');
	$toc.css('top', '').css('left', '').css('display', '');;
	$('#content').css('overflow', '')
		.css('width', '')
		.css('padding-left', '')
		.css('min-height', '')
		.css('max-height', '');
	
	if (pageInfo.is960)
		$('#content').css('min-height', $toc.height() + 'px');
	
	$(document).scrollTop(0);
}