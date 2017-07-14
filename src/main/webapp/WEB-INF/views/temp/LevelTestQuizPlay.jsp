<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<%-- <script src="<%=application.getContextPath()%>/resources/js/LevelTest/LevelTestQuizPlay.js"></script> --%>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/LevelTestQuizPlay.css">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	var select = "${category}";
	var step ="${step}";
	var score ="${score}";
	var questions = "${question}";
	var answers = "${answer}";
	if(step==0) {
		$("#test_quiz_intro").css("display","none");
		$("#test_quiz_end").css("display","inline-block");
	}
	
	//문제 넘어갈 때마다 bar 추가
	$(".LTQ_pass").css("width",(step*1)*20+"%");
		

	$(".ans_sel").mouseenter(function(){
		$(this).children("#LTQcon1").css("color","red");
		$(this).children("#LTQcon2").css("color","red");
		$(this).children("#LTQcon3").css("color","red");
		$(this).children("#LTQcon4").css("color","red");
	});
	
	$(".ans_sel").mouseleave(function(){
			$(this).children("#LTQcon1").css("color","#787878");
			$(this).children("#LTQcon2").css("color","#787878");
			$(this).children("#LTQcon3").css("color","#787878");
			$(this).children("#LTQcon4").css("color","#787878");
	}); 
	
	//보기 클릭했을 때 answer랑 비교해서 정답 확인하고 맞으면 스코어+20하고 다음 문제로 넘어간다
	$(".ans_sel").click(function(){
		if(step<5) {
		stepplus = (step*1)+(1*1);
		}else {
			stepplus = 0;
		}
		var sel_ans = $(this).val();
		if(sel_ans == answers){	
			score = (score*1) + (20*1);
		}else{
			score = (score*1);
		}
		
		location.href="LevelTestQuizPlay"+"?category="+select+"&step="+stepplus+"&score="+score;
			
		});
			
	
});
</script>
</head>
<body>
<div id="level_test_box">
<div id="page_image">
<img src="<c:url value="/resources/img/temp/ltq.png"/>">
</div>
	<c:if test="${step != 0}">
	<section id="test_quiz_intro">
		<div id ="progress_bar">
			<div class="LTQ_pass"></div>
		</div>
			<!-- 문제 -->
			<div id="LTQ_quest">
				<div id="LTQ_Q">Q. ${question}</div>
			</div>
				<!-- 선택지 -->
					<div id="LTQ_ans">
					<ul id="LTQ_select_list">
						<li class="ans_sel" value="1">
								<input type="radio" value="on">
								<span class="mock-button"></span>
								<span class="LTQ_select_content" id="LTQcon1">보기 1</span>
							</li>
						<li class="ans_sel" value="2" >
								<input type="radio" value="on">
								<span class="mock-button"></span>
								<span class="LTQ_select_content" id="LTQcon2">보기 2</span>
							</li>
						<li class="ans_sel" value="3" >
								<input type="radio" value="on">
								<span class="mock-button"></span>
								<span class="LTQ_select_content" id="LTQcon3">보기 3</span>
							</li>
						<li class="ans_sel" value="4" >
							<input type="radio" value="on">
								<span class="mock-button"></span>
								<span class="LTQ_select_content" id="LTQcon4">보기 4</span>
							</li>
					</ul>
					</div>
	</section>
	</c:if>
	<section id="test_quiz_end">
		<c:if test="${score ge 71 and score le 100}">
			<p class="score_sentence">당신의 점수는 ${score}점 입니다. <br>고급 class! ㅇㅈ?ㅇㅇㅈ</p>
		</c:if>
			<c:if test="${score ge 41 and score le 70}">
			<p class="score_sentence">당신의 점수는 ${score}점 입니다. <br>중급 class! 5지구욘 지리구욘</p>
			</c:if>
				<c:if test="${score ge 0 and score le 40}">
					<p class="score_sentence">당신의 점수는 ${score}점 입니다. <br>하급 class! ...절레절레</p>
				</c:if>
	</section>
	</div>
</body>
</html>