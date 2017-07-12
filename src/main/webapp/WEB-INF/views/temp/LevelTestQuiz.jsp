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
<script src="<%=application.getContextPath()%>/resources/js/LevelTestQuiz.js"></script>
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
				<div id="intro_content">10문제로 너의 Class를 평가해주마</div>
					<input type="button" id="test_start_button" value="TEST START">
					<div>
					</div>
	</section>
	</div>
			<!-- 카테고리 선택 -->
			<div id="category_select">
			<button class ="cate" name="category" value="E">영어</button>
			<button class ="cate" name="category" value="C">중국어</button>
			<button class ="cate" name="category" value="P">프로그래밍</button>
			</div>
			<!-- 카테고리 선택 -->

</body>
</html>