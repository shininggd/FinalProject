<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:forEach items="${list }" var="i" varStatus="s">
					<li><a href="#" draggable="false"><div class="img_size"><figure><img style="width: 48%; height: 100%; float: right;" src="<%=application.getContextPath()%>/resources/img/study/upload/${i.fname}" draggable="false"></figure>
		            <div class="banner_content">	
							<div class="banner_top_text"><span class="area">${i.location }</span><span class="banner_bar"></span><span class="level">${i.category }</span><span class="banner_bar"></span><span class="level">${i.lv }</span></div>
							<a href="./study/studyView?num=${i.num }&tid=${i.tid }" ><div class="banner_title">${i.title} </div></a>
							<div class="banner_bottom_text"><span class="price_value"><fmt:formatNumber type="currency" currencySymbol="">${i.price }</fmt:formatNumber>원</span><span class="price_unit"><fmt:formatDate value="${i.sDate }" pattern="MM/dd"/>-<fmt:formatDate value="${i.lDate }" pattern="MM/dd"/></span></div>
							
						</div>	</div></a></li>
		           
</c:forEach>
