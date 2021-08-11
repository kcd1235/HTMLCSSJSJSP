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
	
	//세션설정
	session.setAttribute("idKey", userid);
	session.setAttribute("pwdKey",pwd);
	
	//쿠키설정
	int cnt=0;
	Cookie[] list = request.getCookies();
	for(int i=0;list!=null && i<list.length;i++)
	{
		if(list[i].getName().equals(userid))
		{
			cnt=Integer.parseInt(list[i].getValue());
		}
	}
	cnt++;
	Cookie c1 = new Cookie(userid,cnt+"");
	c1.setMaxAge(60*60*24*100);
	response.addCookie(c1);
	response.sendRedirect("C04MainPage.jsp");
%>





</body>
</html>