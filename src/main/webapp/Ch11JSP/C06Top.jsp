<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getParameter("param") %> TOP 확인
<table width=100% >
	<tr bgcolor=lightgray>
		<td><a href="#">메뉴1</a></td>
		<td><a href="#">메뉴2</a></td>
		<td><a href="#">메뉴3</a></td>
		<td><a href="#">메뉴4</a></td>
	</tr>
</table>

</body>
</html>