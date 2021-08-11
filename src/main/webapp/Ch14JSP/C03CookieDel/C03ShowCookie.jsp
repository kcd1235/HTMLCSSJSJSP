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
	Cookie cookies[] = request.getCookies();
	for(int i=0;i<cookies.length;i++)
	{
		out.println("쿠키명 : " + cookies[i].getName()+"<br>");
		out.println("쿠키값 : " + cookies[i].getValue() + "<br><br>");
	}
%>
<br>
<a href="C03Remove1.jsp">쿠키 제거(제품명)</a><br>
<a href="C03Remove2.jsp">쿠키 제거(가격)</a><br>


</body>
</html>