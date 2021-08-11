<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1 Scanner 로부터 단수를 입력받아 해당 단수를 웹페이지 출력(input type=text에 단계 값 삽입)<br>
2 모든 단수(2-9단) 웹페이지 출력<br>

<%
	for(int i=2;i<10;i++)
	{
		for(int j=1;j<10;j++)
		{
%>
			<%=i%> x <%=j%> = <%=i*j %><br>
<%
		}
		%>
			<br>
		<%
	}
%>







</body>
</html>