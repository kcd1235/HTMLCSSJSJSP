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
	int n1=40;
	int n2=20;
	if (n1>n2)
	{
%>
		큰수 : <%=n1 %><br>
<%
	}
	else
	{
%>
		큰수 : <%=n2 %><br>
<%	
	}
%>
<hr>

<%

	for(int i=0;i<10;i++)
	{
%>
		HelloWorld<br>
<%
	}
%>
<hr>






</body>
</html>