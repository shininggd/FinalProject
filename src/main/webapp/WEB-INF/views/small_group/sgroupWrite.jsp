<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>SgroupWrite</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/small_group/sgroupWrite.css">

<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>
<c:import url="../temp/header.jsp" />
	<section id="sgroup_eventWrite_page">
	<div class="write_wrap_1">
			<div class="write_1_picture">사진<br><input type="file"></div>
			<div class="write_1_content_detail">
				<div class="write_1_tag">태그 : <input class="write_1_tag_input" type="text" value=" ex)여행"></div>
				<div class="write_1_title">제목 : <br><textarea class="write_1_title_input" rows="3" cols="25"></textarea></div>
				<div class="write_1_date">날짜 : <input class="write_1_date_input" type="text" value="ex)2017년 7월 1일 토"></div>
				<div class="write_1_time">시간 : <input class="write_1_time_input" type="text" value="ex)저녁 7시 00분"></div>
				<div class="write_1_location">장소 : <input class="write_1_location_input" type="text" value="ex)합정역 카페"></div>
				<div class="write_1_price">
					<div class="write_1_price_per">참가비 : <input class="write_1_price_per_input" type="text" value="ex)15000">원</div>
					<div class="write_1_price_detail">세부사항 : ( <input class="write_1_price_detail_input" type="text" value="ex)1 Free drink, 뒷풀이비용 미포함"> )</div>
				</div>
				<div class="write_1_people">인원 : 선착순 <input class="write_1_people_input" type="text" value="ex)30">명</div>
			</div>
		</div>
	</section>
<c:import url="../temp/footer.jsp" />

</body>
</html>