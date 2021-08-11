<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	PageContext객체는 다른 내장 객체를 얻어내거나
	현재페이지의 요청과 응답의 제어권을 다른 페이지로 넘겨주는 데 사용
 -->
 
 <%
 	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
 %>
 
 request내장객체와 pageContext.getRequest()의 동일 여부 : <%=(request==httpRequest) %><br>
 <%
 	pageContext.getOut().println("OUT내장객체를 PageContext를 통해서 가져와서 사용<br>");
 %>
 
 
 
 
 
</body>
</html>






