<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>SgroupView</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/small_group/sgroupView.css">

<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>
<c:import url="../temp/header.jsp" />
	<section id="sgroup_eventView_page">
		<div class="view_wrap_1">
			<div class="view_1_picture"><img src=""></div>
			<div class="view_1_content_detail">
				<div class="view_1_tag">#여행</div>
				<div class="view_1_title">6대륙 정복한<br>프로여행러 Hayley의<br>"여행과 사람사이"</div>
				<div class="view_1_date">2017년 7월 1일 토</div>
				<div class="view_1_time">저녁 7시 00분</div>
				<div class="view_1_location">@합정역 카페</div>
				<div class="view_1_price">
					<div class="view_1_price_per">참가비 15,000원</div>
					<div class="view_1_price_detail">(1 Free drink, 뒷풀이비용 미포함)</div>
				</div>
				<div class="view_1_people">선착순 30명</div>
			</div>
		</div>
		<div class="view_wrap_2">
			<div class="view_2">
				<div class="view_2_sgroupEvent">#7월 1일, 소그룹 Event!</div>
				<div class="view_2_content">여행도 좋고 사람도 좋아한다면?</div>
				<div class="view_2_location_picture"><img src=""></div>
				<div class="view_2_host">#Special 호스트 소개</div>
				<div class="view_2_host_picture"><img src=""></div>
				<div class="view_2_host_detail">
					<div class="view_2_special_host">SPECIAL HOST</div>
					<div class="view_2_host_name">Hayley Lee</div>
				</div>
				<div class="view_2_host_content">유럽의 대도시부터 오지여행까지!</div>
			</div>
		</div>
		<div class="view_wrap_3">
			<div class="view_3_picture"><img alt="" src=""></div>
		</div>
		<div class="view_wrap_4">
			<div class="view_4">
				<div class="view_4_qna">#Q&A</div>
				<div class="view_4_qna_1st">
					<div class="view_4_qna_1st_q">Q. 리더분이<br>&nbsp;&nbsp;&nbsp;&nbsp;영어로만 말하시나요?<br>&nbsp;&nbsp;&nbsp;&nbsp;못 알아들을까봐 걱정이...</div>
					<div class="view_4_qna_1st_a">아니요~ 영어를하시더라도 한국어로 한번 더 설명을 해주실 거에요~<br>너무 걱정하지 않으셔도 되니 편한 마음으로 오세용 :D</div>
				</div>
				<div class="view_4_qna_2nd">
					<div class="view_4_qna_2nd_q">Q. 지각할 것 같아요./<br>&nbsp;&nbsp;&nbsp;&nbsp;먼저 나가봐야 할 것 같아요.</div>
					<div class="view_4_qna_2nd_a">첫 순서로 멤버들과의 Ice breaking 시간이 마련되어 있기 때문에 지각은 삼가<br>주세요ㅠ 또 먼저 나가시는 분들이 많아지면 분위기가 안좋아지겠죠? 시간을<br>편히 내실 수 있을 때 신청해주세요~</div>
				</div>
				<div class="view_4_qna_3rd">
					<div class="view_4_qna_3rd_q">Q. 친구도 와도 되나요?<br>&nbsp;&nbsp;&nbsp;&nbsp;Learn%Run 멤버는 아닌데...</div>
					<div class="view_4_qna_3rd_a_1">외부인은 선착순으로 3-5명 참가 가능합니다!</div>
					<div class="view_4_qna_3rd_a_2">친구분과 함께 오시고 싶다면 서둘러 신청해주세요!:)</div>
				</div>
			</div>
		</div>
		<div class="view_wrap_5">
			<div class="view_5_picture">
				<div class="view_5_content">
					<div class="view_5_host_picture"><img src=""></div>
					<div class="view_5_1st">Will you come join us?</div>
					<div class="view_5_2nd">It's gonna be fun!</div>
					<div class="view_5_3rd">본 이벤트는 Learn&Run 멤버만 참여 가능합니다.</div>
				</div>
			</div>
		</div>		
	</section>
<c:import url="../temp/footer.jsp" />
</body>
</html>