<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="stdDao" class="Ch16.stdDAO" />

<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	
	int result = stdDao.insert(id,name,addr);
	if(result!=0)
	{
	%>
		<script>
			alert("DB등록 완료!");
		</script>
	<%
	}
	else
	{
	%>
		<script>
			alert("DB등록 실패!");
		</script>
	<%
	}
%>

</body>
</html>