$(function() {
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
	
	/*google plus*/
	var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
	po.src = 'https://apis.google.com/js/plusone.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
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
var ADAPT_CONFIG = {
  // Where is your CSS?
  path: 'http://rikulo.org/less/',

  // false = Only run once, when page first loads.
  // true = Change on window resize and page tilt.
  dynamic: true,
  callback: function(i, width) {
	if (i == 0) {//responsive_320
		$('.responsive-image').each(function() {
			var $n = $(this),
				src = $n.attr('src');
			
			if (src != $n.attr('data-320src'))
				$n.attr('src', $n.attr('data-320src'));
		});
	} else {
		$('.responsive-image').each(function() {
			var $n = $(this),
				src = $n.attr('src');
			
			if (src == $n.attr('data-320src'))
				$n.attr('src', $n.attr('data-fullsrc'));
		});
	}
  },
  // First range entry is the minimum.
  // Last range entry is the maximum.
  // Separate ranges by "to" keyword.
  range: [
    '0px    to 479px  = responsive_320',
    '479px  to 767px  = responsive_480',
    '767px  to 959px  = responsive_768',
    '959px            = responsive_960'
  ]
};
/*
Adapt.js licensed under GPL and MIT.

Read more here: http://adapt.960.gs
*/

//Closure.
(function(w, d, config, undefined) {
// If no config, exit.
if (!config) {
  return;
}

var hostname = window.location.hostname;

if (hostname == 'docs.rikulo.org' || hostname == 'blog.rikulo.org')
	return;

// Empty vars to use later.
var url, url_old, timer;

// Alias config values.
var callback = typeof config.callback === 'function' ? config.callback : undefined;
var path = config.path ? config.path : '';
var range = config.range;
var range_len = range.length;

// Create empty link tag:
// <link rel="stylesheet" />
var css = $('link[href*="responsive"]')[0];
css.rel = 'stylesheet';
css.media = 'screen';

// Called from within adapt().
function change(i, width) {
	if (css.href != url) {
		// Set the URL.
		css.href = url;
		url_old = url;
		// Call callback, if defined.
		callback && callback(i, width);
	}
}

// Adapt to width.
function adapt() {
  // This clearTimeout is for IE.
  // Really it belongs in react(),
  // but doesn't do any harm here.
  clearTimeout(timer);

  // Parse browser width.
  var width = w.innerWidth || d.documentElement.clientWidth || d.body.clientWidth || 0;

  // While loop vars.
  var arr, arr_0, val_1, val_2, is_range, file;

  // How many ranges?
  var i = range_len;
  var last = range_len - 1;

  while (i--) {
    // Blank if no conditions met.
    url = '';

    // Turn string into array.
    arr = range[i].split('=');

    // Width is to the left of "=".
    arr_0 = arr[0];

    // File name is to the right of "=".
    // Presuppoes a file with no spaces.
    // If no file specified, make empty.
    file = arr[1] ? arr[1].replace(/\s/g, '') : undefined;

    // Assume max if "to" isn't present.
    is_range = arr_0.match('to');

    // If it's a range, split left/right sides of "to",
    // and then convert each one into numerical values.
    // If it's not a range, turn maximum into a number.
    val_1 = is_range ? parseInt(arr_0.split('to')[0], 10) : parseInt(arr_0, 10);
    val_2 = is_range ? parseInt(arr_0.split('to')[1], 10) : undefined;

    // Check for maxiumum or range.
    if ((!val_2 && i === last && width > val_1) || (width > val_1 && width <= val_2)) {
      // Build full URL to CSS file.
      file && (url = path + file);

      // Exit the while loop. No need to continue
      // if we've already found a matching range.
      break;
    }
  }

  // Was it created yet?
  if (!url_old) {
    // Apply changes.
    change(i, width);

    // Add the CSS, only if path is defined.
    // Use faster document.head if possible.
    //path && (d.head || d.getElementsByTagName('head')[0]).appendChild(css);
  }
  else if (url_old !== url) {
    // Apply changes.
    change(i, width);
  }
}

// Fire off once.
adapt();

// Slight delay.
function react() {
  // Clear the timer as window resize fires,
  // so that it only calls adapt() when the
  // user has finished resizing the window.
  clearTimeout(timer);

  // Start the timer countdown.
  timer = setTimeout(adapt, 16);
  // -----------------------^^
  // Note: 15.6 milliseconds is lowest "safe"
  // duration for setTimeout and setInterval.
  //
  // http://www.nczonline.net/blog/2011/12/14/timer-resolution-in-browsers
}

// Do we want to watch for
// resize and device tilt?
if (config.dynamic) {
  // Event listener for window resize,
  // also triggered by phone rotation.
  if (w.addEventListener) {
    // Good browsers.
    w.addEventListener('resize', react, false);
  }
  else if (w.attachEvent) {
    // Legacy IE support.
    w.attachEvent('onresize', react);
  }
  else {
    // Old-school fallback.
    w.onresize = react;
  }
}

//Pass in window, document, config, undefined.
})(this, this.document, ADAPT_CONFIG);