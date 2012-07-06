/*Google Page Tracker*/ 
var pageTracker = _gat._getTracker("UA-121377-3");
 pageTracker._setDomainName("zkoss.org");
 pageTracker._initData();
 pageTracker._trackPageview();
 
/*jQCookie */
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
$(function() {
	var gua = $.cookie("__utma"),
		zkr = $.cookie("__utmzkr"),
		zug = "",
		vstep = 1,
		z_ip = typeof(z_i) == "undefined" ? "null" : z_i;
	
	if ( gua == null) { // NO Google Cookie
		zug = z_n == "null" ? zkr == 1 ? "Visitor" : "DL-Visitor" : z_n;	
	} else {
		var ua = gua.split(".");
		zug = ua[0]+'.'+ua[1];		
	}
	
	if ($.cookie("__utmzk") === null) { //No ZK Tracker
		setZKCookie(zug, z_ip, vstep); 
	} else {
		vstep = $.cookie("__utmzk").split("_")[2];
		setZKCookie(zug, z_ip, (++vstep));	
	}
	
	function setZKCookie(us, ip, vstp) {
	}
});
