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
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/adminPage.css">
<script type="text/javascript">
$(function(){
	
	/* tutorinfo 클릭하면 list 가져오기 */
	$("#tutorinfo").click(function(){
		tutorTable();
	});	
	
	/* change 버튼 누르면 변경된 값 가지고 db가서 업데이트하고 다시 리스트 가져옴 */
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
			
		$.post("./sub/tutorOversight",{lv_ch:lv_ch,ri_ch:ri_ch,id_ch:id_ch},function(data){//ajax로 셀렉트 값이랑 id 컨트롤러로 보냄
			alert(data.trim());
			tutorTable();
		});		
	});

	//search 버튼 클릭하면 리스트 가져옴
	$("#mystudy_tutorinfoview").on("click","#tfsbtn",function() {
		tutorTable();
	});

	
	//페이징 누르면 find, search, curPage 가지고 가서 리스트 다시 가져옴
	$("#mystudy_tutorinfoview").on("click",".gooh",function() {
		var num = $(this).prop("id");
		$("#curPage").prop("value",num);
		tutorTable();
	});
	
	$("#mystudy_tutorinfoview").on("click",".tutor_Delete",function() {
		var delt = $(this).prop("id");
		$.post("tutor_Delete",{id:delt},function(data){
			alert(data.trim());
			tutorTable();
		});	
	});
	
	
 	
	/* memberinfo 클릭하면 list 가져오기 */
	$("#memberinfo").click(function(){
		memberTable();
	});	
	
	$("#mystudy_tutorinfoview").on("click",".Mgooh",function() {
		var num = $(this).prop("id");
		$("#curPage").prop("value",num);
		memberTable();
	});
	

	$("#mystudy_tutorinfoview").on("click","#membtn",function() {
		memberTable();
	});
	
	//removal 버튼 누르면 멤버 삭제
	$("#mystudy_tutorinfoview").on("click",".member_Delete",function() {
		var delm = $(this).prop("id");
		$.post("student_Delete",{id:delm},function(data){
			alert(data.trim());
			memberTable();
		});	
	});

	
	function tutorTable() {
		var form = $("#frm_search")[0];//ajax로 가져오는 페이지 안의 폼 데이터 변수 지정
		var formData = new FormData(form);//formData라는 이름으로 폼 데이터 넣음.
		 $.ajax({
             url: 'tutorOversight',
             processData: false,
             contentType: false,
             data: formData, // 폼 데이터 보냄
             type: 'POST',
             success: function(data){
            	 data = data.trim();
 				$("#mystudy_tutorinfoview").html(data);
 				$("#find").prop("value",$("#find_value").prop("value"));//다음페이지 넘어갈 때 처음 검색한 find 값 계속 유지 
             }
         });	
	}
	
	function memberTable(){
		var Mform = $("#mem_search")[0];
		var MformData = new FormData(Mform);
		$.ajax({
			url : 'memberOversight',
			processData: false,
	        contentType: false,
	        data: MformData,
	        type: 'POST',
	        success: function(data){
           	 data = data.trim();
				$("#mystudy_tutorinfoview").html(data);
				$("#Mfind").prop("value",$("#Mfind_value").prop("value"));//다음페이지 넘어갈 때 처음 검색한 find 값 계속 유지 
            }
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
					<c:if test="${member.grade eq 'student'}">
					<a class="tab" href="/learn_run/member/myPurchase">내 구매 내역</a>
					</c:if>
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
			<input type="button" id="memberinfo" value="StudentInfo">
			</div>
			
				<div id="mystudy_tutorinfoview">

				
				</div>
		</div>
	
	</div>

</section>
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>