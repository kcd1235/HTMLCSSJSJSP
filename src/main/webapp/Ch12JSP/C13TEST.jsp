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
	String value1 = (String)application.getAttribute("KEY1");
	String value2 = (String)application.getAttribute("KEY2");
%>
값 1 : <%=value1 %><br>
값 2 : <%=value2 %><br>


</body>
</html>