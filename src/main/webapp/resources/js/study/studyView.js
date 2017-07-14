/**
 * 
 */
var height = $(".Space").css("height").replace('px','')*1 -500;	
$(window).scroll(function(){
		
	   if ($(document).scrollTop()>height ) {
	        $(".sideBarFixed").attr("class","sideBarAbsolute");
	    }
	   else{
	        $(".sideBarAbsolute").attr("class","sideBarFixed");
	    }
});