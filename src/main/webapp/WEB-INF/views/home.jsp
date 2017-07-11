<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<!-- 메인화면 css -->
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/home.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
</head>
<body>

<c:import url="temp/header.jsp"></c:import>
<!-- main 시작 -->

<section id="main_wrap">
<!-- 메인화면 slide 시작 -->
<div id="lecture_banner">
	<div class="uk-slidenav-position" data-uk-slider="{center:true, autoplay:true, autoplayInterval:1111114500}">
		    <div class="uk-slider-container">
		        <ul class="uk-slider"> 
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image.jpg" draggable="false"></figure>
		            <div class="banner_content">
							<div class="banner_top_text"><span class="area">강남</span><span class="bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div>	</div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image2.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image3.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image4.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="bar"></span><span class="level">초급</span></div>
							<div class="banner_title">미국 4년 거주! Erin 과 함께 주제별 토론으로 논리있게 회화!</div>
							<div class="banner_bottom_text"><span class="price_value">240,000원</span><span class="price_unit">/12주</span></div>
						</div></div></a></li>
		            <li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/image5.jpg" draggable="false"></figure><div class="banner_content" draggable="false">
							<div class="banner_top_text"><span class="area">강남</span><span class="bar"></span><span class="level">초급</span></div>
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
				<p class="leftSelect">다양한 영어회화</p>
				<p>다양한 영어회화 ＇ 대세는 중국어</p>
		
			</div>
			<div class="middleCenter">
				<div class="middleLine"></div>
			</div>
			<div class="middleRight">
				<div class="viewBox">
					<a class="viewAll" href="./study/studyList?find=category/location/lv&search=영어회화/all/all">전체보기 〉</a>
				</div>
			</div>
		</div>
		<div class="studyBottom">
			<div class="main_container">
				<c:forEach items="${list }" var="i"  varStatus="s" >
					<div class="listBox">
						<div class="boxTop">
						${i.location } | ${i.lv }
						</div>
						<div class="boxMiddle_1">
							${i.title }
						</div>
						<div class="boxMiddle_2">
							<fmt:formatNumber type="currency" currencySymbol="">${i.price }</fmt:formatNumber>원 <span class="people">${i.people }명</span> 
						</div>
						<div class="boxBottom">
						
						</div>
						
						
					</div>
					<c:if test="${s.index%3 eq 2 }">
						
						<hr>
					</c:if>
						
							
				</c:forEach>
		</div>
		
	</div>
	<!-- 강의 리스트 3개 가져오는거  끝-->
</div>
</div>
<div id="exex3"></div>
</section>


<!-- main 끝 -->


<c:import url="temp/footer.jsp"></c:import>
</body>
</html>
