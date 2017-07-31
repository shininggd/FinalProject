<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.webrtc-experiment.com:443/rmc3.min.js"></script>
<script src="https://cdn.webrtc-experiment.com:443/socket.io.js"></script>
<style type="text/css">
	video{
		width: 400px;
		height: 300px;
		background-color: red;
		border-radius: 15px;
	}
</style>
</head>
<body>

<h1>온라인 보컬 페이지</h1>
<h2>${room_id}</h2>
<input type="hidden" value="62" id="roomId">
<button id="btn-open-or-join-room">
	Open Room or Join Room
</button>

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
	<button id="share-file" disabled>Share File</button>
             
    <!-- 채팅 입력시 출력창 -->         
    <div class="chat-output">
    
    </div>   
                
    <!-- 파일 업로드시 출력창 -->
    <div id="file-container">
    
    </div>
                
   
    
</div>

<script type="text/javascript">
var connection = new RTCMultiConnection();
connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';

connection.session = {
		audio : true,
		video : true
};
connection.sdpConstraints.mandatory = {
		OfferToRecieveAudio: true,
		OfferToReceiveVideo: true
};

var videosContainer = document.getElementById('videos_container');
var remoteVideosContainer = document.getElementById('remote_videos_container');

connection.onstream = function(event) {
	var vodeo = event.mediaElement;
	if(event.type == 'local'){
	videosContainer.appendChild(video);
	}
	if(event.type == 'remote'){
		remoteVideosContainer.appendChild(video);
	}
	
	
	
	
};


document.getElementById("btn-open-or-join-room").onclick = function() {
	this.disabled = true;
	var roomid = document.getElementById('roomId')
	connenction.openOrJoin(roomid.value || "predefined-roomid");
};




/* 접속 주소가 http로 접속시에 다시 https로 접속하게 하는 코드 */
if (document.location.protocol == 'http:') {
    document.location.href = document.location.href.replace('http:', 'https:');
}
</script>

</body>
</html>