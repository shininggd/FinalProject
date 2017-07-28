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
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/feedback/feedback_list.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>


<script type="text/javascript">
$(function () {
	var find = "snum,category,";
	$("#btn").click(function() {
		 var search = document.frm.snum.value+","+document.frm.category.value+","+document.frm.searchText.value;
		var temp = find+$(".kind").val();
   		document.frm.find.value = temp;
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
	<!--===================상단====================================  -->
	<c:import url="feedbackTop.jsp"></c:import>
	<!--===============================================================  -->
	
	
	<div class="listBlock">
	<div class="listBox">
		<c:forEach items="${list }" var="i"  varStatus="s" >
			<div class="oneBox"> 
			<span class="writer"> ${i.writer }</span> <span class="reg_date">${i.reg_date }</span><br>
		<c:if test="${i.depth>0 }">
			[Re]
			<c:forEach begin="1" end="${i.depth }" var="t" varStatus="tt">
			&ensp;
			</c:forEach>	
		</c:if><span class="title"><a href="feedbackView?num=${i.num }&snum=${dto.num}">${i.title }</a></span>
			
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
				<input type="hidden" name="find" >
				<input type="hidden" name="search">
				<input type="hidden" name="category" value="${category }">
				<input type="hidden" name="snum" value="${dto.num }" >
				<select class="kind" name="kind">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
				</select>
				<input type="text" name="searchText" value="${searchText }">
				 
				<input type="button" value="검색" id="btn">
				</form>
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