<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이 페이지는 5초마다 새로고침이 됩니다
	<%
		response.setIntHeader("Refresh", 5);
	%>
	<br>
	<%=new java.util.Date() %>


</body>
</html>