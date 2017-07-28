<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div class="leftBox">
	<div class="marginTop"></div>
		<div class="studyViewBox">
		
			<div class="marginTop"></div>
			<div class="viewBoxTop">
				<span class="studyStatus">&ensp;『강의상태』</span>	
				<div class="marginTopS"></div>
				<c:if test="${dto.onOff == 'on' }">
				<img class="switch" src="<c:url value="/resources/img/study/onSwitch.png"/>">
				</c:if>
				<c:if test="${dto.onOff == 'off' }">
				<img class="switch" src="<c:url value="/resources/img/study/offSwitch.png"/>">
				</c:if>
			</div>
			<div class="marginTopS"></div>
			<input type="button" value="『참여하기』" class="enterButton">

		</div>
		<a href="feedbackWrite?snum=${dto.num }"><img class="feed_write" src="<c:url value="/resources/img/study/feed_write.jpg"/>"></a>

		<div class="categoryTBox">		
			<span class="categoryTitle">게시판</span>
		</div>
		<div class="categoryList"> 
			<ul class="categoryUl">
				<li><p><a href="feedbackList?find=snum,category&search=${dto.num },튜터와함께">튜터와 함께</a></p> </li>
				<li><p><a href="feedbackList?find=snum,category&search=${dto.num },우리들의 이야기">우리들의 이야기</a></p> </li>
				<li><p><a href="feedbackList?find=snum,category&search=${dto.num },자유게시판">자유게시판</a></p> </li>
			</ul>
		</div>
	<div class="tempBox"> 
			
		</div>
	
	
	</div>