<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#contents {width:1200px;height:800px;border:1px solid gray;}
#contents ul {list-style:none; text-align:center;}
#contents ul li {width:200px;height:300px;border:1px solid gray; float:left; margin:0px 30px; }
#contents ul li form img {width:95%; height:200px; border:1px solid gray; }
#contents ul li form h4 {margin:2px;}
#contents ul li form a {margin:10px;}
hr {width:1200px;}

</style>
</head>
<body>
<h1>메인 페이지</h1>
계정 ID : <%=(String)session.getAttribute("idKey") %><br>
계정 PW : <%=(String)session.getAttribute("pwdKey") %><br>
<br>
<a href="C06Logout.jsp">로그아웃</a>

<hr align=left>
<div id=contents>
<h3>구매 교재</h3>

<ul>
	<li>
		<form>
			<input type=hidden name=title id=title value="이것이리눅스다" >
			<input type=hidden name=publisher id=publisher value="한빛미디어" >
			<input type=hidden name=price id=price value="20000" >
			<img src="이것이리눅스다.jpg">
			<h4>이것이 리눅스다</h4>
			<font>20000</font><br>
			<a href="#" onclick="addtoCart(0)">장바구니</a><a href="#" onclick="buyProd()">구매하기</a>
		</form>
	</li>
	<li>
		<form>
			<input type=hidden name=title id=title value="윤성우의열혈C" >
			<input type=hidden name=publisher id=publisher value="오렌지미디어" >
			<input type=hidden name=price id=price value="30000" >
			<img src="열혈C.jpg">
			<h4>윤성우의 열혈C</h4>
			<font>30000</font><br>
			<a href="#" onclick="addtoCart(1)">장바구니</a><a href="#" onclick="buyProd()">구매하기</a>
		</form>
	</li>
	
	<li>
		<form>
			<input type=hidden name=title id=title value="자바의정석" >
			<input type=hidden name=publisher id=publisher value="00출판사" >
			<input type=hidden name=price id=price value="25000" >
			<img src="자바의정석.jpg">
			<h4>자바의정석</h4>
			<font>25000</font><br>
			<a href="#" onclick="addtoCart(2)">장바구니</a><a href="#" onclick="buyProd()">구매하기</a>
		</form>
	</li>
	
	<li>
		<form>
			<input type=hidden name=title id=title value="DOITJAVA" >
			<input type=hidden name=publisher id=publisher value="00출판사" >
			<input type=hidden name=price id=price value="30000" >
			<img src="DOITJAVA.jpg">
			<h4>DO IT자바</h4>
			<font>30000</font><br>
			<a href="#" onclick="addtoCart(3)">장바구니</a><a href="#" onclick="buyProd()">구매하기</a>
		</form>
	</li>

</ul>
</div>

<script>
	function addtoCart(num)
	{
		title=document.forms[num].elements[0].value;
		publisher=document.forms[num].elements[1].value;
		price=document.forms[num].elements[2].value;
		
		isok = confirm("도서명 : "+title+"\n출판사 : " +publisher + "\n가격 : " + price+"\n장바구니에 추가하시겠습니까?");
		if(isok==true)
		{
			
			document.forms[num].action="C06addCart.jsp?title="+title+"&publisher="+publisher+"&price="+price;
			document.forms[num].submit();
			
			alert("장바구니에 담았습니다");
		}
		else
		{
			alert("취소합니다");
		}
		
	}
	function buyProd()
	{
		isok = confirm("구매하기 페이지로 이동하시겠습니까?");
		if(isok==true)
		{
			location.href="C06buyProd.jsp";
		}
		else
		{
			alert("구매하기 페이지 이동을  취소합니다")	
		}
		
	}
	

</script>



<br>
<a href="C05Logout.jsp">로그아웃</a>
</body>
</html>