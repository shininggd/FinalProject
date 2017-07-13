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
<script type="text/javascript">
 $(function() {
	$("#btn").click(function() {
		var find = "category,location,lv";
		var search = "${category},"+document.frm.location.value+","+document.frm.lv.value;
		document.frm.find.value = find;
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
		<p class="bottomTitle">개의 스터디</p>
		
			
				<c:forEach items="${list }" var="i"  varStatus="s" >
					<a href="studyView?num=${i.num }" class="aBlock">
						<div class="listBox">
							<div class="boxTop">
							${i.location } | ${i.lv }
							</div>
							<div class="boxMiddle_1">
								<span class="middleTitle">${i.title }</span>  
							</div>
							<div class="boxMiddle_2">
								<fmt:formatNumber type="currency" currencySymbol="">${i.price }</fmt:formatNumber>원 <span class="people">${i.people }명</span> 
							</div>
							<div class="boxBottom">
							
							</div>
							
							
						</div>
					</a>
					
					<c:if test="${s.index%3 eq 2 }">
						
						<hr>
					</c:if>
						
							
				</c:forEach>
	
	</div>
</div>
</section>
<!-- ======================================== 섹션END==========================================  -->

<c:import url="../temp/footer.jsp"></c:import>


</body>
</html>