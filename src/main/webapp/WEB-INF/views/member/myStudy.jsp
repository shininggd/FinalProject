<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/myStudy.css">
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>

<section id="main_section">
	
	<div id="my_page_header">
		<div id="header_contents">
			<div id="user-photo"></div>
			<div id="tabs">
				<div id="user_name">${member.name }</div>
				<div id="tab-box">
					<a class="tab selected" href="/learn_run/member/myStudy">내 스터디</a>
					<c:if test="${member.grade eq 'student'}">
					<a class="tab" href="/learn_run/member/myPurchase">내 구매 내역</a>
					</c:if>
					<a class="tab" href="/learn_run/member/myPoint">내 포인트</a>
					<a class="tab" href="/learn_run/member/myPage">내 프로필</a>
					<c:if test="${member.id eq 'admin' }">
					<a class="tab" href="/learn_run/member/adminPage">관리자 페이지</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<div class="main_container">
		
		<h1 id="mystudy_h1">내 스터디 목록</h1>
		<div id="mystudy_list">
			
		</div>
	
	</div>
	
	<form action="/learn_run/study/online/onlineStudyPage" id="online_frm" method="post">
		<input type="hidden" id="room_id_value" name="room_id">
		<input type="hidden" id="category_value" name="category">
	</form>


</section>

<c:import url="../temp/footer.jsp"></c:import>

<script type="text/javascript">
	var id = '${member.id}';
	
	$.post("../study/myStudyList",{id:id},function(result) {
		$("#mystudy_list").html(result);
	});
	
	$("#mystudy_list").on("click",".online_btn",function() {
		var room_id = "roomId"+$(this).prop("id");
		var category = $(this).prop("title");
		$("#room_id_value").prop("value",room_id);
		$("#category_value").prop("value",category);
		
		$("#online_frm").submit();
	});

	
</script>
</body>
</html>