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
	String col1 = request.getParameter("col1");
	String col2 = request.getParameter("col2");
	String col3 = request.getParameter("col3");
	String col4 = request.getParameter("col4");
%>
<fieldset style="width:400px;">
	<legend>태그 내 폼정보 삽입</legend>
<table border=1 width=300px height=300px>
	<tr>
		<td bgcolor=<%=col1 %>>1</td>
		<td bgcolor=<%=col2 %>>2</td>
	</tr>	
	<tr>
		<td bgcolor=<%=col3 %>>3</td>
		<td bgcolor=<%=col4 %>>4</td>
	</tr>

</table>
</fieldset>


</body>
</html>