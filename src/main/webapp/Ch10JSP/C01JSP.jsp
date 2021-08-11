<%@ page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
info="JSP TEST PAGE!!"
%>
    
    
<!--  
page : 페이지 지시자
language : JSP페이지의 스크립트 요소에서 사용할 언어를 지정(기본값 : Java)
contentType:JSP페이지의 내용이 어떤 형태로 출력을 할것인지 MIME형식으로
브라우저에게 알려줌(기본값 : text/html , text : 메시지타입(문자인코딩을 지원)
								   html : 서브타입(하위카테고리)
info :현재 페이지를 설명 

								   


 
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%=this.getServletInfo() %>


</body>
</html>