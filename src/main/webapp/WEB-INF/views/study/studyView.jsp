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
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyView.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
	$(function () {
		$("#emptyM").click(function() {
			alert("로그인 후 이용 가능합니다.");
		});
	});

</script>

</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
 
<div class="Space">
<div class="productIntroduce">
	
	<div class="sideBarFixed">
		<div class="sideTop">
		${dto.title }
		</div>
		
		<hr class="sideHr">
		<div class="sideMiddle">
		<img class="radioImage" src="<c:url value="/resources/img/study/radioCircle.jpg"/>"> <span class="middleText"> <fmt:formatDate value="${dto.sDate }" pattern="MM/dd"/>  - <fmt:formatDate value="${dto.lDate }" pattern="MM/dd"/></span>
		
		</div>
		<hr class="sideHr">
		<div class="sideBottom">
			<div class="bottomBoxes">
			<span class="howPrice">참가비</span><span class="attendPrice"><fmt:formatNumber type="currency" currencySymbol="">${dto.price }</fmt:formatNumber>원</span> 
			</div>
			<div class="bottomBoxes">
			<c:if test="${not empty member.id}">
				<a role="button" href="studyPurchase?num=${dto.num}&tid=${dto.tid}" class="attendBtn btn"><h4>참여신청하기</h4></a>
			</c:if>
			<c:if test="${empty member.id}">
				<a role="button" href="#" id="emptyM" class="attendBtn btn"><h4>참여신청하기</h4></a>
			</c:if>
			</div>
			<div class="bottomBoxes">
			<a class="favoriteBtn btn">♡  찜하기</a> 
			</div>
			
		</div>
		
		
	</div>
	<div class="imageBox">
	
	</div>
	<div class="levelBox">
		<div class="levelTop">Level</div>
		<div class="levelBottom">${dto.lv }</div>
	</div>
	<div class="titleBox">
		<span class="titleLocation">${dto.location }</span>
		<div class="titleMain">
			${dto.title }
		</div>
	
	</div>
	<hr>
	<span class="introduceLabel">스터디 소개</span>
	<div class="introduceContent">
	${dto.contents }
	</div>
<hr>	
	<span class="introduceLabel">상세 정보</span>
	<div class="introduceBottom">
		<p>장소: ${dto.location }</p>
		<p>인원: ${dto.people } </p>
		<p>기간: ${dto.sDate } - ${dto.lDate }</p> 
	</div>
	<hr>
	<div class="tutorLabel">
	리더소개
	<p><img class="tutorImage" src="<c:url value="/resources/img/member/profilePhoto/${profile }"/>"><p>
	</div>
	<div class="introduceContent">
	${tutor.introduce }
		</div>
		

</div>

<div class="update_box">
<c:if test="${member.id eq tutor.id }">
<form action="studyUpdate" method="post">
<input type="hidden" name="tid" value="${tutor.id}">
<input type="hidden" name="num" value="${dto.num}">
<input type="submit" value="수정하기" class="update_btn">
</form>
</c:if>
</div>
</div>
</section>
<!-- ======================================== 섹션END==========================================  -->

<c:import url="../temp/footer.jsp"></c:import>

<script src="<%=application.getContextPath()%>/resources/js/study/studyView.js"></script>
</body>
</html>