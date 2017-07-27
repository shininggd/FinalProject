<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<table id="chullist_table">
	<c:forEach items="${result}" var="i">
		<tr class="chulLIst_tr" style="border-bottom: 1px gray dashed;">
			<td class="chulWriter"><strong>${i.writer}</strong></td>
			<td class="chulContents">${i.contents}<span class="chulDate">${i.reg_date}</span></td>
			<td>
				<c:if test="${i.writer eq member.id }">
					<span>X</span>
				</c:if>
			</td>
		</tr>
	</c:forEach>
</table>
