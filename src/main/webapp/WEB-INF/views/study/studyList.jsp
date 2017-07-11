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

</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
<div class="top">
	<div class="topBox">
		<br>
	
		<span class="innerText">&ensp; 다양한</span><br>
		<span class="innerText">&ensp; 영어회화</span><br>
	</div>	
</div>
<div class="mid">
	<div class="midBox">
			<br>
			<span class="midTitle">Filter</span>
			<br>
			<br>
			<div class="midInner">
			<div class="innerBox">
			지역 <select >
					<option>온라인</option>
				</select>
			</div>
			<div class="innerBox" >
			레벨 <select >
					<option>초보</option>
				</select>
			</div>
			<div class="innerBox2">
			<input type="button" value="필터검색         →">
			</div>
			
			</div>
			
		
		
	</div>

</div>
<div class="bottom">
	<div class="main_container">
		<p class="bottomTitle">개의 스터디</p>
		
			
				<c:forEach items="${list }" var="i"  varStatus="s" >
					<div class="listBox">
						<div class="boxTop">
						${i.location } | ${i.lv }
						</div>
						<div class="boxMiddle_1">
							 ${i.title }
						</div>
						<div class="boxMiddle_2">
							<fmt:formatNumber type="currency" currencySymbol="">${i.price }</fmt:formatNumber>원 <span class="people">${i.people }명</span> 
						</div>
						<div class="boxBottom">
						
						</div>
						
						
					</div>
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