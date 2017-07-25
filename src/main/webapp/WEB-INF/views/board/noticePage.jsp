<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/board/noticePage.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<section id="main_section">

	<div class="main_container">
	
		<div id="list_wrap">
		
		</div>
		
		<c:if test="${member.id eq 'admin' }">
		<div id="btns">
			<input type="button" id="nWrite_btn" value="글쓰기">
		</div>
		</c:if>
	
	</div>
</section>
<c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript">
	
	List();
	
	$("#list_wrap").on("click",".listPage",function() {
		$("#curPage").prop("value",$(this).prop("id"));
		List();
	});
	
	$("#nWrite_btn").click(function () {
		location.href="noticeWriteForm";
	});
	
	$("#list_wrap").on("click",".title_click",function() {
		var num = $(this).prop("id");
		location.href="noticeView?num="+num;
	});
	
	function List() {
		var form = $("#notice_frm")[0];//ajax로 가져오는 페이지 안의 폼 데이터 변수 지정
		var formData = new FormData(form);//formData라는 이름으로 폼 데이터 넣음.
		 $.ajax({
             url: 'noticeList',
             processData: false,
             contentType: false,
             data: formData, // 폼 데이터 보냄
             type: 'POST',
             success: function(data){
            	 data = data.trim();
 				$("#list_wrap").html(data);
 				$("#find").prop("value",$("#find_value").prop("value"));//다음페이지 넘어갈 때 처음 검색한 find 값 계속 유지 
             }
         });	
	}
</script>
</body>
</html>