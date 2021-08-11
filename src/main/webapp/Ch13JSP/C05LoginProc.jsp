<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="SaveSess" class="Ch13.SessionSave" scope="application" />

<%
	String id = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	session.setAttribute("idKey", id);
	session.setAttribute("pwdKey", pwd);
	session.setMaxInactiveInterval(60);
	String SID = session.getId();
	
	SaveSess.addSession(id, pwd, SID);
%>

<script>
location.href="C05MainPage.jsp"
</script>

</body>
</html>