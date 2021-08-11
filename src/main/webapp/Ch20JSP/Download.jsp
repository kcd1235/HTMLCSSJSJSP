<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Ch20.BoardMgr" %>
	<%
		BoardMgr bMgr=new BoardMgr();
		bMgr.downLoad(request,response,out,pageContext);
	%>
</body>
</html>