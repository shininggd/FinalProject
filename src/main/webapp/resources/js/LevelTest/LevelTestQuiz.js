/**
 * 
 */

$(function(){
	$("#test_start_button").click(function(){
		$("#category_select").css("display","inline-block");	
	});

	
	$(".cate").click(function(){
		var select = $(this).prop("value");
		var score = 0;
		var step = 1;
		location.href="LevelTestQuizPlay"+"?category="+select+"&step="+step+"&score="+score;
	});
});