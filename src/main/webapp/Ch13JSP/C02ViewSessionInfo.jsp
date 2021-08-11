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
	String pwd =(String)session.getAttribute("pwdKey");
	out.println("ID : "+id+"<br>");
	out.println("PW : "+pwd+"<br>");
	out.println("SID : "+session.getId());
%>
<hr>
<%@page import="java.util.*" %>
<%
	Enumeration en = session.getAttributeNames();
	while(en.hasMoreElements())
	{
		String key=(String)en.nextElement();
		String value=(String)session.getAttribute(key);
		out.println(value+"<br>");
	}


%>








</body>
</html>