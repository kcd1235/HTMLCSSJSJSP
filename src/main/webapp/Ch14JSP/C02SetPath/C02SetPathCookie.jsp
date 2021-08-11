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
	//setPath()  : 클라이언트의 쿠키를 서버의 어느 페이지에서 처리할 건지를 결정
	// '/' 로 설정하면 현재 여기서 만든 모든 페이지에서 클라이언트의 쿠키를 처리
	// 특정 URL경로를 지정하면 해당 경로에서만 쿠키를 수신하여 처리
	
	Cookie c1 = new Cookie("COOKIE1","VALUE1");
	c1.setPath("/");	//모든 페이지에서 확인가능
	response.addCookie(c1);
	
	Cookie c2 = new Cookie("COOKIE2","VALUE2");
	c2.setPath("./");	//현재 위치의 페이지에서만 확인가능
	response.addCookie(c2);
	
	Cookie c3 = new Cookie("COOKIE3","VALUE3");
	c3.setPath("/HTMLCSSJSJSP/Ch14JSP/C01Basic/"); //해당경로에서만 확인 가능 
	response.addCookie(c3);
%>
<h1>쿠키 생성 완료!</h1>

</body>
</html>