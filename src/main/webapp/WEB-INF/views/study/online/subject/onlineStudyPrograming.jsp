<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<script src="https://rtcmulticonnection.herokuapp.com/dist/RTCMultiConnection.min.js"></script >
<script src="https://cdn.webrtc-experiment.com:443/FileBufferReader.js"></script >
<script src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script >

<style type="text/css">

#online_body {
	background-color: #0e0c13;
	color: #dad8de;
	overflow: hidden;
}



.chat-output {
	overflow: auto;
	height: 300px;
}

#videos_container {
	width: 70%;
	height: 50%;
	border: 1px black solid;
	margin: 0;
}

#videos_container video {
	width: 500px;
	border-radius: 15px;
	margin-top: 50px;
	margin-left: 30%;
}

#remote_videos_container {
	border-top: 1px solid #2c2541;
	width: 70%;
	height: 50%;
	border: 1px black solid;
	margin: 0;
	overflow: hidden;
	margin-top: 30px;
}

#remote_videos_container video {
	width: 300px;
	border-radius: 15px;
}
#chat-container {
	width: 25%;
	height: 100%;
	float: right;
	position: absolute;
	top: 0;
	right: 0;
	border: 1px black solid;
	overflow: hidden;
	border-left: 1px solid #2c2541;
}

#file-container {
	height: 40%;
	width: 100%;
	border: 1px solid black;
	display: inline-block;
	padding: 0 20px;
	overflow: auto;
	border-bottom: 1px solid #2c2541;
}

.chat-output {
	height: 40%;
	width: 100%;
	border: 1px solid black;
	display: inline-block;
	padding: 0 20px;
}

.chat-input {
	display: inline-block;
	padding: 15 0 15 0;
	width: 100%;
}

#input-text-chat {
	width: 100%;
	height: 80px;
	border: 1px solid #2c2541;
	background-color: #0e0c13;
	color: #dad8de;
}

#share-file {
	position: absolute;
	right: 29px;
	bottom: 15px;
	border: 1px solid #2c2541;
	background-color: #0e0c13;
	color: #dad8de;
	font-size: 25px;
}

#leave_online_btn {
	position: absolute;
	right: 0;
	top: 0;
	border: 1px solid #2c2541;
	background-color: #0e0c13;
	color: #dad8de;
	font-size: 25px;
}

.hr {
	display: block;
	width: 75%;
	height: 1px;
	background-color: #2c2541;
	border: 1px solid #2c2541;
}
</style>

</head>
<body id="online_body">

<section id="main_section">

<div class="main_container">


<!-- 비디오 들어갈 위치 -->
<div id="videos_container">

</div>

<div class="hr"></div>

<div id="remote_videos_container">

</div>

<div id="chat-container">

	
                
    <div id="file-container">  
    	<div><h4>파일업로드</h4></div>
    </div>             
    
    <div class="chat-output">
    	<div><h4>채팅창</h4></div>
    </div>	
    <div class="chat-input">
    <input type="text" id="input-text-chat">
	<button id="share-file">Share File</button>
	<input type="button" id="leave_online_btn" value="Close">
	</div>
</div>

</div>

</section>

<script type="text/javascript">

if (document.location.protocol == 'http:') {
	document.location.href = document.location.href.replace('http:', 'https:')+"?room_id=${room_id}"; 
}  

//화상채팅용/////////////////////////////////////////////////////////////////////////
var connection = new RTCMultiConnection();
connection.socketURL = 'https://rtcmulticonnection.herokuapp.com:443/';
connection.session = {
audio: true,
video: true,
data: true
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

   /////////////////채팅, 파일업로드/////////////////////////////////////////
   			connection.enableFileSharing = true; 
   			connection.filesContainer = document.getElementById('file-container');
   			
   			connection.onmessage = appendDIV;
   			
			 document.getElementById('share-file').onclick = function() {
                var fileSelector = new FileSelector();
                fileSelector.selectSingleFile(function(file) {
                    connection.send(file);
                });
            };
            document.getElementById('input-text-chat').onkeyup = function(e) {
                if (e.keyCode != 13) return;
                // removing trailing/leading whitespace
                this.value = this.value.replace(/^\s+|\s+$/g, '');
                if (!this.value.length) return;
                connection.send("${member.id} : "+this.value);
                appendDIV("${member.id} : "+this.value);
                this.value = '';
            };
            
            var chatContainer = document.querySelector('.chat-output');
            
            function appendDIV(event) {
                var div = document.createElement('div');
                div.innerHTML = event.data || event;
                /* chatContainer.insertBefore(div, chatContainer.firstChild); */
                $(div).insertAfter(".chat-output div:last");
                div.tabIndex = 0;
                div.focus();
                document.getElementById('input-text-chat').focus();
                
            }
///////////////////////////////////////////////////////////////////////
          //입력한 방이름에 맞는 방에 입장   
          	
          
          var roomid = '${room_id}'
          
			/* connection.openOrJoin(roomid, function() {
  			 if(!connection.isInitiator) return; // this line is optional
   				connection.becomePublicModerator();
			}); */
			
			connection.checkPresence('room-id', function(isRoomExist, roomid) {
			    if (isRoomExist === true) {
			        connection.join(roomid);
			    } else {
			        connection.open(roomid);
			    }
			});
        	
        	$("#leave_online_btn").click(function () {
        		connection.attachStreams.forEach(function(localStream) {
        	        localStream.stop();
        	    });
        	    // close socket.io connection
        	    connection.close();
        	    location.href = "/learn_run/";
			});
        	

</script>
</body>
</html>
