$(function(){$(".twitters").each(function(c){var e=$(this),h=e.find(".author"),g="https://twitter.com/intent/user?screen_name="+h.html(),b=e.find(".saying"),a=b.html(),f="https://twitter.com/#!/search/?q=%23",d="https://twitter.com/";e.children(".pointer").addClass((c%2==0)?"pointer-r":"pointer-l");e.find("a .twitter-img").addClass((c%2==0)?"img-r":"img-l");e.children(".bubble").addClass((c%2==0)?"bubble-l":"bubble-r");h.attr("href",g);e.find(".img-icon").attr("href",g);a=a.replace(/(http[s]?:\/\/(.*?\S*))/g,'<a href="$1">$2</a>');a=a.replace(/(@(.*?\S*))/g,'<a href="'+d+'$2">$1</a>');b.html(a.replace(/(#(.*?\S*))/g,'<a href="'+f+'$2&src=hash">$1</a>'))});if(isTouchDevice()){$("#row-banner .buttons").css("display","none");$(".twitters. .bubble-cnt").addClass("edit")}else{$("#row-banner-inner .download-button").hover(function(){$(this).children().first().stop().fadeTo(200,1)},function(){$(this).children().first().stop().fadeTo(200,0)});$(".twitters .bubble-cnt").hover(function(){$(this).addClass("edit")},function(){$(this).removeClass("edit")})}$(".twitters").each(function(){})});