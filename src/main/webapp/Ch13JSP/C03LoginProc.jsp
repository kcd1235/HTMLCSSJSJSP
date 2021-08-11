<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="counter" class="Ch13.Counter" scope="application" />

<%
	String id = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	session.setAttribute("idKey", id);
	session.setAttribute("pwdKey", pwd);
	counter.setCount();
%>
<script>
location.href="C03MainPage.jsp"
</script>

</body>
</html>