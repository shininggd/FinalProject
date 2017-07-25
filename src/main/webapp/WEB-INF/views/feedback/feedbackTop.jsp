<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="block_top"> 
		<img class="profileImage" src="<c:url value="/resources/img/member/profilePhoto/${fname }"/>">
		
		<div class="titleBox">
		 <a href="studyPage?snum=${dto.num }" style="color: white;">${dto.title}</a>
		</div>
		
	</div>