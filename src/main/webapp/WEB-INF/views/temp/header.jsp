 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- header 시작 -->
<script src="<%=application.getContextPath()%>/resources/js/LevelTest/levelTest.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/LevelTest/LevelTestQuiz.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/levelTest.css">
<script type="text/javascript">
$(function(){
    
	/* --------findInfo---------- */
	$("#find_id").click(function() {
		//window.open("/learn_run/member/find_id",  "ID 찾기", "width=500, height=300, left=400, top=250");
		 cw=screen.availWidth;     //화면 넓이
		 ch=screen.availHeight;    //화면 높이

		 sw=500;    //띄울 창의 넓이
		 sh=300;    //띄울 창의 높이

		 ml=(cw-sw)/2;        //가운데 띄우기위한 창의 x위치
		 mt=(ch-sh)/2;         //가운데 띄우기위한 창의 y위치

		 test=window.open('/learn_run/member/find_id','tst','width='+sw+',height='+sh+',top='+mt+',left='+ml+',resizable=no');
	});
	
	$("#find_pw").click(function() {
		//window.open("/learn_run/member/find_pw",  "PW 찾기", "width=500, height=300, left=200");
		 cw=screen.availWidth;     //화면 넓이
		 ch=screen.availHeight;    //화면 높이

		 sw=500;    //띄울 창의 넓이
		 sh=340;    //띄울 창의 높이

		 ml=(cw-sw)/2;        //가운데 띄우기위한 창의 x위치
		 mt=(ch-sh)/2;         //가운데 띄우기위한 창의 y위치

		 test=window.open('/learn_run/member/find_pw','tst','width='+sw+',height='+sh+',top='+mt+',left='+ml+',resizable=no');
	}); 
	
		
	/* ---------------------login , join ------------------------------*/
	$("#login_modal_toggle").click(function () {
		$("#loginForm").css("display","inline");
		$("#joinForm").css("display","none");
	});
	
	
	$("#login_close").click(function () {
		$("#loginForm").css("display","none");
	});
	
	$("#registrarion_modal_toggle").click(function () {
		$("#loginForm").css("display","none");
		$("#joinForm").css("display","inline");
	});
	
	$("#join_close").click(function () {
		$("#joinForm").css("display","none");
	});
	
	var id_check = false;
  	var pw_check = false;
  	var all_check = false;
  	var email_check = false;
  	
  	var ch_id = "";
  	var ch_pw = $("#pw").val();
  	var ch_email = "";

//id중복확인
  		$("#id").change(function(){
  			ch_id = $(this).prop("value")
  			$.post("member/IdCheck",
  					{id:ch_id},
  					function(data) {
						var reg_id = /^[a-zA-Z]+[a-zA-Z0-9]{5,19}$/;
						var R_id = data.trim();
						
						//alert(R_id);
						if(R_id != 'true'){
							$("#idmessage").html("<font color=red> 존재하는 아이디입니다.</font>");
							id_check = false;
						}
						
						if(R_id=='true'){
							if(!reg_id.test(ch_id)){
								$("#idmessage").html("<font color=red>6~20자 이내로 입력해주세요.</font");
								id_check = false;
							}
							if(reg_id.test(ch_id)){
								$("#idmessage").html("<font color=green>사용 가능한 아이디입니다.</font>");
								id_check = true;
							}
						}
						
				});
		});
  		
  		/* pw일치여부 시작 */
          $("#pw").change(function(){
           
           if($("#pw").val()==$("#pw2").val()){
              $("#pwmessage").html("<font color=blue>사용 가능한 비밀번호 입니다.</font>");
              pw_check = true; 
           }else{
              $("#pwmessage").html("<font color=red>비밀번호가 일치하지 않습니다.</font>");
              pw_check = false;
           }
           
        }); 
  		
  		
         $("#pw2").change(function(){
             
             if($("#pw").val()==$("#pw2").val()){
                $("#pwmessage").html("<font color=blue>사용 가능한 비밀번호 입니다.</font>");
                pw_check = true; 
             }else{
                $("#pwmessage").html("<font color=red>비밀번호가 일치하지 않습니다.</font>");
                pw_check = false;
             }
             
          });       
         /* pw일치여부 끝 */
         
  		/* email 형식 */
  		$("#email").change(function() {
			ch_email = $(this).prop("value");
			alert(ch_email);
			var reg_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
			
			if(!reg_email.test(ch_email)){
				email_check = false;
			}
			
			if(reg_email.test(ch_email)){
				email_check = true;
			}
		});
  		
  		
        //회원가입버튼을 눌렀을 때
  		$("#join").click(function() {
  			
  			if(	$("#id").val != "" &&
  				$("#pw").val != "" &&
  				$("#pw2").val != "" &&
  				$("#name").val != "" &&
  				$("#birth").val != "" &&
  				$("#email").val != "" &&
  				$("#telecom").val != "" &&
  				$("#phone").val != "" &&
  				id_check == true &&
  				pw_check == true &&
  				email_check == true){
  					all_check = true;
  				}else {
  					all_check = false;
  				}

  				if($("#id").val() == "" ||
  					$("#pw").val() == "" ||
  					$("#pw2").val() == "" ||
  					$("#name").val() == "" ||
  					$("#birth").val() == "" ||
  					$("#email").val() == "" ||
  					$("#telecom").val() == "" ||
  					$("#phone").val()  == "") {
  						alert("필수 항목을 모두 입력해주세요.");
  				}
  				
 				if(email_check == false){
  					alert("이메일 주소 형식을 확인해주세요.");
  					all_check = false;

  				}
  				
  				if(id_check == false){
  					alert("아이디를 확인해주세요.");
  					all_check = false;
  				}
  				if(pw_check == false){
  					alert("비밀번호가 일치하지 않습니다.");
  					all_check = false;
  				}
  			
  				if(all_check == true) {
  				$("#joinFrm").submit();
  				}
  			
  			});
        
		$(".g_check").click(function() {
			var path = $(this).prop("value");
			$("#joinFrm").prop("action","/learn_run/member/"+path+"Join");
		});
		
		$(".g_login").click(function() {
			var path = $(this).prop("value");
			$("#loginFrm").prop("action", "/learn_run/member/"+path+"Login");
		});
		
		$("#login").click(function() {
			$("#loginFrm").submit();
		});
	
	/* ---------------------login , join ------------------------------*/
	
	profileChange('${member.fname}');
	
	function profileChange(fname) {
		 $(".user_photo").css("background-image","url(/learn_run/resources/img/member/profilePhoto/"+fname+")");
		 $(".my_photo").css("background-image","url(/learn_run/resources/img/member/profilePhoto/"+fname+")");
	}
	
	$("#notification_link").click(function(){
        if($("#notification_list_wrap").is(":visible")){
            $("#notification_list_wrap").css("display", "none");
        }else if($("#my_page_menus").is(":visible")){
            $("#notification_list_wrap").css("display", "block");
            $("#my_page_menus").css("display", "none");
        }else if($("#theme_menus_popup").is(":visible")){
            $("#notification_list_wrap").css("display", "block");
            $("#theme_menus_popup").css("display", "none");
        }else{
        	$("#notification_list_wrap").css("display", "block");
        }
    });
    
    $("#my_page_list_toggle").click(function(){
        if($("#my_page_menus").is(":visible")){
            $("#my_page_menus").css("display", "none");
        }else if($("#notification_list_wrap").is(":visible")){
        	$("#my_page_menus").css("display", "block");
        	$("#notification_list_wrap").css("display", "none");
        }else if($("#theme_menus_popup").is(":visible")){
        	$("#my_page_menus").css("display", "block");
        	$("#theme_menus_popup").css("display", "none");
        }else{
            $("#my_page_menus").css("display", "block");
        }
    });
    
    $("#theme_menu_toggle").click(function(){
        if($("#theme_menus_popup").is(":visible")){
            $("#theme_menus_popup").css("display", "none");
        }else if($("#my_page_menus").is(":visible")){
            $("#theme_menus_popup").css("display", "block");
            $("#my_page_menus").css("display", "none");
        }else if($("#notification_list_wrap").is(":visible")){
            $("#theme_menus_popup").css("display", "block");
            $("#notification_list_wrap").css("display", "none");
        }else{
        	$("#theme_menus_popup").css("display", "block");
        }
    });
});
</script>
<header>
	<div id="level_test_banner">
		<div id="level_test_banner_content">
			STEP 1. 런앤런이 처음이라면? 먼저 레벨테스트부터 시작해보세요!
		</div>
		<input type="button" id="close_banner">
	</div>

	<div id="header_content">
		<div id="header_menu">
			<div id="header_logo">logo</div>
				<article id="header-left-menus">
					<a id="theme_menu_toggle" class="link" href="#"><span class="drawer_icon"></span>카테고리<img class="arrow_icon" src="<c:url value="/resources/img/arrow_icon.png"/>"></a>
					<span class="header_bar"></span>
					<a class="menu2" href="/learn_run/chul/chulCheck">출석체크</a>
					<span class="header_bar"></span>
					<a class="menu3" href="./small_group/small_group">소모임</a>
					<span class="header_bar"></span>
					<ul id="theme_menus_popup">
						<li><a class="theme_link" href="" style="text-decoration: none;">프로그래밍</a></li>
						<li><a class="theme_link" href="" style="text-decoration: none;">영어 회화</a></li>
						<li><a class="theme_link" href="" style="text-decoration: none;">중국어 회화</a></li>
						<li><a class="theme_link" href="" style="text-decoration: none;">보컬</a></li>
					</ul>
				</article>
					<a class="sear_form"></a>
				<article id="header-right-menus">
					<a href="#"><img id="header_search" src="<c:url value="/resources/img/SearchIcon.png"/>"></a>
					
					<!--로그인 전  -->
						<c:if test="${empty member}">
						<span class="header_right_bar"></span>
						<p id="login_modal_toggle">로그인</p>
						
						<!-- loginForm start -->
						<!-- Modal (login) -->
	 					 <div class="modal fade" id="loginForm" role="dialog">
	 					 		<span id="login_close">X</span>
	          					<form action="/learn_run/member/tutorLogin" id="loginFrm" method="post">
	          						
	          						<p id="selectGrade">튜터<input type="radio" name="grade" class="g_login" value="tutor" checked="checked">&nbsp; 
	          						학생 <input type="radio" name="grade" class="g_login" value="student"></p>
	          						
	          						<table id="login_input">
	          						<tr>
									<td colspan="2"><input type="text" name="id" placeholder="ID를 입력하세요"></td>
									</tr>
									<tr>
									<td colspan="2"><input type="password" name="pw" placeholder="PW를 입력하세요"></td>
									</tr>
	          						</table>
	          						<div id="con-btn">
									<a role="button" id="login">로그인</a>
	          						</div>
								</form>
								
									<div id="forgotIdPw">
										<a id="find_id" class="findInfo">ID 찾기</a> &nbsp;/&nbsp; <a id="find_pw" class="findInfo">PW 찾기</a>
									</div>
	        				</div>
	       				
	  					<!-- loginForm end -->
						
						<span class="header_right_bar"></span>
						<p id="registrarion_modal_toggle">회원가입</p>
						
						<!-- joinForm start -->
	 					 <div class="modal fade" id="joinForm" >
	       					 <span id="join_close">X</span>
	          					<form action="/learn_run/member/tutorJoin" id="joinFrm" method="post" >
	          						
	          						<p class="selectGrade">튜터<input type="radio" class="g_check" name="grade" value="tutor" checked="checked"> &nbsp; 학생<input type="radio" class="g_check" name="grade" value="student" id="member-frm"></p>
	          						
	          						<table>
	          						<tr>
	          						<td class="infoIndex">ID</td><td><input type="text" name="id" id="id" placeholder="ID를 입력하세요"></td>
	          						</tr>
	          						<tr>
	          						<td colspan="2"><span id="idmessage"></span></td>
									</tr>
									<tr>
									<td class="infoIndex">PW</td><td><input type="password" name="pw" id="pw" placeholder="PW를 입력하세요"></td>
									</tr>
									<tr>
									<td class="infoIndex">PW 확인</td><td><input type="password" id="pw2" name="pw2" placeholder="PW를  다시 입력하세요"></td>
									</tr>
									<tr>
									<td colspan="2"><span id="pwmessage"></span></td>									
									</tr>
									<tr>
									<td class="infoIndex">이름</td><td><input type="text" name="name" placeholder="이름을 입력하세요"></td>
									</tr>
									<tr>
									<td class="infoIndex">생일</td><td><input type="date" name="birth"></td>
									</tr>
									<tr>
									<td class="infoIndex">e-mail</td><td><input type="text" name="email" id="email" placeholder="ex) learn-run@gmail.com"></td>
									</tr>
									<tr>
									<td class="infoIndex">연락처</td><td><select name="telecom" >
											<option>SKT</option> <option>KT</option> <option>LGT</option> <option>알뜰폰</option>
											</select>
									<input class="input_phone" type="text" name="phone" id="phone" placeholder="ex) 010-1234-5678"></td>
									</tr>
	          						</table>
									
									<div id="con-btn">
									<a role="button" id="join">회원가입</a>
									</div>
									
								</form>
	        				</div>
	       				
	        			
	  					<!-- joinForm end -->
						
						<span class="header_right_bar"></span>
						<a id="menu6" href="#">메뉴6</a>
						</c:if>
					<!-- 로그인 전 -->
					<!-- 로그인 후 -->
					<c:if test="${not empty member}">
						<a id="chat_link" class="icon_link" href="">"Messages"</a>
						<a id="notification_link" class="icon_link" href="javascript:void(0)"></a>
						<div id="notification_list_wrap" class="show">
							<span class="triangle1"></span>
							<span class="triangle2"></span>
							<div id="notification_scroll" class="gm_scrollbar_container ">
								<div id="gm_scrollbar_vertical" class="gm_scrollbar">
									<div id="thumb_vertical" class="thumb" style="transform: translate3d(0px, 0px, 0px);"></div>
								</div>
								<div id="gm_scrollbar_horizontal" class="gm_scrollbar">
									<div id="thumb_horizontal" class="thumb" style="transform: translate3d(0px, 0px, 0px);"></div>
								</div>
								<div class="gm_scrollbar_view" style="width: 317px; height: 377px;">
									<ul id="notification_list">
										<li class="notification_list_empty">
											<span class="title">아직 알림이 없습니다!</span><br>
											<span class="decoration">Q&A에 답글이 달렸을 때 알려드려요 :)</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<a id="my_page_list_toggle" href="javascript:void(0)">
							<div class="my_photo"></div>
							<span class="my_name">${member.id }</span>
							<span class="triangle"></span>
						</a>
						<section id="my_page_menus" class="show">
							<section class="profile_section">
								<div class="user_photo"></div>
								<div class="user_name_wrap">
									<div class="user_name">${member.id }</div>
									<a class="link_to_edit_profile" href="/learn_run/member/myPage" style="text-decoration: none;">프로필 보기</a>
								</div>							
							</section>
							<section class="my_page_list_section">
								<a class="my_page_menu" href="/learn_run/member/myStudy" style="text-decoration: none;">내 스터디</a>
								<a class="my_page_menu" href="/learn_run/member/myPurchase" style="text-decoration: none;">내 구매 내역</a>
								<a class="my_page_menu" href="/learn_run/member/myPoint" style="text-decoration: none;">내 포인트</a>
								<c:if test="${member.id eq 'admin' }">
								<a class="my_page_menu" href="/learn_run/member/adminPage" style="text-decoration: none;">관리자 페이지</a>
								</c:if>
							</section>
							<section class="my_page_list_section">
								<a class="my_page_menu" href="" style="text-decoration: none;">자주 묻는 질문</a>
								<a class="my_page_menu_logout" href="/learn_run/member/memberLogout" style="text-decoration: none; color: #a0a0a0;">로그아웃</a>
							</section>
						</section>
						</c:if>
					<!-- 로그인 후 -->
				</article>
		</div>
	</div>
</header>
<!-- header 끝 -->