<%@ page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
buffer="1kb"
autoFlush="false"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>현재 autoFlush 상태 =<%=out.isAutoFlush() %></h2>

<% 
	for(int i=0;i<50;i++)
	{
		
		%>
		<%=i %>
		<%
		out.println(out.getRemaining());
		out.println("<br>");
		if(out.getRemaining()<50)
		{
			out.println("<br>");
			out.flush();
		}
	}
	
	

%>
<hr size=5 color="red">
현재 출력 버퍼 크기 : <%=out.getBufferSize() %> byte<br>
남은 출력 버퍼 크기 : <%=out.getRemaining() %> byte<br>







</body>
</html>