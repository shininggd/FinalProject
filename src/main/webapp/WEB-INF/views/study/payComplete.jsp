<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js" ></script>

<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/payComplete.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
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
			<div id="whereToGo">
				<h3 id="completeMsg">참여 신청이 완료되었습니다.</h3>
				<a href="#" class="toGo" id="record">신청내역 확인하러가기</a>&nbsp;&nbsp;<a href="../" class="toGo" id="home">홈으로</a>
				
			</div>
		</div>
	</div>


</section>
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>