<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/sub/memberOversight.css">
<div id="membersearchform">
					<form name="mem_search" id="mem_search" method="post">
						<input type="hidden" name="curPage" id="curPage">
						<!-- 페이징 넘어갈 때 처음 검색한 find값 가져오기 -->
						<input type="hidden" id="find_value" value="${listInfo.find }">
							<select name="Mfind" id="Mfind">
								<option value="id">ID</option>
								<option value="name">NAME</option>
								<option value="grade">GRADE</option>
								<option value="email">EMAIL</option>
							</select>
							<!-- 페이징 넘어갈 때 처음 검색한 search값 로 가져오기 -->
						<input type="text" name="search" value="${listInfo.search }" id="search">
						<input type="button" id="membtn" value="SEARCH">
					</form>
				</div>
<table id="memberinfo_table">
	<tr>
		<th>id</th>
		<th>name</th>
		<th>birth</th>
		<th>grade</th>
		<th>point</th>
		<th>email</th>
		<th>telecom</th>
		<th>phone</th>
		<th>delete</th>
	</tr>
	<c:forEach items="${data}" var="i" varStatus="s">
	<tr>
		<td>${i.id}</td>
		<td>${i.name}</td>
		<td>${i.birth}</td>
		<td>${i.grade}</td>
		<td>${i.point}</td>
		<td>${i.email}</td>
		<td>${i.telecom}</td>
		<td>${i.phone}</td>
		<td>
			<input type="button" class="member_Delete" id="${s.index}" value="removal">
		</td>
	</tr>
	</c:forEach>
</table>

	<div id="admin_Spagelist">
						<!-- 페이징목록  -->
		<c:if test="${listInfo.curBlock > 1 }">
			<span class="Mgooh" id="${listInfo.startNum-1}">[이전]</span>
		</c:if>
		<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum }" var="i">
			<span class="Mgooh" id="${i}">${i}</span>
		</c:forEach>
		<c:if test="${listInfo.curBlock < listInfo.totalBlock}">
			<span class="Mgooh" id="${listInfo.lastNum+1}">[다음]</span>
		</c:if>
						
	</div>