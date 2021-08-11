<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 정보</h3>
<jsp:useBean id="stdDao" class="Ch16.stdDAO" />
<%@page import="Ch16.stdDTO,java.util.*" %>

<%
	ArrayList<stdDTO> list = stdDao.select();
	for(int i=0;i<list.size();i++)
	{
		out.println("ID   : " + list.get(i).getId() + "<br>");
		out.println("Name : " + list.get(i).getName() + "<br>");
		out.println("Addr : " + list.get(i).getAddr() + "<br><br>");
	}


%>






</body>
</html>





