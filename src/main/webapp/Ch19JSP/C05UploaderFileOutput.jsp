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
		Part part=(Part)request.getPart("TESTFORM");
		String filename=(String)request.getAttribute("filename");
	%>
	폼이름 : <%=part.getName() %><br>
	파일명 : <a href="#"><%=filename %></a><br>
	파일크기 :<%=part.getSize() %><br> 	
	헤더명 : <%=part.getHeaderNames() %><br>
	헤더값 : <%=part.getHeader("content-disposition") %><br>
</body>
</html>