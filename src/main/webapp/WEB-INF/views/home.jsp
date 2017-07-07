<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/uikit/uikit.docs.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/uikit.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/slider.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/slide.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/index.css">
</head>
<body>
<header>
<div id="level_test_banner">
<div id="level_test_banner_content">
			<a href="#" id="banner_content">내용</a>
		</div>
		</div>
	<div id="header_content">
		<div id="header_menu">
			<div id="header_logo">logo</div>
				<article id="header-left-menus">
					<a href="#">메뉴1<span class="arrow_icon"></span></a>
					<span class="bar"></span>
					<a href="#">메뉴2<span class="arrow_icon"></span></a>
					<span class="bar"></span>
					<a href="#">메뉴33<span class="arrow_icon"></span></a>
					<span class="bar"></span>
				</article>
						<a class="sear_form"></a>
						<article id="header-right-menus">
						<a id="header_search"></a>
						<a href="#">로그인<span class="arrow_icon"></span></a>
						<span class="bar"></span>
						<a href="#">회원가입<span class="arrow_icon"></span></a>
						<span class="bar"></span>
						<a href="#">여기 뭐넣지<span class="arrow_icon"></span></a>
						<span class="bar"></span>
						</article>
		
		</div>
	</div>
</header>


<section id="main_wrap">
<div id="lecture_banner">
	<div class="uk-slidenav-position" data-uk-slider="{center:true, autoplay:true, autoplayInterval:4500}">
		    <div class="uk-slider-container">
		        <ul class="uk-slider">
		            <li><a href="#" draggable="false"><div class="img_size"><div class="banner_content"></div><figure><img style="width: 48%; height: 100%;" src="<%=application.getContextPath()%>/resources/images/image.jpg" draggable="false"></figure></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><div class="banner_content"></div><figure><img style="width: 48%; height: 100%;" src="<%=application.getContextPath()%>/resources/images/image2.jpg" draggable="false"></figure></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><div class="banner_content"></div><figure><img style="width: 48%; height: 100%;" src="<%=application.getContextPath()%>/resources/images/image3.jpg" draggable="false"></figure></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><div class="banner_content"></div><figure><img style="width: 48%; height: 100%;" src="<%=application.getContextPath()%>/resources/images/image4.jpg" draggable="false"></figure></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><div class="banner_content"></div><figure><img style="width: 48%; height: 100%;" src="<%=application.getContextPath()%>/resources/images/image5.jpg" draggable="false"></figure></div></a></li>
		        </ul>
		    </div>
		    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slider-item="previous" draggable="false"></a>
			<a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slider-item="next" draggable="false"></a>
		</div>

</div>
<div id="introduce"></div>
<div id="exex3"></div>
</section>

<footer id="main_footer">

</footer>

</body>
</html>
