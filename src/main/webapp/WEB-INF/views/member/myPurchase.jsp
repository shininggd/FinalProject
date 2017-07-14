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
					<a class="tab selected" href="/learn_run/member/myPurchase">내 구매 내역</a>
					<a class="tab" href="/learn_run/member/myPoint">내 포인트</a>
					<a class="tab" href="/learn_run/member/myPage">내 프로필</a>
				</div>
			</div>
		</div>
	</div>

	<div class="main_container">
		
		<h1 id="mystudy_h1">내 결제 내역</h1>
		<div id="mystudy_list">
			
		</div>
	
	</div>


</section>

<c:import url="../temp/footer.jsp"></c:import>
<script type="text/javascript">
	
	profileChange('${member.fname}');
	
	function profileChange(fname) {
		 $(".user_photo").css("background-image","url(/learn_run/resources/img/member/profilePhoto/"+fname+")");
		 $(".my_photo").css("background-image","url(/learn_run/resources/img/member/profilePhoto/"+fname+")");
	}
	
</script>
</body>
</html>