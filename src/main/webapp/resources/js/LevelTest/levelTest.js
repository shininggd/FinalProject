/**
 * 
 */
$(function(){
$("#level_test_banner_content").click(function(){
	window.open("./temp/levelTestQuiz", "LevelTest", "width=960,height=420,left=150,top=150")
});
$("#close_banner").click(function(){
	$("header").css("margin-top", "0");
	$("#level_test_banner").remove();
});

});