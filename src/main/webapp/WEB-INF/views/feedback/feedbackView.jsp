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
.viewBlock{
	width: 750px;
	min-height: 950px;
	float: right;	
}
.viewBox{
margin-top:12px;
width: 740px;

border-radius: 10px;
background-color: white;
min-height: 1000px;
}
.oneBox{
	margin-top: 15px;
	width: 100%;
	min-height: 900px;
	border-top: 3px groove #d0d0d0;
	border-bottom: 5px double #d0d0d0;
	border-bottom-style: groove;
    
	
}
.oneBoxTop{
	margin-left: 10px;
}
.writer{
    
    color: #7097cc;
    letter-spacing: -1px;
    font-weight: bold;
    margin-left: 5px;
}
.title{
    color: #000;
    font-size: 30px;
    margin-left: 5px;
}
.reg_date{
	font-size: 12px;
	color: #999;
    font-family: tahoma;
    margin-left: 5px;
}
.contentsBox{
	margin-top:34px;
	width: 99.5%;
	min-height: 750px;
	border: 2px solid #d0d0d0;
	
}
.replyBtnBox{
	width: 100%;
	height: 70px;
	
	overflow: hidden;
}
.replyBtn{
	margin-top: 17.5px;
	margin-left:300px;
	width:140px;
	height:35px;
	text-align:center;
	line-height: 35px;
	display:inline-block;
	border: 2px solid #ebebeb;
	background-color: white;
	
}
	.reply_write{
		margin-left: 5px;
	}
.updateBtn{
margin-top: 17.5px;
	margin-left:10px;
	width:80px;
	height:35px;
	text-align:center;
	line-height: 35px;
	display:inline-block;
	border: 2px solid #ebebeb;
	

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
	
	
	<div class="viewBlock">
		<div class="viewBox">
			<div class="oneBox"> 
				<div class="oneBoxTop">
					<span class="writer"> ${view.writer }</span> <span class="reg_date">${view.reg_date }</span><br>
					<span class="title">${view.title }</span>
				</div>
				<div class="contentsBox">
				${view.contents }
				</div>
				
			</div>
			<div class="replyBtnBox">
				<a href="feedbackReply?num=${view.num }"><div class="replyBtn"> 
				<img class="reply_write" src="<c:url value="/resources/img/study/pen.jpg"/>"> 답글달기</div></a>
				<div class="updateBtn"> 
				<a href="feedbackUpdate?num=${view.num }">수정하기</a></div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	<!--===================좌측====================================  -->
	<c:import url="feedbackSide.jsp"></c:import>
	<!--===============================================================  -->
</div>
</section>
<!-- ======================================== 섹션END==========================================  -->
<c:import url="../temp/footer.jsp"></c:import>


</body>
</html>