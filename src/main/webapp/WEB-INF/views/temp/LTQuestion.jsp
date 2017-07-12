<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript">
 $(function(){
	 alert(ar);
 });
</script>
<title>Insert title here</title>
</head>
<body>
			<!-- 문제 리스트 -->
		<div id="question_stage">
			<c:if test="">
					<div id="question_content">옳은 것을 고르시오</div>
					<div id="question_sentence">문제나올곳</div>
					</c:if>

					<form id="test_quiz_answer" method="POST">
						<input type="radio" name="answer" value="1">
						<input type="radio" name="answer" value="2">
						<input type="radio" name="answer" value="3">
						<input type="radio" name="answer" value="4">
					</form>
							</div> 
</body>
</html>