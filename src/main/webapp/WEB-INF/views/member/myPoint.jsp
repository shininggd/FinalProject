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
				<div id="user_name">${member.name}</div>
				<div id="tab-box">
					<a class="tab" href="/learn_run/member/myStudy">내 스터디</a>
					<c:if test="${member.grade eq 'student'}">
					<a class="tab" href="/learn_run/member/myPurchase">내 구매 내역</a>
					</c:if>
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
					현재 나의 Point
					</div>
					<div class="myPoint" id="myPoint_2">
					<span id="point_span"><fmt:formatNumber type="currency" currencySymbol="">${member.point}</fmt:formatNumber></span>
					<img id="point_img" src="/learn_run/resources/img/member/point.png">
					</div>
				</div>
			
				<c:if test="${member.grade eq 'tutor' }">
				<div id="myGPoint_wrap">
					<div class="myPoint" id="myPoint_1">
					현재 나의 <p id="point_G">G</p>point 
					</div>
					<div class="myPoint" id="myPoint_2">
					<span id="Gpoint_span"><fmt:formatNumber type="currency" currencySymbol="">${member.gpoint}</fmt:formatNumber></span>
					<img id="point_img" src="/learn_run/resources/img/member/point.png">
					</div>
				</div>
				</c:if>
			</div>
			
			<h3 id="gift_h3">포인트 사용</h3>
			
			<div id="point_submenu">
				<span id="gift_btn"><strong>[point]</strong>포인트->문화상품권</span>
				<c:if test="${member.grade eq 'tutor' }">
				<span id="givePoint_btn"><strong>[Gpoint]</strong>학생에게 포인트 선물하기</span>
				</c:if>
			</div>
			
			<div id="giftCard_wrap">
				<p>-보유하신 포인트에서 도서문화상품권으로 교환합니다.</p>
				<p>-도서문화상품권의 금액 만큼 포인트가 차감되고 메세지를 통해 일련번호가 전송됩니다.</p>
				<input class="gc_radio" type="radio" name="gc_radio" value="5000"><img class="giftCard" src="/learn_run/resources/img/member/giftCard5000.jpg">
				<input class="gc_radio" type="radio" name="gc_radio" value="10000"><img class="giftCard" src="/learn_run/resources/img/member/giftCard10000.jpg">
				<input type="button" id="gc_btn" value="교환하기                  >">
			</div>
			
			<div id="giveP_wrap">
				<p>-보유하신 Gpoint를 학생에게 point로 선물합니다.</p>
				<p>-Gpoint는 학생에게 선물하는 용도로만 사용 가능합니다.</p>
				<div id="GPstudentList_wrap">
				
				</div>
				<div id="gpinput_wrap">
				<strong>선물하실 포인트 :</strong><input type="number" id="givePoint" name="point"><img id="gpoint_img" src="/learn_run/resources/img/member/point.png">
				</div><br>
				<input type="button" id="gp_btn" value="선물하기                  >">
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
	
	$("#gift_btn").click(function () {
		$("#giftCard_wrap").css("display","inline-block");
		$("#giveP_wrap").css("display","none");
	});
	
	$("#givePoint_btn").click(function () {
		$("#giftCard_wrap").css("display","none");
		$("#giveP_wrap").css("display","inline-block");
		
		StudentList();
		
		
	});
	
	$("#gp_btn").click(function() {
		var sid = $("#GPstudentList").prop("value");
		var point = $("#givePoint").prop("value");
		
		$.post("pointGive",{id:'${member.id}',sid:sid,point:point},function(result) {
			alert(result.trim());
			mygPoint();
		});
	});
	
	function myPoint() {
		$.post("myP",{id:"${member.id}"},function(result) {
			var p = result.trim();
			$("#point_span").html(numberWithCommas(p));
		});
	}
	
	function mygPoint() {
		$.post("mygP",{id:'${member.id}'},function(result){
			var p = result.trim();
			$("#Gpoint_span").html(numberWithCommas(p));
		});
	}
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	function StudentList() {
		$.post("GPStudentList",{tid:'${member.id}'},function(result) {
			$("#GPstudentList_wrap").html(result.trim());
		});
	}


</script>
</body>
</html>