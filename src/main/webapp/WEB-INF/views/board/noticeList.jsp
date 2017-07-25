 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table class="table_list">
		<thead>
			<tr>
				<th>번호</th>
				<th class="title">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="dto">
			<tr>
				<td class="num">${dto.num }</td>
				<td class="title"><span class="title_click" id="${dto.num }">${dto.title }</span></td>
				<td>${dto.writer }</td>
				<td>${dto.reg_date }</td>
				<td>${dto.hit }</td>
			</tr>
			</c:forEach>
			
		</tbody>
	</table>

<div id="notice_search">
	<form action="" id="notice_frm">
		<select name="find" id="find">
			<option value="writer">writer</option>
			<option value="title">title</option>
			<option value="contents">contents</option>
		</select>
		<input type="hidden" id="find_value" value="${listInfo.find }">
		<input type="text" id="search" name="search" value="${listInfo.search }">
		<input type="hidden" id="curPage" name="curPage">
		<input type="button" id="search_btn" value="search">
	</form>
</div>

<div id="notice_page">
	<c:if test="${listInfo.curBlock > 1}">
		<span class="listPage" id="${listInfo.startNum -1}">[이전페이지]</span>
	</c:if>
	
	<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum }" var="i">
		<span class="listPage" id="${i}">${i}</span>
	</c:forEach>
	
	<c:if test="${listInfo.curBlock < listInfo.totalBlock }">
		<span class="listPage" id="${listInfo.lastNum +1}">[다음페이지]</span>
	</c:if>
</div>

</body>
</html>