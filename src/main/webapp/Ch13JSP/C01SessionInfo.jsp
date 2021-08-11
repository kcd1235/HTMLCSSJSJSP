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
	String id =(String)session.getAttribute("idKey");
	String pwd=(String)session.getAttribute("pwdKey");
	String SID=session.getId();	//세션ID 반환	
%>

세션 ID : <%=SID %><br>
계정 ID : <%=id%><br>
계정 PW : <%=pwd%><br>
세션 부여 시간 : <%=session.getMaxInactiveInterval() %>

</body>
</html>