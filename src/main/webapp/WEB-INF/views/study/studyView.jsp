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
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/study/studyView.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>


</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
<!-- ======================================== 섹션=============================================  -->
<section id="main_section">

<div class="Space">
<div class="productIntroduce">
	
	<div class="sideBarFixed">
		<div class="sideTop">
		${dto.title }
		</div>
		
		<hr class="sideHr">
		<div class="sideMiddle">
		<img class="radioImage" src="<c:url value="/resources/img/study/radioCircle.jpg"/>"> <span class="middleText"> <fmt:formatDate value="${dto.sDate }" pattern="MM/dd"/>  - <fmt:formatDate value="${dto.lDate }" pattern="MM/dd"/></span>
		
		</div>
		<hr class="sideHr">
		<div class="sideBottom">
			<div class="bottomBoxes">
			<span class="howPrice">참가비</span> <span class="attendPrice"><fmt:formatNumber type="currency" currencySymbol="">${dto.price }</fmt:formatNumber>원</span> 
			</div>
			<div class="bottomBoxes">
			<input type="button" value="참여 신청하기" class="attendBtn btn">
			</div>
			<div class="bottomBoxes">
			<a class="favoriteBtn btn">♡  찜하기</a> 
			</div>
			
		
		</div>
		
		
	</div>
	<div class="imageBox">
	
	</div>
	<div class="levelBox">
		<div class="levelTop">Level</div>
		<div class="levelBottom">${dto.lv }</div>
	</div>
	<div class="titleBox">
		<span class="titleLocation">${dto.location }</span>
		<div class="titleMain">
			${dto.title }
		</div>
	
	</div>
	<hr>
	<span class="introduceLabel">스터디 소개</span>
	<div class="introduceContent">
	${dto.contents }
	</div>
<hr>	
	<span class="introduceLabel">상세 정보</span>
	<div class="introduceBottom">
		<p>장소: ${dto.location }</p>
		<p>인원: ${dto.people } </p>
		<p>기간: ${dto.sDate } - ${dto.lDate }</p> 
	</div>
	<hr>
	<div class="tutorLabel">
	리더소개
	<p><img class="tutorImage" src="<c:url value="/resources/img/tutor/얼굴.jpg"/>"><p>
	</div>
	<div class="introduceContent">
	안녕하세요~!

제 이름은 최희재, Alice에요. 서울에서 태어나 초,중,고,대학교 까지 다니고 있는 한국 토박이에요. 현재는 대학교에서 의류학이랑 소비자학을 전공하고 있구요. 패션을 정말정말 좋아하는 평범한듯 평범하지 않은 대학생입니다.

한국 토박이이기 때문에 영어를 처음 접한 기회가 특이하진 않아요. 저도 여느 학생들처럼 학교에 가서 알파벳이라는 것을 처음 배웠거든요. 어려움 없이 자연스럽게 배운 한국어와는 달리 머리를 쓰고 노력을 해서 외국어를 습득한다는 과정 자체가 이상하기도 하고 신기하기도 하고.. 2시간에 걸쳐 one two three four five 를 암기하고 나서 드는 왠지 모를 뿌듯함에 ‘영어를 잘 하고 싶다.’라는 욕심이 생겼어요. 하지만 단지 욕심만 있었다면 이렇게 영어를 꾸준히 공부하지는 못했을 거에요. 저같은 경우는 좋아하는 미드 속 주인공이 하는 말들이 너무 매력적으로 들려서 알아듣고 싶은 마음에 영어를 더 열심히 공부했던 것 같아요. 그러면서 영어라는 언어 자체에 매력을 느끼게 되고 애정을 갖게 되면서 영어공부에 재미를 붙이게 되었어요. 미드 속 대사들을 보며 영어를 공부하다 보니 자연스럽게 문법도 익힐 수 있게 되었고, 표현력도 많이 늘게 되었구요!

이렇게 저는 영어를 공부할 때 애정을 갖고 해야 더 많은 효과를 볼 수 있다고 생각해요. 언어적인 면 자체에서 매력을 느낄 수도 있고, 저처럼 좋아하는 배우에 대한 애정이 전이될 수도 있고, 좋아하는 영화를 반복해서 보면서 즐거움을 찾을 수도 있겠죠! 그 과정이 어찌 되었든 즐길 수 있는 상황 속에서 배워야 더 많이 얻을 수 있다고 믿어요.

대학교 1학년을 마친 겨울방학 즈음에, 한국에서 미드만 보며 익혔던 영어를 실생활에서 마음껏 쓰고 싶다는 생각이 들었어요. 그래서 전 바로 호주로 워킹 홀리데이를 떠나게 되었죠. 처음엔 낯선 호주 발음 때문에 음식 주문하는 데에도 애를 먹을 정도로 정말 힘들었어요. 잘 알아듣지 못하니까 자신감도 없어지고 영어가 미워지기도 했었죠. 그러다 외국인 친구들과 함께 share house에 살게 되고, aussie job을 하면서 조금씩 극복해 나갈 수 있었어요. 1년 동안 외국인 친구들과 함께 일을 하며 느낀 점은 꼭 완벽하게 영어를 할 줄 알아야지만 해외에서 일을 할 수 있는 것은 아니라는 거에요. 자신감 있고 긍정적인 모습으로 대하다보면 정말 다 되더라구요. 완벽하지 않은 영어지만 하루에 표현 하나 둘 씩 배우다보면 어느새 막힘 없이 대화하고 있는 모습을 발견할 수 있으니까요. 미드 속에서나 듣던 표현을 직접 듣고 말하게 되고, 어제 배운 표현을 내일 써먹는 재미에 힘든 시간 조차 힘든 줄 모르고 1년을 보냈던 것 같아요. 

스터디 서치 수업을 통해서 여러분이 영어 공부의 즐거움을 느낄 수 있으면 좋겠어요! 미드 보는 게 너무 재밌어서 혹은 영어 발음이 너무 멋있어서! 어떤 이유라도 괜찮아요! 책만 들여다 보는 수업 말고 내가 지금 느끼는 것들을 함께 공유할 수 있는 편안한 수업을 같이 만들어 가고 싶어요.

돌이켜 생각해보면 전 항상 영어와 연애 같은 걸 하고 있었다는 생각이 들어요! 둘의 공통점은 절대 글로만 배워선 실전에서 강할 수 없다는 거! 잘 안되더라도 무조건 부딪히는 게 중요하다고 생각해요. 밑져야 본전 아니겠어요?
	</div>
</div>

</div>

</section>
<!-- ======================================== 섹션END==========================================  -->

<c:import url="../temp/footer.jsp"></c:import>

<script src="<%=application.getContextPath()%>/resources/js/study/studyView.js"></script>
</body>
</html>