<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="counter" class="Ch13.Counter" scope="application" />

현재까지 방문자 수 : <%=counter.getCount() %><br>
<br>
<a href="C03Logout.jsp">로그아웃</a>
</body>
</html>