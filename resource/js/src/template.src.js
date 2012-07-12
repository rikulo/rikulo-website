$(function() {
	ie6 = $.browser.msie && $.browser.version == '6.0';
	if ($.browser.safari)
		$("body").addClass("safari");
	
	/*Fix JQ For Idiot IE*/
	$.fn.bgPos = function() {
		var p = $(this).css('background-position');
		if(typeof(p) === 'undefined') return $(this).css('background-position-x') + ' ' + $(this).css('background-position-y');
		else return p;
	};
	$.fn.bgPosSplit = function() {
		return $(this).bgPos().split(" ");
	};
	 
	/*Menu Control*/	
	var isTouch = isTouchDevice();
	if (isTouch) {
		$("body").addClass("touch");
	} else {
		
		/* Menu */
		$(".menuitem").hover(function() {	
			$(this).addClass("menuitem-hover");	
		}, function(){
		   $(this).removeClass("menuitem-hover");
		});
	}
	/* Facebook Like 
	window.fbAsyncInit = function() { 
	    FB.init({ 
	      appId  : '215879398442065', 
	      status : true, // check login status 
	      cookie : true, // enable cookies to allow the server to access the session 
	      xfbml  : true  // parse XFBML 
	    }); 
	}; 
	if (document.getElementById('fb-root') != null ) {
	    var e = document.createElement('script'); 
		e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js'; 
		e.async = true; 
		document.getElementById('fb-root').appendChild(e);
	}
	*/
	/*Crazy Egg*/
	setTimeout(function(){var a=document.createElement("script");
	var b=document.getElementsByTagName("script")[0];
	a.src=document.location.protocol+"//dnn506yrbagrg.cloudfront.net/pages/scripts/0011/4259.js?"+Math.floor(new Date().getTime()/3600000);
	a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
});
function isTouchDevice() { 
	return ('ontouchstart' in window);
}
/*Google Custom Search
google.load('search', '1');
google.setOnLoadCallback(function() {
	google.search.CustomSearchControl.attachAutoCompletion('008321236477929467003:63kdpeqkkvw',
	document.getElementById('q'),'cse-search-box');
});
*/
