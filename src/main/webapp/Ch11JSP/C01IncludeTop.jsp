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
	String TopVal = request.getParameter("TopVal");
	int TopNum = Integer.parseInt(request.getParameter("TopNum"));
	for(int i=0;i<TopNum;i++)
	{
		out.println(TopVal+"<br>");
	}
%>


</body>
</html>