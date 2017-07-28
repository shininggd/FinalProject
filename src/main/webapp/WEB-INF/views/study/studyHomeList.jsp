<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:forEach items="${list }" var="i"  varStatus="s" >


					<div class="listBox aBlock">
						<div class="boxTop">
						${i.location } | ${i.lv }
						</div>
						<div class="boxMiddle_1">
							<a href="./study/studyView?num=${i.num }&tid=${i.tid }" ><span class="middleTitle">${i.title }</span></a>
						</div>
						<div class="boxMiddle_2">
							<fmt:formatNumber type="currency" currencySymbol="">${i.price }</fmt:formatNumber>원 <span class="people">${i.people }명</span>
							<a href="./feedback/studyPage?snum=${i.num }"><img class="houseImage" src="<c:url value="/resources/img/study/houseIcon.jpg"/>"></a> 
						</div>
						<div class="boxBottom">
							<c:if test="${i.fname == null }">
							<img alt="Learn&Run" class="imgFView2" src="<c:url value="/resources/img/study/learnRun.jpg"/>">
							</c:if>
							<c:if test="${i.fname != null }">
							<img class="imgFView2" src="<c:url value="/resources/img/study/upload/${i.fname}"/>">
							</c:if>
						</div>
						
						
					</div>
					
					<c:if test="${s.index%3 eq 2 }">
						
						<hr>
					</c:if>
						
							
				</c:forEach>