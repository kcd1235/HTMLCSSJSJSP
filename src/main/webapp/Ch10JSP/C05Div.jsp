<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
errorPage="C05Error.jsp"  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int value = Integer.parseInt(request.getParameter("value"));
	int num = Integer.parseInt(request.getParameter("divnum"));
	
	int result = value/num;
	out.println("나눗셈 결과 : " + result);
%>

</body>
</html>





