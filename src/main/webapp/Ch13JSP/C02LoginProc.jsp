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
	String pwd = request.getParameter("pwd");
	session.setAttribute("idKey", id);
	session.setAttribute("pwdKey", pwd);
	session.setAttribute("nameKey","홍길동");
	session.setAttribute("genderKey","남");
	
%>
<script>
location.href="C02ViewSessionInfo.jsp"
</script>

</body>
</html>