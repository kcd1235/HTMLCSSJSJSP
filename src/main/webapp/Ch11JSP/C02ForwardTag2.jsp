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
	String id=request.getParameter("id");
	String pwd =request.getParameter("pwd");
%>

입력한 ID : <%=id %><br>
입력한 PW : <%=pwd%><br>


</body>
</html>