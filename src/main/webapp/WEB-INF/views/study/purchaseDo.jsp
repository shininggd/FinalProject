<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css"
	href="<%=application.getContextPath()%>/resources/css/study/studyPurchase.css">
<title>Insert title here</title>
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
				<div class="clear"></div>
				<div id="containerContents">
					<c:if test="">
						<form action="">
							<table>
								<thead>
									<tr>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
							<a role="button" id="doBtn">결제하기</a>
						</form>
					</c:if>
				</div>
			</div>
		</div>

	</section>

	<c:import url="../temp/footer.jsp" />
</body>
</html>