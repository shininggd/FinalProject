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
		<div class="sgroup_list_section">
			<div class="member_only">
				<span class="alert_icon"></span>
				본 이벤트는<span class="orange">Learn&Run 멤버만 참여 가능</span>합니다.
			</div>
			<div class="sgroup_section_content">
				<ul class="event_list">
					<li class="coming_soon">
						<div class="point"></div>
						<div class="coming_soon_text">
							Learn&Run 커뮤니티 이벤트는 계속됩니다!
							<span class="bold">COMING SOON!</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="sgroup_event_section">
			<div class="section_content">
				<div class="section_title">소그룹 이벤트</div>
				<div class="swiper_box">
					<a href="javascript:void(0);" onclick="scroll_left()" id="button_previous" class="css_arrow_left"></a>
					<a href="javascript:void(0);" onclick="scroll_right()" id="button_next" class="css_arrow_right"></a>
					<div id="sgroup_event_title_wrap" style="width: 1024px; height: 284px;">
						<table class="" width="1024" align="center" cellpadding="0" cellspacing="0">
						<tr class="swiper_wrapper">
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
							<td class="sgrouop_event_swiper_slide" style="width: 192px; margin-right: 16px;">
								<a href="/learn_run/small_group/sgroupView">
									<div class="thumnail"><img class="thumnail_picture" src="<%=application.getContextPath()%>/resources/img/image.jpg"></div>
									<div class="event_detail">
										<div class="tag_title"><span class="tag">#여행</span>6대륙 정복한 프로여행러 Hayley의 사람과 여행사이</div>
										<div class="meeting_date">7월 1일 토</div>
									</div></a>
							</td>
						</tr>
						</table>
					</div>
				</div>
			</div>
			<div style="margin-top: 70px; width: 300px; height: 100px; margin-left: 800px;">
				<a href="/learn_run/small_group/sgroupWrite" class="sgroup_register">등록하기</a>
			</div>
		</div>
	</section>
<c:import url="../temp/footer.jsp" />

<script type="text/javascript">
 
    var amt = 23;
    var gap = 208;
 
    var cnt = 0;
    var init_amt = amt;
 
    function scroll_right(){
        document.getElementById('sgroup_event_title_wrap').scrollLeft += amt;
        if(cnt >= gap){
            cnt = 0;
            var adj = document.getElementById('sgroup_event_title_wrap').scrollLeft % gap;
            document.getElementById('sgroup_event_title_wrap').scrollLeft -= adj;
            amt = init_amt;
        }
        else{
            amt = Math.ceil(amt / 1.2);
            setTimeout(scroll_right, 10);
        }
        cnt = cnt + amt;
    }
 
    function scroll_left(){
        document.getElementById('sgroup_event_title_wrap').scrollLeft -= amt;
        if(cnt >= gap){
            cnt = 0;
            var adj = document.getElementById('sgroup_event_title_wrap').scrollLeft % gap;
            if(adj > 0) adj = gap - adj
            document.getElementById('sgroup_event_title_wrap').scrollLeft += adj;
            amt = init_amt;
        }
        else{
            amt = Math.ceil(amt / 1.2);
            setTimeout(scroll_left, 10);
        }
        cnt = cnt + amt;
    }
 
</script>
</body>
</html>