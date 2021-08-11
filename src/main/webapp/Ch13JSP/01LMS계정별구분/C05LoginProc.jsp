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
			<jsp:forward page="01admin/C01Main.jsp" />	<!-- 관리자 페이지로 이동-->
		<%	
	}
	else
	{
		%>
			<jsp:forward page="02users/C01Main.jsp" /> <!-- 일반 계정으로 이동-->
		<%	
	}
	
%>


</body>
</html>