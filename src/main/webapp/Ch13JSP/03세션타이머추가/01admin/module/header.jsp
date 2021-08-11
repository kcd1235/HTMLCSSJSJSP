<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<a href="C01Main.jsp"><img src="" ></a> 
<ul>
	<li><span id=timer></span>&nbsp;초&nbsp;|</li>
	<li><a href="#">메뉴설정</a>&nbsp;&nbsp;|</li>
	<li>&nbsp;&nbsp;<a href="01admin/C03logpage.jsp">로그조회</a>&nbsp;&nbsp;|</li>
	<li>&nbsp;&nbsp;<a href="#">회원관리</a>&nbsp;&nbsp;|</li>
	<li>&nbsp;&nbsp;<a href="#">본문수정</a>&nbsp;&nbsp;|</li>
	<li>&nbsp;&nbsp;<a href="../C04Logout.jsp">로그아웃</a></li>
</ul>
<%@ include file="timer.jsp" %>

</body>
</html>