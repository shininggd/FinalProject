<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyPurchase.css">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
	
		$("#doBtn").click(function() {
		
			$("#p-frm").attr("action","purchaseDo");
		
			$("#p-frm").submit();	
		});
		
	});
</script>
</head>
<body>
<c:import url="../temp/header.jsp" />
<section id="main_section">

<div class="main_container">

	<div class="titleContainer">
		<div id="p-step1">
			<div class="p-stepTitle">
			<h3>step 1. 참여 정보 확인</h3>
			</div>
		</div>
		<div id="p-step2">
			<div class="p-stepTitle">
			<h3>step 2. 강의 결제하기</h3>
			</div>
		</div>
		<div id="p-step3">
			<div class="p-stepTitle">
			<h3>step 3. 강의 신청 완료</h3>
			</div>
		</div>
	</div>
		<div class="clear"></div>
		<div id="containerContents">
			<form id="p-frm" method="post">
			<table class="p-table">
			<thead>
				<tr>
				<td class="p-table p-index" id="p-lecture" colspan="2">강의명</td>
				<td class="p-table p-index" id="p-leader">리더</td>
				<td class="p-table p-index" id="p-price">금액</td>
				<td class="p-table p-index" id="p-pay">결제수단</td>
				</tr>
			</thead>
			<tbody>
				
				<tr>
				<td id="leader-img"><img alt="" src="/learn_run/resources/img/study-8.jpg" style="width: 60px; height: 60px;"></td>
				<td>${dto.title}</td>
				<td>${dto.tid}</td>
				<td>${dto.price}</td>
				<td>
					<select id="selectPay" name="selectPay">
						<option value="card">카드</option>
						<option value="smart">휴대폰</option>
						<option value="account">계좌이체</option>
					</select>
				</td>
				</tr>
			
			</tbody>
			</table>
			</form>
			<a role="button" href="purchaseDo?num=${dto.num}&" id="doBtn">다음 단계로</a>
		</div>
</div>

</section>
<c:import url="../temp/footer.jsp" />
</body>
</html>