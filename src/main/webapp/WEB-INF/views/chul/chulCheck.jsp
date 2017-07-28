<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/chul/chulCheck.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<title>Insert title here</title>
<script type="text/javascript">

$(function(){
	var clock = new Date(); 
	var year = clock.getFullYear(); 
	var month = clock.getMonth()+1;
	var date = clock.getDate();
	var day = year + "-" + month + "-" + date;

getList(day);

$("#calan_show").html(year+"년"+month+"월");
	
	$(".Cgoo").click(function(){
		
	});

$(".chul_day").click(function(){

	var day = $(this).prop("id");
	var da = year + "-" + month + "-" + day;
	getList(da);
});

$("#chulCheck_btn").click(function () {
	$("#chulfrm").submit();
});

$("#chulList").on("click",".chul_del",function() {
	var num = $(this).prop("id");
	
	$.post("chulDelete",{num:num},function(result) {
		alert(result.trim());
		getList(day);
	});
});

function getList(da) {
	
	$.post("chulList",{da:da},function(result) {
		$("#chulList").html(result);
	});
}

});
</script>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
	<section id="main_section">
	
		<div class="main_container">
			<div id="sub_tit"><h3>출석체크!</h3></div>
			<!-- 년월 -->
			<p id="calan_show"></p>
			<!-- 일 -->
			<div id="chaul_day_wrap">
					<c:forEach begin="1" end="31" var="i">
						<span class="chul_day" id="${i }">${i}</span>
						<c:if test="${i < 31}">
						<span> | </span>
						</c:if>
					</c:forEach>
			</div>
			<div id="contents_wrap">
			<form id="chulfrm" action="chulCheck" method="post">
				<input type="hidden" name="writer" value="${member.id}">
				<textarea rows="4" cols="80" name="contents" id="contents"></textarea>
				<img id="chulCheck_btn" src="/learn_run/resources/img/temp/btn-write-check.gif">
			</form>
			</div>
			<!-- 작성된 글 목록 -->
			<div id="chulList">
			
			</div>
			
			<!-- paeging -->
			
		</div>
		
	</section>
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>