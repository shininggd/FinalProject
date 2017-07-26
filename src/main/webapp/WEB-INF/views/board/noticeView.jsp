<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/board/noticeView.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<title>Insert title here</title>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<section id="main_section">

	<div class="main_container">
	
	<form action="noticeWrite" id="nWrite_frm" method="post" enctype="multipart/data-form">
		<h2 class="label">TITLE</h2>
		<input type="text" name="title" id="title" value="${dto.title }" readonly="readonly">
		<h2 class="label">WRITER</h2>
		<input type="text" name="writer" id="writer" value="${dto.writer}" readonly="readonly">
		<h2 class="label">CONTENTS</h2>
		<%-- <textarea rows="20" cols="100" id="contents" name="contents" readonly="readonly">
		${dto.contents }
		</textarea> --%>
		
		<div id="contents">${dto.contents }</div>
		
		<input type="button" class="viewPage_btn" id="nList_btn" value="목록">
		<c:if test="${member.id eq 'admin' }">
		<input type="button" class="viewPage_btn" id="nDelete_btn" value="삭제">
		<input type="button" class="viewPage_btn" id="nUpdate_btn" value="수정">
		</c:if>
	</form>
	
	</div>
</section>
<c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript">

	$("#nUpdate_btn").click(function () {
		var num = '${dto.num}';
		location.href = "noticeUpdateForm?num="+num;
	});
	
	$("#nDelete_btn").click(function () {
		var num = '${dto.num}';
		location.href = "noticeDelete?num="+num;
	});
	
	$("#nList_btn").click(function () {
		location.href = "/learn_run/board/noticePage";
	});
	
	
</script>
</body>
</html>