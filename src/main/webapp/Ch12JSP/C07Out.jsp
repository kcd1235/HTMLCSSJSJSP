<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    buffer="5kb"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
abcd<br>
<%
	int totalBuffer = out.getBufferSize();		//버퍼 전체 사이즈
	int remainBuffer = out.getRemaining();		//버퍼 남은 사이즈
	int useBuffer = totalBuffer - remainBuffer;	//버퍼 사용한 사이즈
%>
전체 버퍼 크기 : <%=totalBuffer %><br>
남은 버퍼 크기 : <%=remainBuffer %><br>
사용 버퍼 크기 : <%=useBuffer %><br>



</body>
</html>