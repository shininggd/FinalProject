<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.mainGround{
		width: 1200px;
		height: 1300px;
		background-color: gray;
	}

</style>
</head>
<body>
<div class="mainGround">
<h1>온라인 보컬!</h1>
<h2>${room_id}</h2>

<!-- 비디오 들어갈 위치 -->
<!-- 자기자신의 화면 -->
<div id="videos_container">

</div>

<hr>

<!-- 다른사람의 화면 -->
<div id="remote_videos_container">

</div>



<div id="chat-container">
	<!-- 채팅 텍스트 입력 -->
	<input type="text" id="input-text-chat" placeholder="Enter Text Chat">
	
	<!-- 파일공유 -->
	<button id="share-file" >Share File</button>
             
    <!-- 채팅 입력시 출력창 -->         
    <div class="chat-output">
    
    </div>   
                
    <!-- 파일 업로드시 출력창 -->
    <div id="file-container">
    
    </div>
                
   
    
</div>

</div>
<script type="text/javascript">

/* 접속 주소가 http로 접속시에 다시 https로 접속하게 하는 코드 */
if (document.location.protocol == 'http:') {
    document.location.href = document.location.href.replace('http:', 'https:');
}
</script>
</body>
</html>