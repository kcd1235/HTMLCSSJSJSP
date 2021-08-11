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
	String SPage = request.getParameter("SelectPage");

	if(SPage.equals("APage"))
	{
	%>
		<jsp:forward page="C03APage.jsp" />
	<%
	}
	else if(SPage.equals("BPage"))
	{
		%>
		<jsp:forward page="C03BPage.jsp" />
		<%
	}
	else
	{
		%>
		<jsp:forward page="C03CPage.jsp" />
		<%
	}
%>











</body>
</html>