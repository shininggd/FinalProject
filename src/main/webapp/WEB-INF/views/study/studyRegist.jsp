<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyList.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<style type="text/css">
.inputForm{
	width: 800px;
	height: 700px;
	background-color: fuchsia;
	margin: 0 auto;
}
</style>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
	<div class="inputForm">
		<form action="studyRegistInsert" method="post" name="frm">
			<input type="hidden" name="tid" value="${member.id }">
			<p>강의명:<input type="text" name="title"></p>
			<p>강의레벨: <select name="lv">
						<option value="초보">초보</option>
						<option value="중수">중수</option>
						<option value="고수">고수</option>
					</select></p>
			<p>가   격: <input type="number" name="price"></p>
			<p>시작일: <input type="date" name="sDate"></p>
			<p>종료일: <input type="date" name="lDate"></p>
			<p>강의유형: <select name="category">
						<option value="영어회화">영어회화</option>
						<option value="중국어회화">중국어회화</option>
					</select></p>
			<p>모집인원: <input type="number" min="1" max="99" name="people"></p>
			<p>강의장소: <select name="location">
						<option value="온라인">온라인</option>
						<option value="천호동">천호동</option>
					</select></p>			
			<p>설    명:<textarea rows="20" cols="30" name="contents"></textarea></p>
			<p><input type="submit"> </p>
		</form>
	</div>
</section>
<!-- ======================================== 섹션END==========================================  -->
<c:import url="../temp/footer.jsp"></c:import>

</body>
</html>