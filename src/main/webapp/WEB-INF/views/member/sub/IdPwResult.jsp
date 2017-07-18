<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${ empty dto.pw}">
	
	<h3>IdResult</h3>
	<hr>
	<h4> 회원님께서 찾고 계신 ID는 ${dto.id} 입니다. </h4>
	</c:if>
	
	<c:if test="${not empty dto.pw }">
	<h3>IdResult</h3>
	<hr>
	<h4> 회원님께서 찾고 계신 PW는 ${dto.pw} 입니다. </h4>
	</c:if>
</body>
</html>