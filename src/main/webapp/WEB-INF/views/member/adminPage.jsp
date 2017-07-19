<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/myStudy.css">
<script type="text/javascript">
$(function(){
	$("#tutorinfo").click(function(){
		tutorTable();
	});	

	$("#mystudy_tutorinfoview").on('click',".change_Tinfo",function(){
		var num = $(this).prop("id");
		var id_ch = $("#tutoids"+num).prop("title");
		var lv_ch = $("#lv_select"+num).val();
		var ri_ch = $("#rig_select"+num).val();
		

		if(lv_ch == 'unreceived' && ri_ch == 'T'){
			alert("권한이 변경되면 레벨도 변경되어야 합니다");
			return false;
		}
		if(lv_ch != 'unreceived' && ri_ch == 'F'){
			alert("권한이 F면 레벨을 설정할 수 없습니다");
			return false;
		}
		
		$.post("./sub/tutorOversight",{lv_ch:lv_ch,ri_ch:ri_ch,id_ch:id_ch},function(data){
			alert(data.trim());
			tutorTable();
		});
	});
		
		function tutorTable() {
			$.get("./sub/tutorOversight",function(data){
				data = data.trim();
				$("#mystudy_tutorinfoview").html(data);
			});
		}
		
});



</script>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>

<section id="main_section">
	
	<div id="my_page_header">
		<div id="header_contents">
			<div id="user-photo"></div>
			<div id="tabs">
				<div id="user_name">장태주</div>
				<div id="tab-box">
					<a class="tab" href="/learn_run/member/myStudy">내 스터디</a>
					<a class="tab" href="/learn_run/member/myPurchase">내 구매 내역</a>
					<a class="tab" href="/learn_run/member/myPoint">내 포인트</a>
					<a class="tab" href="/learn_run/member/myPage">내 프로필</a>
					<c:if test="${member.id eq 'admin' }">
					<a class="tab selected" href="/learn_run/member/adminPage">관리자 페이지</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<div class="main_container">
		
		<h1 id="mystudy_h1">관리자 페이지</h1>
		<div id="mystudy_list">
			<div id="mystudy_menubar">
			<input type="button" id="tutorinfo" value="TutorInfo">
			</div>

				<div id="mystudy_tutorinfoview">
				
				</div>
					<div id="admin_Tpagelist">
						
						</div>
		</div>
	
	</div>


</section>

<c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript">
	
	
	
</script>
</body>
</html>