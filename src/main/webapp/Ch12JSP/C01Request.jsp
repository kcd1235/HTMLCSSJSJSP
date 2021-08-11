<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>x	
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String protocol = request.getProtocol();				/* 프로토콜 종류 확인 */
	String serverName = request.getServerName();			/* 서버이름 확인 */
	int serverPort = request.getServerPort();				/* 서버 포트 확인 */
	String remoteAddr = request.getRemoteAddr();			/* 원격 주소 확인 */
	String remoteHost = request.getRemoteHost();			/* 원격 이름 확인 */
	String method = request.getMethod();					/* 요청 메서드 확인 */
	StringBuffer requestURL = request.getRequestURL();		/* URL 경로 확인 */
	String userbrowser = request.getHeader("User-Agent");	/* 원격 브라우저 종류 확인 */
	String fileType = request.getHeader("Accept");			/* 원격 브라우저 지원 파일 확인 */
%>
<h1>Request Example</h1>
프로토콜 : <%=protocol %><br>
서버이름 : <%=serverName %><br>
포트번호 : <%=serverPort %><br>
ClientIP : <%=remoteAddr %><br>
ClientHost : <%=remoteHost %><br>
요청 method : <%=method %><br>
요청 URL : <%=requestURL %><br>
요청 브라우저종류 : <%=userbrowser %><br>
브라우저가 지원하는 filetype : <%=fileType %><br>












</body>
</html>