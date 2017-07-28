<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>

<!-- 메인화면 slide 소스 시작 -->
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/uikit/uikit.docs.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/uikit.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/slider.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/slide.css">
<!-- 메인화면 slide 소스 끝 -->

<!-- 메인화면 css 시작 -->
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/home.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">

<!-- 메인화면 css 끝 -->
<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>


</head>
<body>

<c:import url="temp/header.jsp" />

<!-- main 시작 -->

<section id="main_wrap">
<!-- 메인화면 slide 시작 -->
<div id="lecture_banner">
	<div class="uk-slidenav-position" data-uk-slider="{center:true, autoplay:true, autoplayInterval:4500}">
		    <div class="uk-slider-container">
		        <ul class="uk-slider"> 
		            
		        </ul>
		    </div>
		    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slider-item="previous" draggable="false"></a>
			<a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slider-item="next" draggable="false"></a>
		</div>
</div>
<!--메인화면 slide 끝  -->



<div id="introduce">
<!-- 강의 리스트 3개 가져오는거  -->
	<div class="studyWrap">
		<div class="studyTop">
		<br>
		<p><span class="orange">Learn&Run</span>은</p>
		<p>각양각색 <span class="orange">스터디 리더</span>들과 함께하는</p>
		<p>온라인/오프라인 <span class="orange">스터디</span> 입니다.</p>
		</div>	
		<div class="studyMiddle">
			<div class="middleLeft">
				<p class="leftSelect">다양한 <span id="cat">영어회화</span></p>
				<p><span class="homeCategory" title="영어회화">다양한 영어회화</span> ＇ 
				<span class="homeCategory" title="중국어회화">다양한 중국어</span></p>
		
			</div>
			<div class="middleCenter">
				<div class="middleLine"></div>
			</div>
			<div class="middleRight">
				<div class="viewBox">
					<a class="viewAll" href="./study/studyList?find=category,location,lv&search=영어회화,all,all">전체보기 〉</a>
				</div>
			</div>
		</div>
		<div class="studyBottom">
			<div class="main_container" id="studyList">

		    </div>
		
	</div>
	<!-- 강의 리스트 3개 가져오는거  끝-->
</div>
</div>
<div id="exex3"></div>
</section>

<!-- main 끝 -->


<c:import url="temp/footer.jsp" />

<script type="text/javascript">
studySlider();
homList('category','영어회화');
$(".homeCategory").click(function() {
	var find = 'category';
	var search = $(this).attr("title");
	homList(find,search);
	

})

function homList(find, search) {
	$.get("./study/studyHomeList",{find:find,search:search},function(data){
		$("#studyList").html(data);
})
$(".viewAll").attr("href","./study/studyList?find=category,location,lv&search="+search+",all,all")
$("#cat").html(search);
	
}
function studySlider() {
	$.get("./study/studySlider",function(data){
		$(".uk-slider").html(data);
})

	
}

</script>

</body>
</html>
