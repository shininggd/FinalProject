<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src='//cdnjs.cloudflare.com/ajax/libs/jquery.form/3.51/jquery.form.min.js'></script>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/myPage.css">
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>

<section id="main_section">
	
	<div id="my_page_header">
		<div id="header_contents">
			<div class="user_photo"></div>
			<div id="tabs">
				<div id="user_name">${member.name}</div>
				<div id="tab-box">
					<a class="tab" href="/learn_run/member/myStudy">내 스터디</a>
					<c:if test="${member.grade eq 'student'}">
					<a class="tab" href="/learn_run/member/myPurchase">내 구매 내역</a>
					</c:if>
					<a class="tab" href=/learn_run/member/myPoint>내 포인트</a>
					<a class="tab selected" href="/learn_run/member/myPage">내 프로필</a>
					<c:if test="${member.id eq 'admin' }">
					<a class="tab" href="/learn_run/member/adminPage">관리자 페이지</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<div class="main_container">
		<form id="edit_photo_form" method="post" enctype="multipart/form-data">
			<div class="my_photo my_photoB"></div>
			<fieldset id="edit_photo_fieldset">
				<legend id="edit_photo_legend">PROFILE PHOTO</legend>
				<label id="edit_photo_button_label" for="edit_photo_button">
					변경하기
					<input type="file" id="edit_photo_button" name="photo" accept="image/*">
				</label>
			</fieldset>
			<div id="my_name">${member.name}</div>
			<span class="introduction">
				스터디서치는 사람들과 얼굴을 마주하고 오프라인에서 만남을 가지는 모임입니다.
				<br>
				사진을 통해 회원님에 대해 알려주세요. :)
			</span>
		</form>
		
		<form id="edit_profile_form" method="post">
			<input type="hidden" name="id" value="${member.id }">
			<label class="profile_label" for="pw">PW</label>
		    <input type="password" class="profile_text" id="pw" name="pw" value="${member.pw}" >
		    
		    <label class="profile_label" for="email">Email</label>
		    <input type="email" class="profile_text" id="email" name="email" value="${member.email}">
		    
		    <label class="profile_label" for="email">Phone</label>
		    <input type="text" class="profile_text" id="phone" name="phone" value="${member.phone}">
		    
		    <input id="profile_submit" type="button" value="변경 완료">
		</form>
		<div id="member_leave">
			<span id="member_leave_a" >회원 탈퇴</span>
		</div>
	</div>


</section>

<c:import url="../temp/footer.jsp"></c:import>

<script type="text/javascript">
	
	
	$("#edit_photo_button").on("change", function(){ 
		alert("파일업로드");
		
		var from = $("#edit_photo_form")[0];
		var formData = new FormData(from);
		
		 $.ajax({
             url: '../file/photoUpload',
             processData: false,
             contentType: false,
             data: formData,
             type: 'POST',
             success: function(result){
                var Fname = result.trim();
                profileChange(Fname);
             }
         });	
	});
	
	$("#profile_submit").click(function () {
		
		var from = $("#edit_profile_form")[0];
		var formData = new FormData(from);
		
		 $.ajax({
             url: 'memberUpdate',
             processData: false,
                 contentType: false,
             data: formData,
             type: 'POST',
             success: function(result){
                alert(result.trim()); 
             }
         });	
		
	});
	
	$("#member_leave_a").click(function () {
		$.post("${member.grade}_Delete",{id:'${member.id}'},function(result){
			alert(result.trim());
			location.href = "/learn_run/";
		});
	});
	
	function profileChange(fname) {
		 $(".user_photo").css("background-image","url(/learn_run/resources/img/member/profilePhoto/"+fname+")");
		 $(".my_photo").css("background-image","url(/learn_run/resources/img/member/profilePhoto/"+fname+")");
	}
	
</script>
</body>
</html>