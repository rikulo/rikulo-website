var pageTracker=_gat._getTracker("UA-121377-3");pageTracker._setDomainName("zkoss.org");pageTracker._initData();pageTracker._trackPageview();$.cookie=function(d,e,b){if(arguments.length>1&&String(e)!=="[object Object]"){b=jQuery.extend({},b);if(e===null||e===undefined){b.expires=-1}if(typeof b.expires==="number"){var g=b.expires,c=b.expires=new Date();c.setDate(c.getDate()+g)}e=String(e);return(document.cookie=[encodeURIComponent(d),"=",b.raw?e:encodeURIComponent(e),b.expires?"; expires="+b.expires.toUTCString():"",b.path?"; path="+b.path:"",b.domain?"; domain="+b.domain:"",b.secure?"; secure":""].join(""))}b=e||{};var a,f=b.raw?function(h){return h}:decodeURIComponent;return(a=new RegExp("(?:^|; )"+encodeURIComponent(d)+"=([^;]*)").exec(document.cookie))?f(a[1]):null};$(function(){var g=$.cookie("__utma"),e=$.cookie("__utmzkr"),d="",f=1,a=typeof(z_i)=="undefined"?"null":z_i;if(g==null){d=z_n=="null"?e==1?"Visitor":"DL-Visitor":z_n}else{var c=g.split(".");d=c[0]+"."+c[1]}if($.cookie("__utmzk")===null){b(d,a,f)}else{f=$.cookie("__utmzk").split("_")[2];b(d,a,(++f))}function b(h,j,i){}});