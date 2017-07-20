<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/message/messagePage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>

<section id="main_section">

	<div class="main_container">
		
		<div id="section_left">
			<div id="left_header">
				메시지(0)
			</div>
			<div id="left_contents">
				
			</div>
		</div>
		<div id="section_right">
			<div id="right_contents">
				<div id="no_message">
					<img src="/learn_run/resources/img/temp/noMessage.png">
					<span id="message_span">아직 메세지가 없습니다.</span>
				</div>
			</div>
		</div>

	</div>

</section>

<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>