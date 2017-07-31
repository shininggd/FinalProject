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
		<form action="studyRegistInsert" method="post" id="frm" name="frm" enctype="multipart/form-data">
			<input type="hidden"  name="tid" value="${member.id }">
			<div class="form_main">
				<div class="form_top">	
					 제목 <select name="category" class="top_box" id="category">
								<option value="프로그래밍">프로그래밍</option>
								<option value="영어회화">영어회화</option>
								<option value="중국어회화">중국어회화</option>
								<option value="일본어회화">일본어회화</option>
								<option value="보컬">보컬</option>
						   </select>
						<select name="lv" class="top_box" id="lv" >
								<option value="초보">초보</option>
								<option value="중수">중수</option>
								<option value="고수">고수</option>
						   </select> 
						<input type="text" name="title" class="title_box" id="title" placeholder="강의명을 입력하세요"><br>
				 		   
				</div>

				<div class="form_other">
					장소 <select name="location" class="other_box" id="location">
							<option value="온라인">온라인</option>
							<option value="천호동">천호동</option>
						</select> 
					인원 <input type="number" min="1" max="99" class="people_box" name="people" id="people">
					배너이미지 <input type="file" style="background-color: white" name="f1" id="f1">
				</div> 			
			
			<div class="form_other">기   간 <input type="date" name="sDate" class="other_box" id="sDate"> - 
			<input type="date" name="lDate" class="other_box" id="lDate"> 
			가   격 <input type="number" name="price" min="0" class="number_box" id="price">원</div>
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
		$("#title").val()== "" ||
		$("#sDate").val()== "" ||
		$("#lDate").val()== "" ||
		$("#price").val() =="" ||
		$("#f1").val() =="" ||
		$("#price").val()*1 <=0*1 ||
		$("#people").val()*1 <0*1 ||
		$("#people").val()*1>100*1
		){
		
		alert("누락된 정보가 있거나 정보입력이 잘못되었습니다.");
		return false;
        }
        	
        if($("#sDate").val().replace('-','').replace('-','')*1 >$("#lDate").val().replace('-','').replace('-','')*1){
    		alert("강의 시작일과 종료일을 확인해주세요");	
    		return false;
        }
        	
        editor_object.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
		$("#frm").submit();
        
        //폼 submit
        
    });

</script>
</html>