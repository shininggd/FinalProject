<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/board/notice.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<section id="main_section">

	<div class="main_container">
	

	<table class="table_list">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="num">1</td>
				<td class="title">title</td>
				<td>admin</td>
				<td>17/07/27</td>
				<td>11</td>
			</tr>
		</tbody>
	</table>
	</div>
</section>
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>