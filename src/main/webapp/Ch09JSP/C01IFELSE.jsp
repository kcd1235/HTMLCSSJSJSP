<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	String msg=null;
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	if(color.equals("blue"))
	{
		msg="파랑";
	}
	else if(color.equals("red"))
	{
		msg="빨강";
	}
	else if(color.equals("orange"))
	{
		msg="주황";
	}
	else
	{
		color="lightgray";
		msg="기타";
	}
%>


<body bgcolor=<%=color %>>


<b><%=name %></b> 님이 좋아하는 색상은 <b><%=msg %></b> 입니다



</body>
</html>