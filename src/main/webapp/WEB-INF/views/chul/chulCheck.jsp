<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/basic_table.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/chul/chulCheck.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/temp/HF.css">
<title>Insert title here</title>
<script type="text/javascript">
dodo()

$(function(){
var clock = new Date(); 
var year = clock.getFullYear(); 
var month = clock.getMonth()+1;
$("#calan_show").html(year+"년"+month+"월");
	
	$(".Cgoo").click(function(){
		
	});
	
	$("#ConSB").click(function(){

		$("#chulfrm").submit();
		
	});
});

function dodo() {
	if("${message}"!=""){
	alert("${message}");
	}
}

</script>
</head>
<body>
<c:import url="../temp/header.jsp"></c:import>
	<section id="main_section">
	
		<div class="main_container">
			<div id="sub_tit"><h3>출석체크!</h3></div>
			<!-- 년월 -->
			<p id="calan_show"></p>
			<!-- 일 -->
			<div>
				<table id="year_month_day">
					<tr>
						<td><a>1</a></td>
	 		  			<td><a>2</a></td>
	   					<td><a>3</a></td>
						<td><a>4</a></td>
	   					<td><a>5</a></td>
	  					<td><a>6</a></td>
	   					<td><a>7</a></td>
	   					<td><a>8</a></td>
	   					<td><a>9</a></td>
	   					<td><a>10</a></td>
						<td><a>11</a></td>
	   					<td><a>12</a></td>
	   					<td><a>13</a></td>
	   					<td><a>14</a></td>
	   					<td><a>15</a></td>
	   					<td><a>16</a></td>
	   					<td><a>17</a></td>
	   					<td><a>18</a></td>
	  					<td><a>19</a></td>
	   					<td><a>20</a></td>
	   					<td><a>21</a></td>
	   					<td><a>22</a></td>
	   					<td><a>23</a></td>
	   					<td><a>24</a></td>
	   					<td><a>25</a></td>
	   					<td><a>26</a></td>
	   					<td><a>27</a></td>
	   					<td><a>28</a></td>
	   					<td><a>29</a></td>
	   					<td><a>30</a></td>
	   					<td><a>31</a></td>			
			</table>
			</div>
			<div>
			<form id="chulfrm" action="chulCheck" method="post">
				<input type="text" name="writer" value="${cheid}" readonly="readonly">
				<textarea rows="4" cols="80" name="contents"></textarea>
				<input type="button" id="ConSB" value="출석하기">
			</form>
			</div>
			<!-- 작성된 글 목록 -->
			<div id="chullist">
			<table id="chullist_table">
						<c:forEach items="${result}" var="i">
							<tr>
								<td>${i.writer}</td>
								<td>${i.contents}</td>
								<td>${i.reg_date}</td>
								<td>
								<%-- <c:if test="${i.writer eq '${cheid}'}"> 
								<span>X</span>
								</c:if> --%>
								</td>
							</tr>
						</c:forEach>
			</table>
			</div>
			
			<!-- paeging -->
			<div id="Chulpageing">
		<c:if test="${listInfo.curBlock > 1 }">
			<span class="Cgoo" id="${listInfo.startNum-1}">[이전]</span>
		</c:if>
		<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum }" var="i">
			<span class="Cgoo" id="${i}">${i}</span>
		</c:forEach>
		<c:if test="${listInfo.curBlock < listInfo.totalBlock}">
			<span class="Cgoo" id="${listInfo.lastNum+1}">[다음]</span>
		</c:if>		
			</div>
		</div>
		
	</section>
<c:import url="../temp/footer.jsp"></c:import>
</body>
</html>