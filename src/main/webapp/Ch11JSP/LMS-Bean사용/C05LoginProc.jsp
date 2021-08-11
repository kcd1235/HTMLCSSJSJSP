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
	String id = request.getParameter("userid");
	String pwd = request.getParameter("userpwd");
	if(id.equals("admin")&&pwd.equals("1234"))
	{
		%>
			<jsp:forward page="C01AdminMain.jsp" />
		<%	
	}
	else
	{
		%>
			<jsp:forward page="C01Main.jsp" />
		<%	
	}
	
%>


</body>
</html>