<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<%@ include file="jsp/link.jsp" %>

<style>
content 
{
	width:1190px; 
	height:800px; 
	position:absolute; top:110px; left:0px; 
	margin:4px;
	border: 1px solid gray;
}
</style>

</head>
<body>

<header>
<jsp:include page="module/header.jsp" />
<a href="#">
<img src="설정.png" style="width:25px;height:25px;
position:absolute;top:-12px;left:980px;">
</a> 
</header>

<nav>
<jsp:include page="module/nav.jsp" />
<a href="#">
<img src="설정.png" style="width:25px;height:25px;
position:absolute; top:70px;left:1480px; z-index:5; 
">
</a> 
</nav>

<content></content>
<section></section>

<footer>
	<%@ include file="jsp/footerContents.jsp" %>
</footer>

</body>
</html>