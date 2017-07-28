<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/message/messageWrite.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h1 id="MW_header">Message Write</h1>
	<form action="message_write" id="message_frm">
		<input type="hidden" name="sender" value="${member.id }">
		<label id="title_lavel" for="title"> Title : </label>
		<input type="text" id="title" name="title">
		<label id="id_lavel" for="id"> 받는사람 ID : </label>
		<input type="text" id="id" name="id">
		<label id="contents_lavel" for="title"> Contents : </label>
		<textarea rows="10" cols="55" id="contents" name="contents"></textarea><br>
		<input type="button" id="message_btn" value="Send">
	</form>

<script type="text/javascript">
	$("#message_btn").click(function () {

		var from = $("#message_frm")[0];
		var formData = new FormData(from);
		
		 $.ajax({
             url: 'messageWrite',
             processData: false,
                 contentType: false,
             data: formData,
             type: 'POST',
             success: function(result){
                alert(result.trim()); 
                window.opener.ListLoad();
       		 	window.close();
             }
         });	
		
		
		
	});
</script>
</body>
</html>