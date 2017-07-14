<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Sgroup</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/small_group/sgroup.css">

<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
</head>
<body>
<c:import url="../temp/header.jsp" />
	<section id="small_group_list_page">
		<div class="top_banner">
			<video class="sgroup_video" src="https://cdn.studysearch.co.kr/static/community-event-pc-video2.mp4" controls autoplay loop muted preload="auto"></video>
			<div class="banner_content">
				<div class="banner_label">COMMUNITY EVENT</div>
				<div class="banner_title">Learn&Run에서<br>특별한 주말이 시작됩니다.</div>
				<div class="banner_description">Learn&Run 멤버들만을 위해 준비된,<br>특별한 커뮤니티 이벤트</div>
				<div class="banner_arrow"></div>
			</div>
		</div>
		<div class="sgroup_check_it">
			<div class="check_label"></div>
			<div class="check_title">커뮤니티 이벤트<br>지금 바로 확인해보세요.</div>
			<div class="check_weekend">이제 주말이 특별해집니다.</div>
		</div>
	</section>
<c:import url="../temp/footer.jsp" />

</body>
</html>