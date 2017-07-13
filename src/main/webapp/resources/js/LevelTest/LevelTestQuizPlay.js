
$(function(){
	var category = "${category}";
	var step ="${step}";
	var score = "${score}";
	
	var questions = "${question}";
	var answers = "${answer}"
});
















/*$(function() {
var category = "${category}";
var step = "${param.step}";
var score = "${param.score}";

alert("실행은 되는거지?");

	if(category == 'E'){
		if(step == '1' && score == '0' ){
			var question = '<div id="LTQ_Q">영어문제 1</div>';
			$("#LTQ_quest").append(question);
			var answer = 
				'<ul>'+
					'<li class="ans_sel" value="1">영어보기1</li>'+
					'<li class="ans_sel" value="0">영어보기2</li>'+
					'<li class="ans_sel" value="0">영어보기3</li>'+
					'<li class="ans_sel" value="0">영어보기4</li>'+
					'<li class="ans_sel" value="0">영어보기5</li>'+
				'</ul>';
			$("#LTQ_ans").append(answer);
		};
	};
	if(category == 'C'){
				alert("요기");
				if(step == 1){
					alert("조기");
					var question = "중국어문제 1";
					$("#LTQ_quest").html(question);
					var answer = 
						'<ul>'+
							'<li class="ans_sel" value="1">중궈보기1</li>'+
							'<li class="ans_sel" value="0">중궈보기2</li>'+
							'<li class="ans_sel" value="0">중궈보기3</li>'+
							'<li class="ans_sel" value="0">중궈보기4</li>'+
							'<li class="ans_sel" value="0">중궈보기5</li>'+
						'</ul>';
					$("#LTQ_ans").html(answer);
				};
			};
						if(category == 'P'){
							if(step == '1'){
								var question = "프로그래밍문제 1";
								$("#LTQ_quest").html(question);
								var answer = 
									'<ul>'+
										'<li class="ans_sel" value="1">코딩보기1</li>'+
										'<li class="ans_sel" value="0">코딩보기2</li>'+
										'<li class="ans_sel" value="0">코딩보기3</li>'+
										'<li class="ans_sel" value="0">코딩보기4</li>'+
										'<li class="ans_sel" value="0">코딩보기5</li>'+
									'</ul>';
								$("#LTQ_ans").html(answer);
							};
						};
						
						
						$(".ans_sel").click(function(){
							var stepp= step+1;
							var che_score = $(this).val();
							var scorep = score + che_score;
							location.href="./temp/LevelTestQuizPlay"+"?category="+select+"&step="+stepp+"&score="+scorep;
						});
});*/