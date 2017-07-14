<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/sub/myStudyList.css">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${list}" var="dto">
		<div class="myStudy_wrap">
			강의명 : ${dto.title }
			카테고리 : ${dto.category }
			튜터명 : ${dto.tid }
			ON/OFF : ${dto.onOff }
		</div>
	</c:forEach>
	
</body>
</html>