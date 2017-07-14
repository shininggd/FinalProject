<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/LevelTestQuiz.css">
<script src="<%=application.getContextPath()%>/resources/js/LevelTest/LevelTestQuiz.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
<div id="level_test_box">
<div id="page_image">
<img src="<c:url value="/resources/img/temp/ltq.png"/>">
</div>
	<section id="test_quiz_intro">
	<div id="intro_Lavel">LEVEL TEST</div>
		<div id="intro_title">당신의 수준을 측정!</div>
						<!-- 카테고리 선택 -->
						<div id="category_select">
							<span><input type="radio" class ="cate" name="category" value="E">영어</span>
							<span><input type="radio" class ="cate" name="category" value="C">중국어</span>
							<span><input type="radio" class ="cate" name="category" value="P">프로그래밍</span>
						</div>
				<div id="intro_content">5문제로 당신의 지적 능력을 알아보는 Test 입니다 오지구요 지리구요</div>
						<!-- 카테고리 선택 -->
					
	</section>
	</div>


</body>
</html>