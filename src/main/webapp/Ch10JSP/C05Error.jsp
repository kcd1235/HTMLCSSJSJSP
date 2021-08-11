<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR Page</title>
</head>
<body>
<h3>나눗셈 에러발생</h3>
다음과 같은 예외가 발생하였습니다
<%=exception.getMessage() %>


</body>
</html>