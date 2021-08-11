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
포워딩 페이지 구성
요청과 응답에 대한 제어권을 다른 페이지로 넘기더라도 브라우저에 표시되는 주소가 유지되는 방식
현재 페이지의 요청과 응답의 정보에 대한 제거원만이 다른페이지로 넘어감
요청 정보와 응답 정보는 유지
 
 [참고]
 리다이렉트 방식(response내장 객체)
 브라우저에 표시되는 주소가 바뀌는 방식
 이동할 페이지로 요청과 응답 객체를 새로 생성하여 전송
 response내장객체의 sendRedirect메서드를 사용 
 -->
 
 <%
 
 	pageContext.forward("C09Page.jsp");
 %>
 <!-- 
 forward : 제어권을 영구적으로 전달
 include : 제어권을 임시적으로 전달
  -->
 
 




</body>
</html>