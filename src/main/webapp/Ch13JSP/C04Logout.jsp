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
	String id = (String)session.getAttribute("idKey");
	session.invalidate();	//세션 초기화(==제거);
%>
<%=id %> 님이 로그아웃 되었습니다<br>

<a href="C04Login.jsp">로그인 화면으로 이동</a>



</body>
</html>