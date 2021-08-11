<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>멤버가입확인</h1>
<%
	String userid = request.getParameter("userid");
%>
<%=userid %> 님 가입 완료!!<br>
<a href="/HTMLCSSJSJSP/Ch18JSP/VIEW/index.jsp">첫번째페이지로 이동</a>

</body>
</html>