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
	String FotVal = request.getParameter("FotVal");
	int FotNum = Integer.parseInt(request.getParameter("FotNum"));
	for(int i=0;i<FotNum;i++)
	{
		out.println(FotVal+"<br>");
	}
%>
</body>
</html>