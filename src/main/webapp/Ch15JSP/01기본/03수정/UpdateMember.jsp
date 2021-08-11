<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="DBUpdate.jsp">
<table>
	<tr>
		<td>번호(조건)</td>
		<td><input type=text name=id></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type=text name=name></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input type=text name=addr></td>
	</tr>
	<tr>
		<td><input type=submit value=정보수정></td>
		<td></td>
	</tr>
</table>
</form>
</body>
</html>