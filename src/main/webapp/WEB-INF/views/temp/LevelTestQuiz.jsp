<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/LevelTestQuiz.css">
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
					<button id="test_start_button">TEST START</button>
	</section>
</div>
</body>
</html>