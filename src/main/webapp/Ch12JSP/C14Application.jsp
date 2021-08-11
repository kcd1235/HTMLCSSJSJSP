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
	String IMGDIR = application.getInitParameter("imgDir");
	String SERVERIP = application.getInitParameter("ServerIP");
%>
이미지 경로 : <%=IMGDIR %><br>
서버  IP  : <%=SERVERIP %><br>

</body>
</html>