<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>메인 페이지 입니다</h3>
<hr>
<span id=timer></span>
<hr>
<script>
	var max = parseInt(<%=session.getMaxInactiveInterval() %>);
	var timer = document.getElementById("timer");
	timer.innerHTML=max;
	function counting()
	{
		max=max-1;
		timer.innerHTML=max;
		if(max<0)
		{
			//반복종료
			clearInterval(tmp);
			alert("세션시간이 만료되어 로그인페이지로 이동합니다");
			location.href="C04Login.jsp";
		}
	}
	tmp = setInterval(counting,1000);
</script>


<br>
<a href="C04Logout.jsp">로그아웃</a>
</body>
</html>