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
.main_block{
	overflow: hidden;
	
	background-color: #ebebeb;
	width: 1000px;
	min-height: 1000px;
	margin: 0 auto; 
}
.block_top{
	width: 990px;
	margin-left: 2px;
	height: 150px;
	float:left;
	border: 4px solid rgb(255, 159, 0);
	background-color: rgb(255, 140, 26);
}
.profileImage{
float:left;
	width: 100px;
	height: 100px;
	margin-top: 25px;
	margin-left: 10px;
	border-radius: 10%;
	border: 1.5px solid #ebebeb;
}
.titleBox{
	float:left;
	margin-left: 20px;
	margin-top: 35px;
	width: 850px;
	height: 50px;
	
	display: inline-block;
	position: static;
	font-size: 30px;
	font-weight: bolder;
	color: white;
}
.learnImage{
	margin-top: 12px;
	float: right;
	margin-right:15px;
	position: static;
	width: 750px;
	height: 300px;
}
.leftBox{
	margin-left:20px;
	margin-top: 160px;
	width: 200px;
	height: 1000px;
	overflow: hidden;
	
}
.studyViewBox{
	margin-top:15px;
	margin: 0 auto;	
	width: 190px;
	height: 230px;
	background-color: rgb(205, 205, 205);
	overflow: hidden;
	border-radius: 3%;
	border: 2px solid #b7b7b7;;
}
.marginTop{
	width: 100%;
	height: 10px;
}
.marginTopS{
	width: 100%;
	height: 17px;
}
.viewBoxTop{
	width: 180px;
	height: 130px;
	margin: 0 auto;
	background-image: url("/learn_run/resources/img/study/studyBackground.jpg");
	border-radius: 3%; 
	
}
.switch{
	width: 120px;
	height: 50px;
	border-radius: 25px;
	
	margin-left: 30px;
	
	
}
.studyStatus{
	color: #ebebeb;
	font-size: 13px;
}
.enterButton{
	margin-left:5px;
	width: 179px;
	height: 55px;
	font-size: 30px;
	color:white;
	border: 4px solid rgb(10, 170, 140);
	background-color: rgb(10, 170, 125);
}
.feed_write{
	
	margin-top: 10px;
	margin-left: 15px;
}
.categoryList{
	width: 180px;
	height: 120px;
	margin-top:5px;
	margin-left: 10px;
	background-color: white;
	border: 2px solid #b7b7b7;;
}
.categoryUl{
 
list-style-image: url("/learn_run/resources/img/study/listIcon.png");
}
.categoryTBox{
	width: 180px;
	height: 50px;
	margin-top:10px;
	margin-left: 10px;
	background-color: white;
	border: 2px solid #b7b7b7;;
	text-align:center;
	font-size: 30px;
	color: gray;;
}
.tempBox{
	width: 180px;
	height: 400px;
	margin-top:5px;
	margin-left: 10px;
	background-color: white;
	border: 2px solid #b7b7b7;;
}

</style>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
<div class="main_block">
	<div class="block_top"> 
		<img class="profileImage" src="<c:url value="/resources/img/member/profilePhoto/1500449888471_user22.jpg"/>">
		
		<div class="titleBox">
		영어회화보다는 솔직히 우리나라 말이 더 중요하다고 생각하는 스터디!
		</div>
		
	</div>
	<img class="learnImage" src="<c:url value="/resources/img/study/learnRun.jpg"/>">
	<div class="leftBox">
	<div class="marginTop"></div>
		<div class="studyViewBox">
		
			<div class="marginTop"></div>
			<div class="viewBoxTop">
				<span class="studyStatus">&ensp;『강의상태』</span>	
				<div class="marginTopS"></div>
				<img class="switch" src="<c:url value="/resources/img/study/onSwitch.png"/>">
			</div>
			<div class="marginTopS"></div>
			<input type="button" value="『참여하기』" class="enterButton">

		</div>
		<img class="feed_write" src="<c:url value="/resources/img/study/feed_write.jpg"/>">

		<div class="categoryTBox">		
			<span class="categoryTitle">게시판</span>
		</div>
		<div class="categoryList"> 
			<ul class="categoryUl">
				<li><p>튜터와 함께</p> </li>
				<li><p>우리들의 이야기</p> </li>
				<li><p>자유게시판</p> </li>
			</ul>
		</div>
		<div class="tempBox"> 
			
		</div>
	
	
	
	</div>
</div>
</section>
<!-- ======================================== 섹션END==========================================  -->

<c:import url="../temp/footer.jsp"></c:import>


</body>
</html>