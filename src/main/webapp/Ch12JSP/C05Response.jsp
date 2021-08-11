<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	JSP 페이지에서 특정한 작업을 수행한 후 지정한 페이지로 이동하고 싶을때
	response.sendRedirect()함수를 사용한다
	ex) 게시판에 글을 저장한 이후에 목록 페이지로 바로 이동
 -->

<%
	response.sendRedirect("C06Page.jsp");
%> 

</body>
</html>










