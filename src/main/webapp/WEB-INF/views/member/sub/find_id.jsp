<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					if ($("#name").val() == "" || 
						$("#email").val() == ""|| 
						$("#phone").val() == "") {
						input_all = false;
					} 
					if($("#name").val() != "" &&
						$("#email").val() != "" &&
						$("#phone").val() != ""){
						input_all = true;	
						}
					
					if($("#name").val() !="" &&
						$("#email").val() != "" &&
						$("#phone").val() == ""){
						input_all = true;
					}
					
					if($("#name").val() !="" &&
						$("#email").val() == "" &&
						$("#phone").val() != ""){
						input_all = true;
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
				<h5>*이메일과 연락처 둘 중 하나만 입력하셔도 됩니다.*</h5>
			</div>
			<table id="info_frm">
				<tr>
					<td>이름</td>
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
			<input type="button" id="find_id" class="find_idpw" value="ID 찾기">
		</form>

	</div>

</body>
</html>