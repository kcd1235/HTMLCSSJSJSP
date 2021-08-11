<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.util.*" %>
	<%
		ArrayList<String> list=(ArrayList<String>)request.getAttribute("list");
		for(int i=0;i<list.size();i++){
			out.println("업로드된 파일명 : "+list.get(i)+"<br>");
		}
	%>
</body>
</html>