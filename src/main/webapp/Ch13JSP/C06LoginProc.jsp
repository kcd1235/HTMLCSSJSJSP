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
%>

<script>
alert("로그인 완료! 메인페이지로 이동합니다.");
location.href="C06MainPage.jsp"
</script>

</body>
</html>