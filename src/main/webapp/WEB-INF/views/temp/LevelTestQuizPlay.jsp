<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	var answers = "${answer}"
	
	$(".ans_sel").click(function(){
		
		var stepplus = "";
		
		if(step<5) {
		stepplus = (step*1)+(1*1);
		}else {
			stepplus = "end";
		}
		var sel_ans = $(this).val();
		if(sel_ans == answers){	
			score = (score*1) + (20*1);
		}else{
			score = (score*1);
		}
		
		if(stepplus != "end") {
		location.href="LevelTestQuizPlay"+"?category="+select+"&step="+stepplus+"&score="+score;
		} else {
			$("#test_quiz_intro").css("display","none");
			$("#test_quiz_end").css("display","inline");
		}
		});
});
</script>
</head>
<body>
<div id="level_test_box">
<div id="page_image">
<img src="<c:url value="/resources/img/temp/ltq.png"/>">
</div>
	<section id="test_quiz_intro">
		<!-- 문제 -->
		<div id="LTQ_quest">
			<div id="LTQ_Q">${question}</div>
		</div>
			<!-- 선택지 -->
			<div id="LTQ_ans">
				<ul>
					<li class="ans_sel" value="1">보기1</li>
					<li class="ans_sel" value="2">보기2</li>
					<li class="ans_sel" value="3">보기3</li>
					<li class="ans_sel" value="4">보기4</li>
					<li class="ans_sel" value="5">보기5</li>
				</ul>
			</div>
			
	</section>
	<section id="test_quiz_end">
		끝
	</section>
	</div>
</body>
</html>