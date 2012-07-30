var myScroll,
	_selItem;
$(function() {
	var $tocRoot = $('.root-level'),
		$toc = $('#toc'),
		scrollbarWidth = $.scrollbarWidth(),
		isTouch = isTouchDevice();
	
	if (isTouch) {
		$toc.addClass('mini-height');
		myScroll = new iScroll('toc', { hScrollbar: false, vScrollbar: false });
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
		
		/*
		*/
	}
	
	
	//apply selected item
	applySelected();
//	syncSelectedPos();
//	bindScrollSync();
	//delay for responsive css replace
	setTimeout(syncSelectedPos ,800);
	setTimeout(bindScrollSync ,800);
	
	
	
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

function syncSelectedPos() {
	 if (_selItem) {
		 var $toc = $('#toc'),
			sTop = $toc.offset().top,
			scrollTop = $toc.scrollTop() - sTop + _selItem.offset().top,
			tocTop;
		 
		 scrollTop = Math.max((scrollTop - 40), 0);
		 
		 if ((tocTop = $(document).scrollTop() - $toc.offset().top) > 0)
			 $toc[0].style.top = tocTop + 'px';
		 
		 
		 if (isTouchDevice()) {
			 myScroll.scrollTo(0, -scrollTop, 500)
		 } else {
			 $toc.stop().animate({ scrollTop: scrollTop}, 500);
		 }
		 
		 
		 
		
//		$scroller.scrollTop(Math.max((scrollTop - 40), 0));
		//console.log($('#toc').offset().top);
		//console.log($(document).scrollTop());
		//TOC position
		
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