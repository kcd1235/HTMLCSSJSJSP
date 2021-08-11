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
			String adminID = config.getInitParameter("adminID");
			String adminPW = config.getInitParameter("adminPW");
		%>
		관리자 ID : <%=adminID %><br>
		관리자 PW : <%=adminPW %><br>


</body>
</html>

<!-- 
config 내부 객체
서블릿이 구동될때 web.xml에서 읽어온 초기화 정보를 가지고 있는 객체
web.xml 은 톰캣이 웹서버 구동시 읽어오는 파일
-->
 
 
 
 
 