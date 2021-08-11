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
	String ServerInfo = application.getServerInfo();
	application.setAttribute("KEY1","VALUE1");
	application.setAttribute("KEY2","VALUE2");
	
	String value1 = (String)application.getAttribute("KEY1");
	String value2 = (String)application.getAttribute("KEY2");
%>

서블릿 컨테이너의 이름과 버전 : <%=ServerInfo %><br>
값 1 : <%=value1 %><br>
값 2 : <%=value2 %><br>




</body>
</html>
<!-- 
생성 / 소멸 	: 컨테이너의 생명주기와 동일
사용 범위 		: 프로젝트 내 모든 객체에서 접근 가능

어플리케이션의 내/외부의 여러 환경 정보를 담고 있는 객체
내장객체 중 상단위치에 있는 객체
처음 컨테이너가 구동될 때 단 하나의 객체만 생성
기본적으로 서버에 대한 정보나 서블릿에 대한 정보들을 가지고 있는데
어플리케이션(프로젝트 단위) 내 모든 JSP/서블릿들이 공유하는 객체
그렇기 때문에 페이지간(or 서블릿간)에 데이터를 전달하는데 사용되는 운송수단

application 주요 메서드
void setAttribute(String name, Object o) 	application 객체에 추가 객체를 저장
Object getAttribute(String name)			application 개체에 추가된 객체를 가져옴
void removeAttribute(String name)			application 객체에 특정 Attribute를 지움
String getServerInfo()						컨테이너 이름과 버전을 리턴
void log(String msg)						제공된 문자열을 서블릿 로그 파일에 기록
 -->
 
 
 
 
 
 