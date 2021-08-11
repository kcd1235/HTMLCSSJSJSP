<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Forward Tag의 포워딩 되기 전의 페이지입니다
어떤 작업을 한 다음

<jsp:forward page="C02ForwardTag2.jsp" /><br>

forward태그에 의해서 해당 페이지는 버퍼공간 초기화가 되기 때문에
이페이지는 출력이 되지 않습니다!...


</body>
</html>