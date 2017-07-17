<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {

		var input_all = false;

		$("#find_id").click(function(){

					if ($("#name").val() == "" || 
						$("#email").val() == ""|| 
						$("#phone").val() == "") {

						alert("모든 항목에 정보를 입력해주세요.");
						input_all = false;
					} 
					if($("#name").val() != "" &&
						$("#email").val() != "" &&
						$("#phone").val() != ""){
						input_all = true;	
						}

					if(input_all ==true){
						$("#frm").submit();
					}
				});

	});
</script>
</head>
<body>

	<div id="input_info">
		<form action="/learn_run/member/IdFind" id="frm" method="post">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" id="name" placeholder="이름을 입력해주세요."></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" id="email" placeholder="이메일을 입력해주세요."></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><input type="text" name="phone" id="phone" placeholder="연락처를 입력해주세요">
					</td>
				</tr>
			</table>
			<button id="find_id">ID 찾기 !</button>
		</form>

	</div>

</body>
</html>