<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js" ></script>
<script src="https://rtcmulticonnection.herokuapp.com/dist/RTCMultiConnection.min.js"></script >
<script src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script >

<style type="text/css">

video {
	width: 400px;
	border-radius: 15px;
}

.main_container {
	height: 600px;
}

</style>

</head>
<body>
<c:import url="../../temp/header.jsp"></c:import>

<section id="main_section">

<div class="main_container">



<hr>

<!-- 비디오 들어갈 위치 -->
<div id="videos_container">

</div>

<hr>

<div id="remote_videos_container">

</div>

</div>


<div id="chat-container">

	<input type="text" id="input-text-chat" placeholder="Enter Text Chat">
	<button id="share-file" disabled>Share File</button>
                
    <div id="file-container">
    
    </div>
                
    <div class="chat-output">
    
    </div>
    
</div>


</section>
<c:import url="../../temp/footer.jsp"></c:import>

<script type="text/javascript">


if (document.location.protocol == 'http:') {
    document.location.href = document.location.href.replace('http:', 'https:');
}


//화상채팅용/////////////////////////////////////////////////////////////////////////
var connection = new RTCMultiConnection();
connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';


connection.session = {
audio: true,
video: true
};


connection.sdpConstraints.mandatory = {
OfferToReceiveAudio: true,
OfferToReceiveVideo: true
};


//화상채팅 새로 추가되면 지정한 위치에 video 생기도록 설정
connection.onstream = function(event) {
	var video = event.mediaElement;
	
	if(event.type === 'local') {
		$("#videos_container").append(video);
	}
	if(event.type === 'remote') {
		$("#remote_videos_container").append(video);
	}
	
};

    //입력한 방이름에 맞는 방에 입장
    var roomid = '${room_id}';
    
    connection.openOrJoin(roomid);

 /////////////////////////////////////////////////////////////////////////////////
    
</script>
</body>
</html>
