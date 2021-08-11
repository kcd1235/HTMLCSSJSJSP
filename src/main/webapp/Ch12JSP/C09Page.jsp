<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>C09PageContext로부터 포워딩된 페이지</h3>
<%
	pageContext.include("C09-2Page.jsp");
%>

</body>
</html>