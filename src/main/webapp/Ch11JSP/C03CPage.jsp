<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>C PAGE</h3>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
ID : <%=id %><br>
PW : <%=pwd %><br>
</body>
</html>