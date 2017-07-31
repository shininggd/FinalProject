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
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/myPurchase.css">
</head>
<body>
<script type="text/javascript">
	$(function () {
		$(".callReceipt").click(function() {
			var num = $(this).prop("id");
			$.post("callReceipt", {num:num}, function(data) {
				
			});
			
		});
	});
</script>
<c:import url="../temp/header.jsp"></c:import>

<section id="main_section">
	
	<div id="my_page_header">
		<div id="header_contents">
			<div id="user-photo"></div>
			<div id="tabs">
				<div id="user_name">${member.name}</div>
				<div id="tab-box">
					<a class="tab" href="/learn_run/member/myStudy">내 스터디</a>
					<c:if test="${member.grade eq 'student'}">
					<a class="tab selected" href="/learn_run/member/myPurchase">내 구매 내역</a>
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
		
		<h1 id="mystudy_h1">내 결제 내역</h1>
		<div id="mystudy_list">
			<table id="purchaseList">
					<tr id="index">
						<td id="index-product">강의</td>
						<td>강사</td>
						<td>결제금액</td>
						<td>결제수단</td>
						<td>결제일</td>
					</tr>
				<c:forEach items="${dto}" var="i" >
					<tr>
						<td id="title-product">${i.product}</td>
						<td>${i.tid }</td>
						<td>${i.price }</td>
						<td>${i.type }</td>
						<td>${i.p_date}</td>
					</tr>
					<tr>
						<td colspan="5" id="moreFunc">
							<span class="callReceipt" id="${i.num}">영수증 보기</span>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- 영수증 보기 -->
			<div id="receipt">
				<form action="">
					<fieldset>
						<legend><h3>결제 영수증</h3></legend>
						<table>
							<tr>
								<td>강의 : </td>
								<td></td>
							</tr>
							<tr>
								<td>튜터 : </td>
								<td></td>
							</tr>
							<tr>
								<td>결제금액 : </td>
								<td></td>
							</tr>
							<tr>
								<td>결제정보 : </td>
								<td></td>
							</tr>
							<tr>
								<td>결제일 : </td>
								<td></td>
							</tr>
						</table>
					</fieldset>
				</form>
			</div>	
	</div>


</section>

<c:import url="../temp/footer.jsp"></c:import>

</body>
</html>