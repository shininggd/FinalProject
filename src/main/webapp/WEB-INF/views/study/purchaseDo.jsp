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
					<c:if test="${dto.type eq 'card'}">
						<h3>${dto.type} 결제</h3>
						<form action="payDo">
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
										<td>${dto.title }</td>
										<td>${dto.tid }</td>
										<td>${dto.price }</td>
									</tr>
								</tbody>
							</table>
							<div class="clear"></div>
							<h4>구매자 정보</h4>
							<table>
								<tr>
									<td>이름</td>
									<td>${dto.name}</td>
								</tr>
								<tr>
									<td>ID</td>
									<td>${dto.id}</td>
								</tr>
								<tr>
									<td>카드사</td>
									<td>
									<select>
										<option>국민</option>
										<option>신한</option>
										<option>우리</option>
										<option>하나</option>
										<option>농협</option>
									</select> 
									</td>
								</tr>
									<td><input type="number">-<input type="number">-<input type="number"> </td>
									<td>${dto.id }</td>
									<td></td>
									<td></td>
								
							</table>
							
							<a role="button" id="payDo">결제하기</a>
							
						</form>
					</c:if>
					<c:if test="${dto.type eq 'smart'}">
						<form action="payDo">
							<table>
								<thead>
									<tr>
										<td>강의명</td>
										<td>튜터</td>
										<td>가격</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${dto.title }</td>
										<td>${dto.price }</td>
										<td>${dto.tid }</td>
									</tr>
								</tbody>
							</table>
							<a role="button" id="doBtn">결제하기</a>
						</form>
					</c:if>
					<c:if test="${dto.type eq 'account'}">
						<form action="payDo">
							<table>
								<td>${dto.title }</td>
								<td>${dto.price }</td>
								<td>${dto.tid }</td>
						
							<div class="clear"></div>
							<a role="button" id="doBtn">결제하기</a>
								<br>
							<a role="b"></a>
							</br>
							</table>
						</form>
					</c:if>
				</div>
</body>
</html>