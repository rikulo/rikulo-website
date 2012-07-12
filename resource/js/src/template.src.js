var step = 0;
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
		/* Menu */
//		var sel;
//		$(document).mousedown(function(e){
//			if (sel && !$.contains($("#main_menu")[0] ,e.target))
//				sel.removeClass("menuitem-hover");
//		});
//		$(".menuitem-right > a").bind('click', function(e) {
//			var menu = $(this).parents("li.menuitem"),
//				menus = $("li.menuitem");
//			if (menu.hasClass("menuitem-hover")){
//				return true;
//			} else {
//				if (sel)
//					sel.removeClass("menuitem-hover");
//				menu.addClass("menuitem-hover");
//				sel = menu;
//				return false;
//			}
//		});
//		$(".touch-close > a").click(function() {
//			$(this).parents("li.menuitem").removeClass("menuitem-hover");	
//		});
//		$("#index-header .item").click(function() {
//			$(this).toggleClass("item-hover");	
//		});
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
	/*Crazy Egg
	setTimeout(function(){var a=document.createElement("script");
	var b=document.getElementsByTagName('script')[0];
	a.src=document.location.protocol+"//dnn506yrbagrg.cloudfront.net/pages/scripts/0011/4259.js";
	a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b);}, 1);
	*/
});
$.cookie = function (key, value, options) {
    if (arguments.length > 1 && String(value) !== "[object Object]") {
        options = jQuery.extend({}, options);

        if (value === null || value === undefined) {
            options.expires = -1;
        }

        if (typeof options.expires === 'number') {
            var days = options.expires, t = options.expires = new Date();
            t.setDate(t.getDate() + days);
        }

        value = String(value);

        return (document.cookie = [
            encodeURIComponent(key), '=',
            options.raw ? value : encodeURIComponent(value),
            options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
            options.path ? '; path=' + options.path : '',
            options.domain ? '; domain=' + options.domain : '',
            options.secure ? '; secure' : ''
        ].join(''));
    }

    // key and possibly options given, get cookie...
    options = value || {};
    var result, decode = options.raw ? function (s) { return s; } : decodeURIComponent;
    return (result = new RegExp('(?:^|; )' + encodeURIComponent(key) + '=([^;]*)').exec(document.cookie)) ? decode(result[1]) : null;
};

function isTouchDevice() { 
	return ('ontouchstart' in window);
}
function GAEvtTrack(cate, act, lab, val) {
	pageTracker._trackEvent((cate ? cate : location.pathname), act, lab, (val ? val : step++));
}
/*Google Custom Search
google.load('search', '1');
google.setOnLoadCallback(function() {
	google.search.CustomSearchControl.attachAutoCompletion('008321236477929467003:63kdpeqkkvw',
	document.getElementById('q'),'cse-search-box');
});
*/
