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
 해당 페이지 내에서만 사용가능한 영역 지정
 지역변수가 생성된다
 함수생성 불가능
 자바 흐름제어문(or 연산) 사용 가능 
 -->

<%
	String str1="Scriptlet 테스트";
	String str2="Local var";
	
	int a=0;
	a++;
 	//public int addA()
	//{	
	//	return a;
	//} */
	
%>
스크립틀릿 : <%=str1 %><br>
스크립틀릿 : <%=str2 %><br>
a값 확인  : <%=a %><br>

</body>
</html>









