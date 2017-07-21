<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	<table id="messageList_table">
		<thead>
			<tr>
				<th>제목</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dto">
		<tr>
		
			<td class="ML_title <c:if test="${dto.read eq 't' }">ML_title_T</c:if>" id="messageList_title" title="${dto.num}" >${dto.title }</td>
			<td id="messageList_date"> ${dto.reg_date }</td>
		</tr>	
		</c:forEach>
		</tbody>
	</table>
