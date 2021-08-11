<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Multipart
웹 클라이언트가 요청을  보낼 때, http프로토콜의 바디부분에 데이터를 여러 부분으로 나누어서 보내는 기능
웹클라이언트가 서버에게 파일을 업로드할 때 HTTP 프로토콜의 바디부분에 파일 정보를 담아 전송을하는데
파일을 한 번에 여러 개 전송을 하게되면 BODY부분이 분할-연결되어 전송
이렇게 여러 부분으로 나누어서 전송되는 데이터를 Multipart data라고 한다. -->
	<form method=post action="/htmlcssjsjsp/C01MultipartHeader" enctype="multipart/form-data">
		Upload file : <input type="file" name=test><br>
		<input type="submit" value="upload">
	</form>
</body>
</html>