<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">	
<title>Insert title here</title>
</head>
<body>

	<div class="result">
	<c:if test="${empty dto.pw}">
	<h3 class="result_title">Id찾기</h3>
	<hr>
	<h4 class="result_con"> 회원님께서 찾고 계신 ID는 <span class="result_idpw">${dto.id}</span> 입니다. </h4>
	</c:if>
	</div>
	
	<div class="result">
	<c:if test="${not empty dto.pw }">
	<h3 class="result_title">PW찾기</h3>
	<hr>
	<h4 class="result_con"> 회원님께서 찾고 계신 PW는 <span class="result_idpw">${dto.pw}</span> 입니다. </h4>
	</c:if>
	</div>
</body>
</html>