/**
 * 
 */

$(function(){
	$("#test_start_button").click(function(){
		$("#test_quiz_intro").remove();
		$("#category_select").css("float","left");
		$("#category_select").css("display","inline-block");	
	});

	
	$(".cate").click(function(){
		var select = $(this).prop("value");
		$.post("LTQuestion",{category:select},function(result) {
			alert(result);
			});
	});
});