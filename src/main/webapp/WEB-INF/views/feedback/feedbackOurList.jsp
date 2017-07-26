<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${list }" var="s">
<div class="goView" title="${s.num }">
	<div class="whatList" >
	<div class="tibox">&ensp; <span class="goView" title="${s.num }">${s.title }</span></div> 
	<div class="regbox">${s.reg_date }</div>
	  
	</div>
	</div>

</c:forEach>
