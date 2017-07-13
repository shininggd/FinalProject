<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- header 시작 -->
<header>
<div id="level_test_banner">
<div id="level_test_banner_content">
			내용
		</div>
		</div>
	<div id="header_content">
		<div id="header_menu">
			<div id="header_logo">logo</div>
				<article id="header-left-menus">
					<a id="theme_menu_toggle" class="link" href="#"><span class="drawer_icon"></span>카테고리<img class="arrow_icon" src="<c:url value="/resources/img/arrow_icon.png"/>"></a>
					<span class="header_bar"></span>
					<a class="menu2" href="#">메뉴2</a>
					<span class="header_bar"></span>
					<a class="menu3" href="#">메뉴3</a>
					<span class="header_bar"></span>
					<ul id="theme_menus_popup">
						<li><a class="theme_link" href="" style="text-decoration: none;">프로그래밍</a></li>
						<li><a class="theme_link" href="" style="text-decoration: none;">영어 회화</a></li>
						<li><a class="theme_link" href="" style="text-decoration: none;">중국어 회화</a></li>
						<li><a class="theme_link" href="" style="text-decoration: none;">보컬</a></li>
					</ul>
				</article>
					<a class="sear_form"></a>
				<article id="header-right-menus">
					<a href="#"><img id="header_search" src="<c:url value="/resources/img/SearchIcon.png"/>"></a>
					<!--로그인 전  -->
						<!-- <span class="header_right_bar"></span>
						<a id="login_modal_toggle" href="#">로그인</a>
						<span class="header_right_bar"></span>
						<a id="registrarion_modal_toggle" href="#">회원가입</a>
						<span class="header_right_bar"></span>
						<a id="menu6" href="#">메뉴6</a> -->
					<!-- 로그인 전 -->
					<!-- 로그인 후 -->
						<a id="chat_link" class="icon_link" href="">"Messages"</a>
						<a id="notification_link" class="icon_link" href="javascript:void(0)"></a>
						<div id="notification_list_wrap" class="show">
							<span class="triangle1"></span>
							<span class="triangle2"></span>
							<div id="notification_scroll" class="gm_scrollbar_container ">
								<div id="gm_scrollbar_vertical" class="gm_scrollbar">
									<div id="thumb_vertical" class="thumb" style="transform: translate3d(0px, 0px, 0px);"></div>
								</div>
								<div id="gm_scrollbar_horizontal" class="gm_scrollbar">
									<div id="thumb_horizontal" class="thumb" style="transform: translate3d(0px, 0px, 0px);"></div>
								</div>
								<div class="gm_scrollbar_view" style="width: 317px; height: 377px;">
									<ul id="notification_list">
										<li class="notification_list_empty">
											<span class="title">아직 알림이 없습니다!</span><br>
											<span class="decoration">Q&A에 답글이 달렸을 때 알려드려요 :)</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<a id="my_page_list_toggle" href="javascript:void(0)">
							<div class="my_photo"></div>
							<span class="my_name">가나다</span>
							<span class="triangle"></span>
						</a>
						<section id="my_page_menus" class="show">
							<section class="profile_section">
								<div class="user_photo"></div>
								<div class="user_name_wrap">
									<div class="user_name">가나다</div>
									<a class="link_to_edit_profile" href="" style="text-decoration: none;">프로필 보기</a>
								</div>							
							</section>
							<section class="my_page_list_section">
								<a class="my_page_menu" href="" style="text-decoration: none;">내 스터디</a>
								<a class="my_page_menu" href="" style="text-decoration: none;">찜한 스터디</a>
								<a class="my_page_menu" href="" style="text-decoration: none;">내 구매 내역</a>
								<a class="my_page_menu" href="" style="text-decoration: none;">내 포인트</a>
							</section>
							<section class="my_page_list_section">
								<a class="my_page_menu" href="" style="text-decoration: none;">자주 묻는 질문</a>
								<a class="my_page_menu_logout" href="" style="text-decoration: none; color: #a0a0a0;">로그아웃</a>
							</section>
						</section>
					<!-- 로그인 후 -->
				</article>
		</div>
	</div>
</header>
<!-- header 끝 -->