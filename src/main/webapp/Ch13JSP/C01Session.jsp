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
	String id ="abcd";
	String pwd = "1234";
	
	session.setAttribute("idKey", id);	//세션객체에 추가할 속성(key):속성값(value) 저장
	session.setAttribute("pwdKey",pwd); //세션객체에 추가할 속성(key):속성값(value) 저장
	session.setMaxInactiveInterval(30);	//세션 유지 시간 30초 (기본 : 5분)
%>
세션이 생성되었습니다<br>
<a href="C01SessionInfo.jsp">세션 확인 페이지로 이동</a>


</body>
</html>