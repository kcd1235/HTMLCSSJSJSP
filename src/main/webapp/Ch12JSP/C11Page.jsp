<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<!-- 
Page 내부 객체는 jsp페이지 그 자체를 나타내는 객체 입니다
그래서 jsp 페이지 내에서 page 객체는 this 키워드로 참조할 수 가 있습니다
 -->
<%@page info="페이지 정보~" %>

<%
	out.println(this.getServletInfo()+"<br>");
	out.println(this.getServletName()+"<br>");
	out.println(this.hashCode()+"<br>");
%> 
 

 