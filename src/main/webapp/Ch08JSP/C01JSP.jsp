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
	선언문 
	JSP페이지 내에서 사용될 변수나 매서드를 선언할 수 있는 영역
	선언문에서 지정된 변수는 클래스의 멤버변수
	선언문에서 지정된 함수는 클래스의 멤버함수가 된다
-->

<%!  
	//변수추가
	String hello = "Hello World!!";
	//매서드 추가
	String str = "Let's Start JSP";
	public String Func()
	{
		return str;
	}
%>

변수 hello : <%=hello %><br>
함수 Func(): <%=Func() %><br>




















</body>
</html>