<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/myPoint.css">
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>

<section id="main_section">
	
	<div id="my_page_header">
		<div id="header_contents">
			<div id="user-photo"></div>
			<div id="tabs">
				<div id="user_name">장태주</div>
				<div id="tab-box">
					<a class="tab" href="/learn_run/member/myStudy">내 스터디</a>
					<a class="tab" href="/learn_run/member/myPurchase">내 구매 내역</a>
					<a class="tab selected" href="/learn_run/member/myPoint">내 포인트</a>
					<a class="tab" href="/learn_run/member/myPage">내 프로필</a>
					<c:if test="${member.id eq 'admin' }">
					<a class="tab" href="/learn_run/member/adminPage">관리자 페이지</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<div class="main_container">
		
		<h1 id="mypoint_h1">내 포인트</h1>
		<div id="mypoint_list">
			
			<div id="point_status">
				<div id="myPoint_wrap">
					<div class="myPoint" id="myPoint_1">
					현재 나의 포인트 
					</div>
					<div class="myPoint" id="myPoint_2">
					<span id="point_span"><fmt:formatNumber type="currency" currencySymbol="">${member.point}</fmt:formatNumber></span>
					<img id="point_img" src="/learn_run/resources/img/member/point.png">
					</div>
				</div>
			
				<c:if test="${member.grade eq 'tutor' }">
				<div id="myGPoint_wrap">
					<div class="myPoint" id="myPoint_1">
					현재 나의 <p id="point_G">G</p>포인트 
					</div>
					<div class="myPoint" id="myPoint_2">
					<span id="Gpoint_span">${member.gpoint }</span>
					<img id="point_img" src="/learn_run/resources/img/member/point.png">
					</div>
				</div>
				</c:if>
			</div>
			
			<h3 id="gift_h3">포인트 -> 도서문화 상품권으로 교환</h3>
			
			<div id="giftCard_wrap">
				<input class="gc_radio" type="radio" name="gc_radio" value="5000"><img class="giftCard" src="/learn_run/resources/img/member/giftCard5000.jpg">
				<input class="gc_radio" type="radio" name="gc_radio" value="10000"><img class="giftCard" src="/learn_run/resources/img/member/giftCard10000.jpg">
				<input type="button" id="gc_btn" value="교환하기 >">
			</div>
		</div>
	
	</div>


</section>

<c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript">
	
	var gc = "";
	$(".gc_radio").click(function () {
		gc = $(this).prop("value");
	});
	
	$("#gc_btn").click(function () {
		$.post("pointGC",{point:gc,id:"${member.id}"},function(result) {
			alert(result.trim());
			myPoint();
		});
		
		
	});
	
	function myPoint() {
		$.post("myP",{id:"${member.id}"},function(result) {
			var p = result.trim();
			$("#point_span").html(numberWithCommas(p));
		});
	}
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}


</script>
</body>
</html>