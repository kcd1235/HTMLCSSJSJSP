<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<%@ include file="jsp/link.jsp" %>

</head>
<body>

<header>
<a href="C01Main.jsp"><img src="" ></a> 
<ul>
	<li><a href="#">회원가입</a>&nbsp;&nbsp;|</li>
	<li>&nbsp;&nbsp;<a href="#">로그인</a>&nbsp;&nbsp;|</li>
	<li>&nbsp;&nbsp;<a href="#">장바구니</a>&nbsp;&nbsp;|</li>
	<li>&nbsp;&nbsp;<a href="#">내강의실</a></li>
</ul>
</header>

<nav>
<ul>
	<li>
	<a href="#">학원소개</a>
		<ul>
			<li><a href="C02Sub1.jsp">SUB1</a></li>
			<li><a href="C02Sub2.jsp">SUB2</a></li>
			<li><a href="#">SUB3</a></li>
			<li><a href="#">SUB4</a></li>
		</ul>
	</li>
	
	<li>
	<a href="#">수강신청</a>
		<ul>
			<li><a href="#">SUB1</a></li>
			<li><a href="#">SUB2</a></li>
			<li><a href="#">SUB3</a></li>
			<li><a href="#">SUB4</a></li>
		</ul>
	</li>
	
	<li>
	<a href="#">선생님소개</a>
		<ul>
			<li><a href="#">SUB1</a></li>
			<li><a href="#">SUB2</a></li>
			<li><a href="#">SUB3</a></li>
			<li><a href="#">SUB4</a></li>
		</ul>
	</li>
	<li>
	<a href="#">교재소개</a>
		<ul>
			<li><a href="#">SUB1</a></li>
			<li><a href="#">SUB2</a></li>
			<li><a href="#">SUB3</a></li>
			<li><a href="#">SUB4</a></li>
		</ul>
	</li>
	<li>
	<a href="#">테스트</a>
		<ul>
			<li><a href="#">SUB1</a></li>
			<li><a href="#">SUB2</a></li>
			<li><a href="#">SUB3</a></li>
			<li><a href="#">SUB4</a></li>
		</ul>
	</li>
	<li>
	<a href="#">학습커뮤니티</a>
		<ul>
			<li><a href="#">SUB1</a></li>
			<li><a href="#">SUB2</a></li>
			<li><a href="#">SUB3</a></li>
			<li><a href="#">SUB4</a></li>
		</ul>
	</li>
	<li>
	<a href="#">고객센터</a>
		<ul>
			<li><a href="#">SUB1</a></li>
			<li><a href="#">SUB2</a></li>
			<li><a href="#">SUB3</a></li>
			<li><a href="#">SUB4</a></li>
		</ul>
	</li>
</ul>
</nav>
<aside>
<ul>
	<li id="li1"><a href="#" onclick="sub1()">메뉴 1</a></li>
	<li id="li2"><a href="#" onclick="sub2()">메뉴 2</a></li>
	<li id="li3"><a href="#">메뉴 3</a></li>
</ul>
</aside>


<content></content>
<section></section>
<footer>
<%@ include file="jsp/footerContents.jsp" %>
</footer>

</body>
</html>