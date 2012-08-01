var myScroll,
	_selItem,
	scrollbarWidth,
	responsiveCssDelay = 800,
	pageInfo;//delay for responsive css replace	
$(function() {
	var $tocRoot = $('.root-level'),
		$toc = $('#toc'),
		screenWidth = $(document).width();
	
	pageInfo = {
		isTouch: isTouchDevice(),
		is960: screenWidth > 959,
		is768: screenWidth < 960 && screenWidth > 767
	};
		
	scrollbarWidth = $.scrollbarWidth();
	if (pageInfo.isTouch) {
		if (pageInfo.is960)
			setTimeout(function() {
				myScroll = new iScroll('toc', { hScrollbar: false, vScrollbar: false });
			} ,responsiveCssDelay);
		
		
		$('.control-button').click(function () {
			var left = $toc.position().left,
				ofs = $toc.outerWidth(true),
				doClose = left == 0,
				cntHeight = ($toc.height() - 82)+ 'px';
			
			$toc.stop().animate({left: (doClose?  -ofs - 32: 0)}, 600);
			$('.control-button').stop().animate({left: (doClose?  0: ofs)}, 600);
			
			$('#content').css('max-height', (doClose? '': cntHeight))
				.css('overflow', (doClose? '': 'hidden'));
			
			if (pageInfo.is768) {
				$('#content').width(doClose? 748: 470)
					.css('padding-left', (doClose? '0': '266px'))
					.css('min-height', (doClose? '': cntHeight))
					.css('max-height', '');
			}
		});
		
	} else {
		$tocRoot.css('padding-right', scrollbarWidth + 'px');
		// apply hover effect
		$toc.hover(function() {
			this.style.overflow = 'auto';
			$tocRoot.css('padding-right', '');
		},function() {
			this.style.overflow = '';
			$tocRoot.css('padding-right', scrollbarWidth + 'px');
		});
	}
	
	//apply selected item
	applySelected();
	
	if (!pageInfo.isTouch || pageInfo.is960) {
		setTimeout(syncTocPos ,responsiveCssDelay);
		setTimeout(bindScrollSync ,responsiveCssDelay);
	}
	setTimeout(syncSelectedPos ,responsiveCssDelay);
	
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
	
	$('#toc a').each(function() {
		var $n = $(this);
		if ($n.attr('href') == path) {
			
			_selItem = $n;
			
			$n.addClass('item-sel').removeAttr('href');
			$title.html($n.html() + ' | ' + $title.html());
			return false;
		}
	});
}

function syncTocPos() {
	 if (_selItem) {
		 
		 var $toc = $('#toc'),
		 	tocTop;
		 
		 if ((tocTop = $(document).scrollTop() - $toc.offset().top) > 0)
			 $toc[0].style.top = tocTop + 'px';
	 }
}

function syncSelectedPos() {
	 if (_selItem) {
		 var $toc = $('#toc'),
			sTop = $toc.offset().top,
			scrollTop = $toc.scrollTop() - sTop + _selItem.offset().top;
		 
		 scrollTop = Math.max((scrollTop - 40), 0);
		 
		 if (isTouchDevice() && myScroll) {
			 myScroll.scrollTo(0, -scrollTop, 500)
		 } else {
			 $toc.stop().animate({ scrollTop: scrollTop}, 500);
		 }
	 }
}

function bindScrollSync() {
	//sync TOC position
	var $toc = $('#toc'),
		top = $('#content h1').offset().top,
		scrollTop, timer;
	
	
	//console.log('top: '+top);
	//top is wrong, use fixed number
	$(document).scroll(function() {
		clearTimeout(timer);
		timer = setTimeout(function() {
			if ((scrollTop = $(document).scrollTop() - top) > 0) {
				$toc.stop().animate({ top: scrollTop + 'px' }, 100);
			} else {
				$toc[0].style.top = 0;
			}
		},50);
	});
}


function syncSizeChanged() {
	var $tocRoot = $('.root-level'),
		$toc = $('#toc'),
		screenWidth = $(document).width();
	
	pageInfo.is960 = screenWidth > 959;
	pageInfo.is768 = screenWidth < 960 && screenWidth > 767;
	
	if (pageInfo.isTouch) { 
		if (myScroll) {
			myScroll.destroy();
			myScroll == null;	
		}
		
		if (pageInfo.is960)
			myScroll = new iScroll('toc', { hScrollbar: false, vScrollbar: false });
	
		
		var left = $toc.position().left,
			ofs = $toc.outerWidth(true),
			doClose = left == 0,
			cntHeight = ($toc.height() - 82)+ 'px';
		
		$('.control-button').css('left', '');
		$toc.css('top', '').css('left', '');
		$('#content').css('overflow', '')
			.css('width', '')
			.css('padding-left', '')
			.css('min-height', '')
			.css('max-height', '');
		
		$(document).scrollTop(0);
	}
	
	$(document).unbind('scroll');
	if (!pageInfo.isTouch || pageInfo.is960) {
		setTimeout(bindScrollSync ,responsiveCssDelay);
	}
	
}