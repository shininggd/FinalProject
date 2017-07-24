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
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js" ></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
	
		$("#doBtn").click(function(){
				
				//alert("click");
				//window.open("/learn_run/member/find_id",  "ID 찾기", "width=500, height=300, left=400, top=250");
				 cw=screen.availWidth;     //화면 넓이
				 ch=screen.availHeight;    //화면 높이

				 sw=600;    //띄울 창의 넓이
				 sh=700;    //띄울 창의 높이

				 ml=(cw-sw)/2;       
				 mt=(ch-sh)/2;      
				 
				 var type = $("#type").val();
				 
				window.open('/learn_run/study/purchaseDo?product=${dto.title}&id=${member.id}&name=${member.name}&price=${dto.price}&type='+type,'purchase_frm','width='+sw+',height='+sh+',top='+mt+',left='+ml+',resizable=no');
				
				 
			//$("#p-frm").attr("action","purchaseDo");
		
		
		});
		
	});
</script>
</head>
<body>
<c:import url="../temp/header.jsp" />


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
			<form id="p-frm" method="post" >
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
					<select id="type" name="type">
						<option value="card">카드</option>
						<option value="smart">휴대폰</option>
						<option value="account">계좌이체</option>
					</select>
				</td>
				</tr>
			
			</tbody>
			</table>
			</form>
			<input type="button" id="doBtn" value="다음 단계로">
		</div>
</div>


<c:import url="../temp/footer.jsp" />
</body>
</html>