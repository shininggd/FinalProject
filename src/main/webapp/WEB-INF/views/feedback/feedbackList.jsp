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
.listBlock{
	width: 750px;
	height: 950px;
	margin-top:10 px;
	float: right;
	overflow: hidden;
	background: none;
	
}
.listBox{
	margin-top: 12px;
	width: 700px;
	height: 950px;
	background: none;
	
}
.oneBox{
	margin-top: 3px;
	width: 100%;
	height: 90px;
	background-color: white;
	border-radius: 10px;
	
}
.writer{
    
    color: #7097cc;
    letter-spacing: -1px;
    font-weight: bold;
    margin-left: 5px;
}
.title{
    color: #000;
    font-size: 16px;
    margin-left: 5px;
}
.reg_date{
	font-size: 12px;
	color: #999;
    font-family: tahoma;
    margin-left: 5px;
}
.contents{
    color: #767676;
    margin-left:5px;
    width: 680px;
    height: 45px;
    font-size: 15px;
    text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden; 
	
}
.searchBox{
	height: 30px;
	float: right;
	line-height: 30px;
	background-color: blue;
	overflow: hidden;
	}
.kind{
	height: 30px;

}	

</style>
<script type="text/javascript">
$(function () {
	var find = "snum,category,";
	$("#btn").click(function() {
		 var search = document.frm.snum.value+","+document.frm.category.value+","+document.frm.searchText.value; 
		 alert(document.frm.category.value); 
		alert(document.frm.snum.value);
		alert(document.frm.searchText.value);
		alert(document.frm.kind.value);
		 document.frm.find.value = find+document.frm.kind.value;
		document.frm.search.value = search;
		document.frm.submit(); 
	});	
})

</script>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
<div class="main_block">
	<div class="block_top"> 
		<img class="profileImage" src="<c:url value="/resources/img/member/profilePhoto/${fname }"/>">
		
		<div class="titleBox">
		${dto.title}
		</div>
		
	</div>
	<div class="listBlock">
	
	<div class="listBox">
		<c:forEach items="${list }" var="i"  varStatus="s" >
			<div class="oneBox"> 
			<span class="writer"> ${i.writer }</span> <span class="reg_date">${i.reg_date }</span><br>
			<span class="title">${i.title }</span>
			
			<div class="contents">
				${i.contents}
			</div>
			
			</div>	
		</c:forEach>
		
		
		<div class="pagingBox">
	
			<c:if test="${listInfo.curBlock > 1}"> 
				<a href="./feedbackList?kind=${kind }&find=snum,category,${kind }&search=${listInfo.search}&curPage=${listInfo.startNum-1}" class="pagingText"><span class="pageMove" id="${listInfo.startNum-1}"><img alt="" src="<c:url value="/resources/img/study/pagingArrow.png"/>" class="pagingArrowL" ></span></a>
			</c:if> 
				<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum}" var="j">
					<a href="./feedbackList?kind=${kind }&find=snum,category,${kind }&search=${listInfo.search},${searchText }&curPage=${j}" class="pagingText">${j}</a>
				</c:forEach>
			<c:if test="${listInfo.curBlock < listInfo.totalBlock }"> 
				<a href="./feedbackList?kind=${kind }&find=snum,category,${kind }&search=${listInfo.search}&curPage=${listInfo.lastNum+1}" class="pagingText"><span class="pageMove" id="${listInfo.lastNum+1}"><img alt="" src="<c:url value="/resources/img/study/pagingArrow.png"/>" class="pagingArrowR" ></span></a>
		 	</c:if> 
		 	
	 		
		</div>
		<div class="searchBox">
		<form action="feedbackList" method="get" name="frm">
				<select class="kind" name="kind">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
				</select>
				<input type="hidden" name="find">
				<input type="hidden" name="search">
				<input type="hidden" name="category" value="${category }">
				<input type="hidden" name="snum" value="${dto.num }">
				<input type="text" name="searchText">
				 
				<input type="button" value="검색" id="btn">
				</form>
			</div>	
	</div>
	
	</div>
	
	
	
	
	
	<!--===============================================================  -->
	<div class="leftBox">
	<div class="marginTop"></div>
		<div class="studyViewBox">
		
			<div class="marginTop"></div>
			<div class="viewBoxTop">
				<span class="studyStatus">&ensp;『강의상태』</span>	
				<div class="marginTopS"></div>
				<c:if test="${dto.onOff == 'on' }">
				<img class="switch" src="<c:url value="/resources/img/study/onSwitch.png"/>">
				</c:if>
				<c:if test="${dto.onOff == 'off' }">
				<img class="switch" src="<c:url value="/resources/img/study/offSwitch.png"/>">
				</c:if>
			</div>
			<div class="marginTopS"></div>
			<input type="button" value="『참여하기』" class="enterButton">

		</div>
		<a href="feedbackWrite?snum=${dto.num }"><img class="feed_write" src="<c:url value="/resources/img/study/feed_write.jpg"/>"></a>

		<div class="categoryTBox">		
			<span class="categoryTitle">게시판</span>
		</div>
		<div class="categoryList"> 
			<ul class="categoryUl">
				<li><p><a href="feedbackList?find=snum,category&search=${dto.num },튜터와함께">튜터와 함께</a></p> </li>
				<li><p><a href="feedbackList?find=snum,category&search=${dto.num },우리들의 이야기">우리들의 이야기</a></p> </li>
				<li><p><a href="feedbackList?find=snum,category&search=${dto.num },자유게시판">자유게시판</a></p> </li>
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