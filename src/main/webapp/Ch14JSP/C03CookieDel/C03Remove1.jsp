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
	Cookie cookies[] = request.getCookies();
	for(int i=0;i<cookies.length;i++)
	{
		if(cookies[i].getName().equals("prodName"))
		{
			cookies[i].setMaxAge(0);		//쿠키 유효시간 설정(0 : 파기)
			response.addCookie(cookies[i]); //클라이언트로 쿠키삭제 전달
		}
		
	}

%>
<a href="C03ShowCookie.jsp">이전으로</a>
</body>
</html>