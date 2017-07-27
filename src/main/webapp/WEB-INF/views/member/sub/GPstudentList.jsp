<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<select id="GPstudentList">
<c:forEach items="${list}" var="i">
	<option value="${i}">${i}</option>
</c:forEach>
</select>
