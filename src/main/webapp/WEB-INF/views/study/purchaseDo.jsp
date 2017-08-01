<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/resources/css/study/purchaseDo.css">
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js" ></script>
<script type="text/javascript">
 $(function () {
	 
		var payCheck = false;
		var str = "";
		
		
	$("#ch_cardNum").click(function() {
		
		var cardNum1 = $("#cardNum1").val();
		var cardNum2 = $("#cardNum2").val();
		var cardNum3 = $("#cardNum3").val();
		var cardNum4 = $("#cardNum4").val();
		
		str = cardNum1+cardNum2+cardNum3+cardNum4;
		
		
		$.post("cardNumCheck",{str:str}, function(data) {
		
			if(data.trim()=='true'){
				payCheck = true;
				alert("카드정보가 확인되었습니다.");
			}else if(str.length<16){
				alert("카드번호 16자리를 확인해주세요");
			}else{
				alert("카드 번호를 정확하게 입력해주시기 바랍니다.");
				payCheck = false;
				
			}
		});
		
	});
	
	$("#payCard").click(function() {
			var cardCom = $("#cardCom").val();
			var card_value = cardCom+"/"+str;
		
			if(payCheck==false){
				alert("올바르지 않은 정보입니다.");
				return false;
			}else{
				
				alert("결제가 완료되었습니다. 내역은 마이페이지에서 확인가능합니다.");
				$("#card_value").prop("value",card_value);
		 		$("#p_frm_card").submit();
		 		 				 		
		 		window.opener.top.location.href="/learn_run/study/payComplete";
			}
		
	});
	
	$("#paySmart").click(function() {
		
		var phone = $("#phone_smart").prop("value");
		var birth = $("#birth").prop("value");
		
		
		$.post("smartCheck", {birth:birth,phone:phone}, function(data) {
			//alert(data.trim());
			
			var smartCheck = false;
			
			if(data.trim() == 'true'){
				smartCheck = true;
			}else{
				smartCheck = false;
			}		
			
		if(smartCheck == true){
			//생일을 올바르게 입력한 경우
				
			alert("결제가 완료되었습니다. 내역은 마이페이지에서 확인가능합니다.");
			$("#phone_value").prop("value", phone);
	 		$("#p_frm_smart").submit();
	 		
	 		window.opener.top.location.href="/learn_run/study/payComplete";
			
		}else{
			// id에 해당하는 생년월일이 일치하지 않는 경우
			alert("올바르지 않은 정보입니다.");
			return false;
			
		}
		});
		
	});
	
	$("#payAccount").click(function() {
		
		var bankName = $("#bankName").prop("value");
		var account = $("#account").prop("value");
		var bank = bankName+'/'+account;
		alert(bank);
		var length = account.length;
		var bank_length;

		
		if(bankName == '국민' || bankName =='기업'){
			bank_length = 14
		}
		if(bankName == '농협' || bankName == '우리'){
			bank_length = 13
		}
		if(bankName == '신한'){
			bank_length = 12
		}
		if(account == null || length != bank_length){
			alert("계좌번호를 정확히 입력해주시기 바랍니다.")
		}
		
		if(bank_length == length){
			payCheck = true;
		}else{
			payCheck = false;
		}
		
		if(payCheck == true){
			alert("신청이 정상적으로 완료되었습니다.");
			$("#bank_value").prop("value",bank);
			$("#p_frm_account").submit();
	 		
	 		window.opener.top.location.href="/learn_run/study/payComplete";
		}else{
			alert("신청이 정상적으로 완료되지 않았습니다. 다시 시도하거나 문의주시기 바랍니다. ")
		}
	
	});
	});

</script>	
<title>Insert title here</title>
</head>
<body>

			<div class="titleContainer">
				<div id="p-step1">
					<div class="p-stepTitle">
						<h5>step 1. 참여 정보 확인</h5>
					</div>
				</div>
				<div id="p-step2">
					<div class="p-stepTitle">
						<h5>step 2. 강의 결제하기</h5>
					</div>
				</div>
				<div id="p-step3">
					<div class="p-stepTitle">
						<h5>step 3. 강의 신청 완료</h5>
					</div>
				</div>
			</div>
				<div class="clear"></div>
				<div class="containerContents">
					<c:if test="${dto.type eq '카드'}">
						<h3>카드 결제</h3>
						<form action="payDo" id="p_frm_card" method="POST">
							<input type="hidden" name="product" value="${dto.product}">
							<input type="hidden" name="price" value="${dto.price}">
							<input type="hidden" name="name" value="${dto.name}">
							<input type="hidden" name="id" value="${dto.id}">
							<input type="hidden" name="type" value="${dto.type}">
							<input type="hidden" name="snum" value="${dto.snum }">
							<input type="hidden" name="tid" value="${dto.tid }">
							<input type="hidden" name="cnumber" id="card_value">
						</form>
							<table class="p-table">
								<thead>
									<tr>
										<td class="p-index p-lecture">강의명</td>
										<td class="p-index p-leader">튜터</td>
										<td class="p-index p-price">가격</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${dto.product }</td>
										<td>${dto.tid }</td>
										<td>${dto.price }</td>
									</tr>
								</tbody>
							</table>
							<div class="clear"></div>
							<h4>구매자 정보</h4>
							<table class="memberInfo">
								<tr>
									<td>이름</td>
									<td colspan="2">${member.name}</td>
								</tr>
								<tr>
									<td>카드사</td>
									<td>
										<select id="cardCom">
											<option>BC</option>
											<option>국민</option>
											<option>신한</option>
											<option>삼성</option>
											<option>롯데</option>
											<option>신한</option>
											<option>우리</option>
											<option>현대</option>
										</select>
									</td>
								</tr>
									<tr>
									<td>카드번호</td>
									<td>
									<input type="number" class="cardNum" id="cardNum1" maxlength="4">-<input type="number" class="cardNum" id="cardNum2" maxlength="4">-<input type="number" class="cardNum" id="cardNum3" maxlength="4">-<input type="number" class="cardNum" id="cardNum4" maxlength="4">
									</td>
									</tr>
									<tr>
									<td rowspan="2">
									<input type="button" value="카드번호확인" id="ch_cardNum">
									</td>
									</tr>
									
							</table>
							
							<a role="button" class="payDo" id="payCard">결제하기</a>
							
						
					</c:if>
					<c:if test="${dto.type eq '휴대폰'}">
					<h3>스마트 결제</h3>
						<form action="payDo" id="p_frm_smart" method="POST">
						
							<input type="hidden" name="product" value="${dto.product}">
							<input type="hidden" name="price" value="${dto.price}">
							<input type="hidden" name="name" value="${dto.name}">
							<input type="hidden" name="id" value="${dto.id}">
							<input type="hidden" name="type" value="${dto.type}">
							<input type="hidden" name="snum" value="${dto.snum }">
							<input type="hidden" name="tid" value="${dto.tid }">
							<input type="hidden" name="pnumber" id="phone_value">
							<table class="p-table">
								<thead>
									<tr>
										<td class="p-index p-lecture">강의명</td>
										<td class="p-index p-leader">튜터</td>
										<td class="p-index p-price">가격</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${dto.product }</td>
										<td>${dto.tid }</td>
										<td>${dto.price }</td>
									</tr>
								</tbody>
							</table>
							<div class="clear"></div>
							<h4>구매자 정보</h4>
							<table class="memberInfo">
								<tr>
								<td>이름</td>
								<td>${member.name}</td>
								</tr>
								<tr>
								<td>생년월일</td>
								<td>
								<input type="date" name="birth" id="birth">
								</td>
								</tr>
								<tr>
								<td>휴대폰 번호 </td> 
								<td id="phone_all">
								<span id="phone">*가입 시 입력한 연락처를 입력해주세요*</span>
								<br>
								<input type="text" id="phone_smart" name="phone" placeholder="예) 010-0000-0000">
								</td>
								</tr>
							</table>
							<a role="button" class="payDo" id="paySmart">결제하기</a>
						</form>
					</c:if>
					<c:if test="${dto.type eq '무통장입금'}">
					<h3>무통장입금</h3>
						<form action="payDo" id="p_frm_account" method="post">
							<input type="hidden" name="product" value="${dto.product}">
							<input type="hidden" name="price" value="${dto.price}">
							<input type="hidden" name="name" value="${dto.name}">
							<input type="hidden" name="id" value="${dto.id}">
							<input type="hidden" name="type" value="${dto.type}">
							<input type="hidden" name="snum" value="${dto.snum }">
							<input type="hidden" name="tid" value="${dto.tid }">
							<input type="hidden" name="bank" id="bank_value">
						</form>
							<table class="p-table">
								<thead>
									<tr>
										<td class="p-index p-lecture">강의명</td>
										<td class="p-index p-leader">튜터</td>
										<td class="p-index p-price">가격</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${dto.product }</td>
										<td>${dto.tid }</td>
										<td>${dto.price }</td>
									</tr>
								</tbody>
							</table>
							<div class="clear"></div>
							<h4>구매자 정보</h4>
							<table class="memberInfo">
								<tr>
									<td>이름</td>
									<td>${member.name}</td>
								</tr>
								<tr>
									<td>은행</td>
									<td>
									<select id="bankName">
									<option value="국민">국민</option>
									<option value="신한">신한</option>
									<option value="우리">우리</option>
									<option value="농협">농협</option>
									<option value="기업">기업</option>
									</select>
									</td>
								</tr>
								<tr>
									<td>계좌입력</td>
									<td><input type="text" id="account" maxlength="14" placeholder="' - '을 제외하고 입력해주세요."></td>
								</tr>
							</table>
							<a role="button" class="payDo" id="payAccount">결제하기</a>
							
				
						
					</c:if>
				</div>
</body>
</html>