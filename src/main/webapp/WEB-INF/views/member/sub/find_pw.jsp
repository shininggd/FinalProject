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
		
		$("#find_pw").click(function() {
			
			alert("click");
			
			if(("#id").val() == "" ||
				("#name").val() == "" ||
				("#email").val() =="" ||
				("#phone").val() == ""){
				input_all = false;
			}
			
			if(("#id").val() == "" ||
				("#name").val() == "" ||
				("#email").val() !="" ||
				("#phone").val() != ""){
					input_all = false;
				}
				
			if($("#id").val() != "" &&
				$("#name").val() != "" &&
				$("#email").val() == "" &&
				$("#phone").val() ==""){
				input_all = true;
			}
			if($("#id").val() != "" &&
					$("#name").val() != "" &&
					$("#email").val() != "" &&
					$("#phone").val() ==""){
					input_all = true;
				}
			if($("#id").val() != "" &&
					$("#name").val() != "" &&
					$("#email").val() == "" &&
					$("#phone").val() !=""){
					input_all = true;
				}
			if(input_all == true){
				$("#frm").submit;
			}
			
		});
		
	});
	
</script>
</head>
<body>

	<div id="input_info">
		<form action="PwFind" id="frm" method="post">
			<h3>PW 찾기</h3>
			<hr>
			<div id="info_msg">
				<h5>*이메일이나 연락처 중 하나만 입력하셔도 됩니다.*</h5>
			</div>
			<table id="info_frm">
				<tr>
					<td><span id="must">*</span>ID</td>
					<td class="frm_input"><input type="text" name="id" id="id"> </td>
				</tr>
				<tr>
					<td><span id="must">*</span>이름</td>
					<td class="frm_input"><input type="text" name="name" id="name"> </td>
				</tr>
				<tr>
					<td>이메일</td>
					<td class="frm_input"><input type="text" name="email" id="email"></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td class="frm_input"><input type="text" name="phone" id="phone"> </td>
				</tr>
			</table>
			<br>
			<input type="button" id="find_pw" class="find_idpw" value="PW 찾기">
		</form>
	</div>

</body>
</html>