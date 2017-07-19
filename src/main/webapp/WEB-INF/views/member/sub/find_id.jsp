<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">	
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {

		var input_all = false;

		$("#find_id").click(function(){
			
			//alert("click");
			
					if ($("#name").val() == "" || 
						$("#email").val() == "" && 
						$("#phone").val() == ""){
						input_all = false;
					} 
					
					if($("#name").val() !="" &&
						$("#email").val() != "" ||
						$("#phone").val() != ""){
						input_all = true;
					}

					if(input_all == false){
						alert("정보를 다시 한 번 확인해주세요.");
					}
					
					if(input_all == true){
						$("#frm").submit();
					}
					
		});
	});
</script>
</head>
<body>

	<div id="input_info">
		<form action="IdFind" id="frm" method="post">
			<h3>ID 찾기</h3>
			<hr>
			<div id="info_msg">
				<h5>*이메일이나 연락처 중 하나는 입력하셔야 됩니다.*</h5>
			</div>
			<table id="info_frm">
				<tr>
					<td><span id="must">*</span>이름</td>
					<td class="frm_input"><input type="text" name="name" id="name" placeholder="이름을 입력해주세요."></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td class="frm_input"><input type="text" name="email" id="email" placeholder="ex)learn_run@learnrun.com"></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td class="frm_input"><input type="text" name="phone" id="phone" placeholder="ex)010-0000-0000">
					</td>
				</tr>
			</table>
			<br>
			<a role="button" id="find_id" class="find_idpw">확인</a>
		</form>

	</div>

</body>
</html>