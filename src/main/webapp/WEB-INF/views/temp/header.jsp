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
					<a href="#">메뉴1<img class="arrow_icon" src="<c:url value="/img/arrow_icon.png"/>"></a>
					<span class="bar"></span>
					<a href="#">메뉴2</a>
					<span class="bar"></span>
					<a href="#">메뉴3</a>
					<span class="bar"></span>
				</article>
						<a class="sear_form"></a>
						<article id="header-right-menus">
						<a href="#"><img id="header_search" src="<c:url value="/img/SearchIcon.png"/>"></a>
						<a href="#">로그인</a>
						<span class="bar"></span>
						<a href="#">회원가입</a>
						<span class="bar"></span>
						<a href="#">메뉴6</a>
						</article>
		</div>
	</div>
</header>
<!-- header 끝 -->