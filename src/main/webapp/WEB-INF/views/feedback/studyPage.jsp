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
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/feedback/feedback_basic.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<style type="text/css">
.bothSixbox{
width: 750px;
height: 575px;

margin-top: 12px;
float: right;
margin-right:15px;
position: static;
}
.bothLeftBox{
width: 49%;
height: 100%;
display: inline-block;

margin-left: 4px;
}
.bothRightBox{
width: 49%;
height: 100%;
display: inline-block;

margin-left: 2px;
}
.whatBox{
	width: 100%;
	height: 30px;
	border-bottom: 2px solid #d5dce5;;
	font-size: 20px;
	
}
.more{
	float: right;
	font-size: 14px;
	line-height: 30px;
}
.whatList{
	margin-top: 10px;
	width: 99.7%;
	height: 60px;
	border-radius: 5px;
	background-color: white;
}

</style>

</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
<div class="main_block">
	<!--===================상단====================================  -->
	<c:import url="feedbackTop.jsp"></c:import>
	<!--===============================================================  -->
	
	
	<img class="learnImage" src="<c:url value="/resources/img/study/learnRun.jpg"/>">
	<div class="bothSixbox">
		<div class="bothLeftBox">
			<div class="whatBox">［우리들의 이야기］<span class="more"><a href="feedbackList?find=snum,category&search=${dto.num },우리들의 이야기">더 보기</a></span> </div>
		
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			
		
		
		
		</div>
		<div class="bothRightBox">
			<div class="whatBox">［자유게시판］ <span class="more"><a href="feedbackList?find=snum,category&search=${dto.num },자유게시판">더 보기</a></span></div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			<div class="whatList"> </div>
			
		</div>
	</div>
	
	<!--===================좌측====================================  -->
	<c:import url="feedbackSide.jsp"></c:import>
	<!--===============================================================  -->
</div>
</section>
<!-- ======================================== 섹션END==========================================  -->

<c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript">
ourList('snum,category','${dto.num },우리들의 이야기');
function ourList(find, search) {
	$.get("/feedbackOurList",{find:find,search:search},function(data){
		$(".bothLeftBox").html(data);
})	
}

</script>

</body>
</html>