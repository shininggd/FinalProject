/**
 * 
 */

$("#test_start_button").click(function(){
	$("#test_quiz_intro").remove();
	 $.get("LTQcategory.jsp",function(data));
});
