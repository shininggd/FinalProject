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
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>

<style type="text/css">
.inputForm{
	width: 800px;
	min-height: 700px;
	background-color: fuchsia;
	margin: 0 auto;
	overflow: hidden;
}
#contents{
	width: 780px;
	height: 500px;
	
}
.textSE{
	margin-left: 5px; 
}
</style>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">
	<div class="inputForm">
		<form action="studyRegistInsert" method="post" id="frm" name="frm" enctype="multipart/data-form">
			<input type="hidden" name="tid" value="${member.id }">
			<p>강의명:<input type="text" name="title"></p>
			<p>강의레벨: <select name="lv">
						<option value="초보">초보</option>
						<option value="중수">중수</option>
						<option value="고수">고수</option>
					</select></p>
			<p>가   격: <input type="number" name="price"></p>
			<p>시작일: <input type="date" name="sDate"></p>
			<p>종료일: <input type="date" name="lDate"></p>
			<p>강의유형: <select name="category">
						<option value="영어회화">영어회화</option>
						<option value="중국어회화">중국어회화</option>
					</select></p>
			<p>모집인원: <input type="number" min="1" max="99" name="people"></p>
			<p>강의장소: <select name="location">
						<option value="온라인">온라인</option>
						<option value="천호동">천호동</option>
					</select></p>			
			<p>설    명:</p>
			<div class="textSE"><textarea id="contents" name="contents"></textarea></div>
			<p><input type="submit" id="savebutton"> </p>
		</form>
	</div>
</section>
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
        editor_object.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    });

</script>
</html>