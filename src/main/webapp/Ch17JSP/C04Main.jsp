<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>MAIN PAGE</h1>
<%
	String userid = request.getParameter("userid");

%>
<%=userid %> 님 환영합니다<br>
세션ID : <%=session.getId() %><br>
세션객체 ID추출 : <%=session.getAttribute("idKey") %><br>
세션부여 시간 : <%=session.getMaxInactiveInterval() %><br>

</body>
</html>