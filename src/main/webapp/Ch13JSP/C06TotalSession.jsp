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
<%@page import="java.util.*, Ch13.*" %>
<%
	Map<String,Account> map = SaveSess.getSession();
	Set<String> set = map.keySet();
	Iterator<String> iter = set.iterator();
	out.println("현재 총 접속 인원 : " + map.size() +" 명");
	
	while(iter.hasNext())
	{
		out.println("<hr>");
		String key = iter.next();
		Account tmp = map.get(key);
		out.println("SID : " + tmp.getSID() + "<br>");
		out.println("ID : " + tmp.getId() + "<br>");
		out.println("PW : " + tmp.getPwd() + "<br>");
		out.println("<hr>");
	}
	

%>


</body>
</html>