<!-- 
액션태그
어떤 동작 또는 Action 이 일어나는 시점에 페이지와 페이지 사이에
제어권을 이동시킬수 있는 태그

액션태그의 종류
include 
forward
plug-in
useBean
setProperty
getProperty


include 액션 태그
include 지시자 와 함께 다른 페이지를 현재 페이지에 포함시킬수 있는 기능을 가지고 있다
include 지시자는 단순하게 소스의 내용을 가져와 컴파일(정적처리)
include 액션 태그 페이지의 처리 결과를 포함시킨다(동적처리)
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method=post action="C01JSPIncludeTag.jsp">
	TOP내용 : <input type=text name="TopVal"><br>
	TOP반복 : <input type=text name="TopNum"><br>
	Fot내용 : <input type=text name="FotVal"><br>
	Fot반복 : <input type=text name="FotNum"><br>
	<input type=submit value="보내기">
</form>








</body>
</html>