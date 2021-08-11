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
	String cookieName="myCookie";
	Cookie cookie = new Cookie(cookieName,"apple");	//쿠키객체생성(쿠키명,쿠키값);
	Cookie cookie2 = new Cookie("myCookie2","Melon");
	cookie.setValue("WaterMelon"); //쿠키값 변경
	cookie.setMaxAge(60);	// -1(기본) : 파일이 생성되지 않음. 브라우저 종료될때까지 유지
							// 0 : 쿠키 삭제
							// 60*60 : 1시간
							// 60*60*10 : 10시간
							// 60*60*24 : 하루.. 
	response.addCookie(cookie);	//response 패킷에 쿠키 추가
	response.addCookie(cookie2);
%>
<h1>쿠키 생성 완료!</h1>
쿠키 내용 확인은 <a href="C01TasteCookie.jsp">여기를 클릭하세요</a>


</body>
</html>