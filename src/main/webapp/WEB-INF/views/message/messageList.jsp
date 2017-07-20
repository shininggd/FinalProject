<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/message/messagePage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>제목</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.title }</td>
			<td>${dto.reg_date }</td>
		</tr>	
		</c:forEach>
		</tbody>
	</table>
</body>
</html>