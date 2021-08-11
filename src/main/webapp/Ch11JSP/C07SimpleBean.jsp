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
page : 해당 JSP페이지 내에서만 존재
request : 사용자의 요청을 처리하는 동안에만 존재
session : 사용자가 접속하여 접속이 종료되기 전까지 존재
application : 해당 어플레이션이(톰캣) 동작하는 동안에만 존재 
-->

<jsp:useBean id="test" class="Ch11.C01SimpleBean" scope="page" />

<jsp:setProperty name="test" property="message1" value="메세지1입니다" />
<jsp:setProperty name="test" property="message2" value="메세지2입니다" />
 
Message1 : <jsp:getProperty name="test" property="message1" /> <br>
Message2 : <jsp:getProperty name="test" property="message2" /> <br>
 
 
 
 
 
 
 
 

</body>
</html>