<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyList.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyRegist.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/feedback/feedback_form_main.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/feedback/feedback_upload.css">
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<div class="main_back_color">
<section id="main_section">
	
	
	<div class="inputForm ">
		<div class="regist_title">
		각양각색 스터디<br>
		 <span class="fcolor">Learn&Run</span>
		</div>
		<form action="studyPage" method="post" id="frm" name="frm" enctype="multipart/form-data">
			<input type="hidden"  name="snum" value="${dto.snum }">
			<input type="hidden"  name="writer" value="${member.id }">
			<input type="hidden" name="category" value="${dto.category }">
			<input type="hidden" name="ref" value="${dto.ref }">
			<input type="hidden" name="step" value="${dto.step }">
			<input type="hidden" name="depth" value="${dto.depth }">
			<input type="hidden" name="kind" value="reply">
			<div class="form_main">
				<div class="form_top">	
					 제목 
						
						<input type="text" name="title" class="title_box" id="title" placeholder="제목을 입력하세요"><br>
				 		   
				</div>
			</div>
			<div class="up_form">
					<input type="file" name="feedUp" id="feedUp">
				</div>
			<div class="textSE">
			<textarea id="contents" name="contents"></textarea></div>
			<div class="submit_box">
			<input type="submit" id="savebutton" value="등록하기" class="submit_btn" >
			</div>
		</form>
	</div>
</section>
</div>
<!-- ======================================== 섹션END==========================================  -->
<c:import url="../temp/footer.jsp"></c:import>

</body>
<script type="text/javascript">
var title = document.getElementById("title");
var contents = document.getElementById("contents");
//전역변수선언
var editor_object = [];
 
nhn.husky.EZCreator.createInIFrame({
    oAppRef: editor_object,
    elPlaceHolder: "contents",
    sSkinURI: "<%=application.getContextPath()%>/resources/SE2/SmartEditor2Skin.html", 
    htParams : {
        // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
        bUseToolbar : true,             
        // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
        bUseVerticalResizer : true,     
        // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
        bUseModeChanger : true, 
    }
});
    $("#savebutton").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        
         
        
	   if(
		$("#title").val()== "" 
		){
		
		alert("제목은 필수 입력항목입니다.");
		return false;
        }
        	
        editor_object.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
		$("#frm").submit();
        
        //폼 submit
        
    });

</script>
</html>