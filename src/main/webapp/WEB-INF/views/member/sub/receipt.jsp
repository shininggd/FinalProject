<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	<form>
		<fieldset>
			<legend><h3>결제 영수증</h3></legend>
				<table>
					<tr>
						<td>강의 : </td>
						<td colspan="">${pdto.product}</td>
					</tr>
					<tr>
						<td>튜터 : </td>
						<td colspan="">${pdto.tid}</td>
					</tr>
					<tr>
						<td>결제금액 : </td>
						<td>${pdto.price }</td>
					</tr>
					<tr>
						<td>결제정보 : </td>
						<c:if test="${pdto.type eq '무통장입금'}">
						<td>무통장 입금/${pdto.bank}</td>
						</c:if>
						
						<c:if test="${pdto.type eq '카드'}">
						<td>카드 결제/${pdto.cnumber}</td>
						</c:if>
						<c:if test="${pdto.type eq '휴대폰'}">
						<td>휴대폰 결제/${pdto.pnumber}</td>
						</c:if>
					</tr>
					<tr>
						<td>결제일 : </td>
						<td>${pdto.p_date}</td>
					</tr>
				</table>
			</fieldset>
		</form>
