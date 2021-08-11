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
<%@page import="java.util.*,Ch13.*" %>
<%
	String id = (String)session.getAttribute("idKey");
	session.invalidate();	// 세션 초기화(==제거);
%>

<%=id %> 님이 로그아웃 되었습니다<br>
<a href="C06Login.jsp">로그인 화면으로 이동</a>



</body>
</html>