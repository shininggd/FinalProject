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
		var input_all = false;		
	
		$("#p-frm").click(function() {
			
			if(){
				alert("모든 항목을 정확히 기입해주시기 바랍니다");
				input_all == false;
			};
			
			if(input_all == true){
				$("#p-frm").submit();
			};
			
		});
		
	});
</script>
</head>
<body>
<c:import url="../temp/header.jsp" />
<section id="main_section">

<div class="main_container">

	<div>
		<h3>구매 강의 정보</h3>
			<form action="" id="p-frm" method="post">
			<table>
			<thead>
				<tr>강의명</tr>
				<tr>금액</tr>
				<tr>구매일</tr>
			</thead>
			<tbody>
				<td></td>
				<td></td>
				<td></td>
			</tbody>
			</table>
			</form>
		
	</div>
</div>

</section>
<c:import url="../temp/footer.jsp" />
</body>
</html>