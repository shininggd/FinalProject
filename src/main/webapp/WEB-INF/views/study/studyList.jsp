<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyList.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
 $(function() {
	 var find = "category,location,lv";
	$("#btn").click(function() {
		var search = "${category},"+document.frm.location.value+","+document.frm.lv.value;
		document.frm.find.value = find;
		document.frm.search.value = search;
		document.frm.submit();
	});
}) 
</script>
<style type="text/css">
.pagingBox{
	width: 240px;
	height: 30px;
	margin: 0 auto;
	text-align: center;
}
.pagingText{
	color: color: #3c3c3c;
	font-size: 25px;
	text-decoration: none;
}
.pagingArrowR{
	width: 20px; 
	height: 20px;
	-webkit-transform: rotate(90deg) scale(1) skew(1deg) translate(0px);
-moz-transform: rotate(90deg) scale(1) skew(1deg) translate(0px);
-o-transform: rotate(90deg) scale(1) skew(1deg) translate(0px);
}
.pagingArrowL{
width: 20px; 
	height: 20px;
-webkit-transform: rotate(270deg) scale(1) skew(1deg) translate(0px);
-moz-transform: rotate(270deg) scale(1) skew(1deg) translate(0px);
-o-transform: rotate(270deg) scale(1) skew(1deg) translate(0px);
}

</style>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
<div class="top">
	<div class="topBox">
		<br>
	
		<span class="innerText">&ensp; 다양한</span><br>
		<span class="innerText">&ensp; ${category }</span><br>
	</div>	
</div>

	<div class="mid">
		 <div class="midBox">
				<br>
				<span class="midTitle">Filter</span>
				<br>
				<br>
				<div class="midInner">
				<form action="studyList" name="frm">
					<div class="innerBox">
					장소 <select name="location">
							<option value="all">전체보기</option>
							<option value="온라인">온라인</option>
							<option value="천호동">천호동</option>
						</select>
					</div>
					<div class="innerBox" >
					레벨 <select name="lv">
							<option value="all">전체보기</option>
							<option value="초보">초보</option>
							<option value="중수">중수</option>
							<option value="고수">고수</option>
						</select>
					</div>
					
					<div class="innerBox2">
					<input type="hidden" name="find">
					<input type="hidden" name="search">
					<input type="button" id="btn" value="필터검색         →">
					</div>
				</form>
				</div>
				
			
			
		</div>
	
	</div>

<div class="bottom">
	<div class="main_container">
		<p class="bottomTitle">${totalCount }개의 스터디</p>
		
			
				<c:forEach items="${list }" var="i"  varStatus="s" >
					
						<div class="listBox aBlock" >
							
							<div class="boxTop">
							${i.location } | ${i.lv }
							</div>
							<div class="boxMiddle_1">
								<a href="studyView?num=${i.num }&tid=${i.tid }" class="titleA"><span class="middleTitle">${i.title }</span></a>  
							</div>
							
							<div class="boxMiddle_2">
								<fmt:formatNumber type="currency" currencySymbol="">${i.price }</fmt:formatNumber>원 <span class="people">${i.people }명</span>
								<a href="../feedback/studyPage?snum=${dto.num }"><img class="houseImage" src="<c:url value="/resources/img/study/houseIcon.jpg"/>"></a>
								 
							</div>
							<div class="boxBottom">
							
							</div>
							
							
						</div>
					
					
					<c:if test="${s.last or s.index%3 eq 2 }">
						<hr>
					</c:if>
						
							
				</c:forEach>
				
	<div class="pagingBox">
		<c:if test="${listInfo.curBlock > 1}"> 
			<a href="./studyList?find=category,location,lv&search=${listInfo.search}&curPage=${listInfo.startNum-1}" class="pagingText"><span class="pageMove" id="${listInfo.startNum-1}"><img alt="" src="<c:url value="/resources/img/study/pagingArrow.png"/>" class="pagingArrowL" ></span></a>
		</c:if> 
			<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum}" var="j">
				<a href="./studyList?find=category,location,lv&search=${listInfo.search}&curPage=${j}" class="pagingText">${j}</a>
			</c:forEach>
		<c:if test="${listInfo.curBlock < listInfo.totalBlock }"> 
			<a href="./studyList?find=category,location,lv&search=${listInfo.search}&curPage=${listInfo.lastNum+1}" class="pagingText"><span class="pageMove" id="${listInfo.lastNum+1}"><img alt="" src="<c:url value="/resources/img/study/pagingArrow.png"/>" class="pagingArrowR" ></span></a>
	 	</c:if> 	
	</div>
	<c:if test="${member != null }">
	<c:if test="${member.grade eq 'tutor' }">
	<a href="./studyRegist"><button>등록하기</button></a>
	</c:if>
	</c:if>
	
</div>
</div>
</section>
<!-- ======================================== 섹션END==========================================  -->

<c:import url="../temp/footer.jsp"></c:import>


</body>
</html>