<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyList.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/feedback/feedback_basic.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/feedback/feedback_view.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
<div class="main_block">
	<!--===================상단====================================  -->
	<c:import url="feedbackTop.jsp"></c:import>
	<!--===============================================================  -->
	
	
	<div class="viewBlock">
		<div class="viewBox">
			<div class="oneBox"> 
				<div class="oneBoxTop">
					<span class="writer"> ${view.writer }</span> <span class="reg_date">${view.reg_date }</span><br>
					<span class="title">${view.title }</span>
					
				</div>
				<div class="contentsBox">
				${view.contents }
				</div>
				<c:if test="${file.fname != null  }">
				<a href="fileDown?filename=${file.fname }&oriname=${file.oname }"><span class="download">
				<img class="downIcon" src="<c:url value="/resources/img/feedback/downIcon.png"/>">
				${file.oname }</span></a>
				</c:if>
			</div>
			<div class="replyBtnBox">
				<a href="feedbackReply?num=${view.num }"><div class="replyBtn"> 
				<img class="reply_write" src="<c:url value="/resources/img/study/pen.jpg"/>"> 답글달기</div></a>
				<div class="updateBtn"> 
				<a href="feedbackUpdate?num=${view.num }">수정하기</a></div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	<!--===================좌측====================================  -->
	<c:import url="feedbackSide.jsp"></c:import>
	<!--===============================================================  -->
</div>
</section>
<!-- ======================================== 섹션END==========================================  -->
<c:import url="../temp/footer.jsp"></c:import>


</body>
</html>