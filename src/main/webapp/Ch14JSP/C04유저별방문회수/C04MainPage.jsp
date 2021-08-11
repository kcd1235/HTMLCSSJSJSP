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
	Cookie cookies[] = request.getCookies();
	String LoginID = (String)session.getAttribute("idKey");
	for(int i=0;i<cookies.length;i++)
	{
		String key = cookies[i].getName();
		if(key.equals(LoginID))
		{
			String cnt = cookies[i].getValue();
			out.println("계정명 : " + LoginID+"<br>방문횟수 : " + cnt+"<br>");
		}
	}
%>
<br>
<a href="C04Logout.jsp">로그아웃</a>

</body>
</html>