<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Enumeration<String> en = request.getHeaderNames();
	while(en.hasMoreElements())
	{
		String headerName = en.nextElement();
		String headerValue = request.getHeader(headerName);
		out.println(headerName +" : " + headerValue);
		out.println("<br><br>");
	}
%>


</body>
</html>