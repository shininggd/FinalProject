<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
	
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
<script type="text/javascript">
$(document).ready(function(){
    
	$("#notification_link").click(function(){
        if($("#notification_list_wrap").is(":visible")){
            $("#notification_list_wrap").css("display", "none");
        }else if($("#my_page_menus").is(":visible")){
            $("#notification_list_wrap").css("display", "block");
            $("#my_page_menus").css("display", "none");
        }else if($("#theme_menus_popup").is(":visible")){
            $("#notification_list_wrap").css("display", "block");
            $("#theme_menus_popup").css("display", "none");
        }else{
        	$("#notification_list_wrap").css("display", "block");
        }
    });
    
    $("#my_page_list_toggle").click(function(){
        if($("#my_page_menus").is(":visible")){
            $("#my_page_menus").css("display", "none");
        }else if($("#notification_list_wrap").is(":visible")){
        	$("#my_page_menus").css("display", "block");
        	$("#notification_list_wrap").css("display", "none");
        }else if($("#theme_menus_popup").is(":visible")){
        	$("#my_page_menus").css("display", "block");
        	$("#theme_menus_popup").css("display", "none");
        }else{
            $("#my_page_menus").css("display", "block");
        }
    });
    
    $("#theme_menu_toggle").click(function(){
        if($("#theme_menus_popup").is(":visible")){
            $("#theme_menus_popup").css("display", "none");
        }else if($("#my_page_menus").is(":visible")){
            $("#theme_menus_popup").css("display", "block");
            $("#my_page_menus").css("display", "none");
        }else if($("#notification_list_wrap").is(":visible")){
            $("#theme_menus_popup").css("display", "block");
            $("#notification_list_wrap").css("display", "none");
        }else{
        	$("#theme_menus_popup").css("display", "block");
        }
    });
});
</script>
</head>
<body>
<c:import url="temp/header.jsp" />
<!-- main 시작 -->

<section id="main_wrap">
<!-- 메인화면 slide 시작 -->
<div id="lecture_banner">
	<div class="uk-slidenav-position" data-uk-slider="{center:true, autoplay:true, autoplayInterval:1111114500}">
		    <div class="uk-slider-container">
		        <ul class="uk-slider"> 
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image.jpg" draggable="false"></figure>
		            <div class="banner_content">
							<div class="banner_top_text"><span class="area">강남</span><span class="banner_bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div>	</div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image2.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="banner_bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image3.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="banner_bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image4.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="banner_bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image5.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="banner_bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div></div></a></li>
		        </ul>
		    </div>
		    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slider-item="previous" draggable="false"></a>
			<a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slider-item="next" draggable="false"></a>
		</div>
</div>
<!--메인화면 slide 끝  -->
<div id="introduce"></div>
<div id="exex3"></div>
</section>

<!-- main 끝 -->


<c:import url="temp/footer.jsp" />
</body>
</html>
