<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/sub/tutorOversight.css">
<table id="tutorinfo_table">
<tr>
	<th>id</th>
	<th>lv</th>
	<th>right</th>
	<th>change</th>
</tr>
<c:forEach items="${data}" var="i" varStatus="s">

<tr>
	<td id="tutoids${s.index }" title="${i.id}">${i.id}
	</td>
	<td>
		<select class="lv_select" id="lv_select${s.index}">
			<option id="unreceived${s.index }" value="unreceived" <c:if test="${i.lv eq 'unreceived'}">selected="selected"</c:if>>unreceived</option>
			<option value="primary" <c:if test="${i.lv eq 'primary'}">selected="selected"</c:if>>초</option>
			<option value="middle" <c:if test="${i.lv eq 'middle'}">selected="selected"</c:if>>중</option>
			<option value="high" <c:if test="${i.lv eq 'high'}">selected="selected"</c:if>>고</option>
		</select>
		</td>
			<td>
				<select class="rig_select" id="rig_select${s.index}"">
				<option value="F" <c:if test="${i.right eq 'F'}">selected="selected"</c:if>>F</option>
				<option value="T" <c:if test="${i.right eq 'T'}">selected="selected"</c:if>>T</option>
				</select>
			</td>
			<td>
				<input type="button" class="change_Tinfo" id="${s.index}" value="change">
			</td>
</c:forEach>
</table>
