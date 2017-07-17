<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table>
<tr>
	<th>id</th>
	<th>lv</th>
	<th>right</th>
</tr>
<c:forEach items="${data}" var="i" varStatus="s">
<tr>
<td>${i.id}</td>
	<td>
		<select id="lv_select${s.index}">
			<option value="unreceived">unreceived</option>
			<option value="elem">초</option>
			<option value="lmid">중</option>
			<option value="ltop">고</option>
		</select>
		</td>
			<td>
				<select id="rig_select${s.index}">
				<option value="F">F</option>
				<option value="T">T</option>
				</select>
			</td>
			<td>
				<input type="button" class="change_Tinfo" id="${s.index}" value="change">
			</td>
</c:forEach>
</table>

