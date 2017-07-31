<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>온라인 강의 페이지</h1>
<h2>${room_id}</h2>


<script type="text/javascript">
if (document.location.protocol == 'http:') {
    document.location.href = document.location.href.replace('http:', 'https:');
}
</script>
</body>
</html>