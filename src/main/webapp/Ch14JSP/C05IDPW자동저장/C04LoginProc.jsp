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
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String idchk = request.getParameter("idchk");
	String pwdchk = request.getParameter("pwdchk");
	
	//세션설정
	session.setAttribute("idKey", userid);
	session.setAttribute("pwdKey",pwd);
	
	out.println("ID체크여부 : " + idchk+"<br>");
	out.println("PW체크여부 : " + pwdchk+"<br>");
	
	//쿠키설정
	Cookie c1 = new Cookie("idKey",userid);
	Cookie c2 = new Cookie("pwdKey",pwd);
	Cookie c3 = new Cookie("idChk",idchk);
	Cookie c4 = new Cookie("pwdChk",pwdchk);
	
	response.addCookie(c1);response.addCookie(c2);
	response.addCookie(c3);response.addCookie(c4);
	
	//메인페이지 이동 
	response.sendRedirect("C04MainPage.jsp");
%>





</body>
</html>