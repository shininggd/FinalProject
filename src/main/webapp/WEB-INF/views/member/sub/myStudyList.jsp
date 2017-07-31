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
			<div class="myStudy_contents">
			<p class="thumb"><img src="/learn_run/resources/img/study/learnRun.jpg"></p>
			<p class="tit">
				${dto.title }
				<span class="line">|</span>
				${dto.tid }
				<span class="line">|</span>
				${dto.sDate }
			</p>
			<p class="info">
				<span class="cell">
					<strong>Location:</strong>
					${dto.location }
					<c:if test="${dto.location eq '온라인' }">
					<img class="on_off" src="/learn_run/resources/img/study/${dto.onOff}.png">
					</c:if>
				</span>
				<span class="cell">
					<strong>LV:</strong>
					${dto.lv }
				</span>
				<span class="cell">
					<strong>Category:</strong>
					${dto.category }
				</span>
			</p>
			
			
			</div>
			
			<div class="myStudy_buttons">
				<input type="button" id="" value="강의페이지">
				<c:if test="${dto.location eq '온라인' and dto.onOff eq 'on' }">
				<input class="online_btn" type="button" id="${dto.num }" value="강의 입장">
				</c:if>
			</div>
		</div>
	</c:forEach>
	
</body>
</html>