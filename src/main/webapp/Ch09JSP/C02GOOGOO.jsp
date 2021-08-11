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
		String tmp = request.getParameter("dan");
		int dan = Integer.parseInt(tmp);
		for(int i=1;i<10;i++)
		{
	%>
			<%=dan%> x <%=i %> = <%=dan*i %><br>
	<%		
		}
	%>


</body>
</html>