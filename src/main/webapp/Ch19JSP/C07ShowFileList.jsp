<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*" %>
	<%
		File Dir=new File("c:\\UPLOAD");
		File [] files=Dir.listFiles();
		for(int i=0;i<files.length;i++){
			%>
			<a href="/HTMLCSSJSJSP/C05DownloadFile?filename=<%=files[i].getName()%>"><%=files[i].getName() %></a><br>
			<%
		}
	%>
</body>
</html>