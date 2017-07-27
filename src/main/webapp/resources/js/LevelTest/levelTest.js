/**
 * 
 */
$(function(){
$("#level_test_banner_content").click(function(){
	window.open("/learn_run/temp/levelTestQuiz", "LevelTest", "width=1000,height=450,left=150,top=150")
});
$("#close_banner").click(function(){
	$("header").css("margin-top", "0");
	$("#level_test_banner").remove();
});

});