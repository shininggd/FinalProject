<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Home</title>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/home.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
</head>
<body>



<c:import url="temp/header.jsp"></c:import>
<!-- main 시작 -->

<section id="main_wrap">
<div id="lecture_banner"></div>
<div id="introduce"></div>
<div id="exex3"></div>
</section>
<img alt="" src="./resources/a.jpg">



<!-- main 끝 -->


<c:import url="temp/footer.jsp"></c:import>
</body>
</html>
