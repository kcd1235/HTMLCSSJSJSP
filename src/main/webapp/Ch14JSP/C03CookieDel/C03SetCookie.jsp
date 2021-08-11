<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie c1 = new Cookie("id","abcd");
	Cookie c2 = new Cookie("prodName","노트북");
	Cookie c3 = new Cookie("price", "2000000");
	
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);
%>
<h1>쿠키 생성 완료</h1>
<a href="C03ShowCookie.jsp">쿠키 확인</a>
</body>
</html>