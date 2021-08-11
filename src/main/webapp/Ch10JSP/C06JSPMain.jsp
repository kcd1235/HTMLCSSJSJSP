<!--  
include 지시자는 단순하게 소스의 내용이 텍스트 형태로 현재 페이지에 포함되어
컴파일 되어진다
include 지시자의 처리과정은 정적처리이다

처리시간 : JSP파일을 자바소스로 변환할 때 처리
기능 : 현재 페이지에 코드 삽입
데이터 전달 방법 : 페이지 내의 변수를 선언한 후 , 변수에 값 저장
용도 : 다수의 JSP페이지에서 공통으로 사용되는 코드나 저작권과 같은 문장을 삽입해야할 때
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="C06Header.jsp"  %>
메인 내용 부분입니다<br>
메인 내용 부분입니다<br>
메인 내용 부분입니다<br>
메인 내용 부분입니다<br>
<%@ include file="C06Footer.jsp"  %>



</body>
</html>