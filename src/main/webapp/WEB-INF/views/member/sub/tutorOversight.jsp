<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/member/sub/tutorOversight.css">

	<div class ="admin_page_search">
					<form name="frm_search" id="frm_search" method="post">
						<input type="hidden" name="curPage" id="curPage">
						<!-- 페이징 넘어갈 때 처음 검색한 find값 ${listInfo.find }가져오기 -->
						<input type="hidden" id="find_value" value="${listInfo.find }">
							<select name="find" id="find">
								<option value="id">ID</option>
								<option value="lv">LV</option>
								<option value="right">RIGHT</option>
							</select>
							<!-- 페이징 넘어갈 때 처음 검색한 search값 ${listInfo.search }로 가져오기 -->
						<input type="text" name="search" value="${listInfo.search }" id="search">
						<input type="button" id="tfsbtn" value="SEARCH">
					</form>
				</div>
				
<table id="tutorinfo_table">
	<tr class="tr_cs">
		<th class="id_th" id="id_header">id</th>
		<th>lv</th>
		<th>right</th>
		<th>change</th>
		<th>delete</th>
	</tr>
	<c:forEach items="${data}" var="i" varStatus="s">
	<tr>
		<td class="id_th" id="tutoids${s.index}" title="${i.id}">${i.id}
		</td>
	
		<td>
			<select class="lv_select" id="lv_select${s.index}">
				<option value="unreceived" <c:if test="${i.lv eq 'unreceived'}">selected="selected"</c:if>>unreceived</option>
				<option value="primary"  <c:if test="${i.lv eq 'primary'}">selected="selected"</c:if>>primary</option>
				<option value="middle" <c:if test="${i.lv eq 'middle'}">selected="selected"</c:if>>middle</option>
				<option value="high" <c:if test="${i.lv eq 'high'}">selected="selected"</c:if>>high</option>
			</select>
		</td>
		<td>
			<select class="rig_select" id="rig_select${s.index}">
				<option value="F" <c:if test="${i.right eq 'F'}">selected="selected"</c:if>>F</option>
				<option value="T" <c:if test="${i.right eq 'T'}">selected="selected"</c:if>>T</option>
			</select>
		</td>
		<td>
			<input type="button" class="change_Tinfo" id="${s.index}" value="change">
		</td>
			<td>
				<input type="button" class="tutor_Delete" id="${i.id}" value="removal">
			</td>
	</tr>
	</c:forEach>
</table>
	<div id="admin_Tpagelist">
						<!-- 페이징목록  -->
		<c:if test="${listInfo.curBlock > 1 }">
			<span class="gooh" id="${listInfo.startNum-1}">[이전]</span>
		</c:if>
		<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum }" var="i">
			<span class="gooh" id="${i}">${i}</span>
		</c:forEach>
		<c:if test="${listInfo.curBlock < listInfo.totalBlock}">
			<span class="gooh" id="${listInfo.lastNum+1}">[다음]</span>
		</c:if>
						
	</div>