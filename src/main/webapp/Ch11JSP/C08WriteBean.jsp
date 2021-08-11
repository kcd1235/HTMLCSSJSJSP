<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	scope 속성값 정리
	page : 현재페이지에서만 유효
	request : 요청값 처리를 하는 동안에만 유효
	session : 현재 브라우저를 활성화 시켜놓은 상태에서만 유효
	application : 서비스(톰캣)가 활성화 되어 있는 상태에서 유효 
 -->
<jsp:useBean id="Board" class="Ch11.C03BoardBean"  scope="application" />
<jsp:setProperty name="Board" property="*" />


<form method=post action="C08WriteBean.jsp">
<fieldset style="width:300px;">
<legend>글쓰기</legend>
<textArea cols=30 rows=10 width=300px height=100px name=txtarea>
</textArea><br>
<input type=submit value="전송">
</fieldset>
</form>
<hr>
<%
		for(int i=0;i<Board.list.size();i++)
		{
			out.println(Board.list.get(i)+"<br>");
			out.println("<hr>");
		}
		
%>




	

</body>
</html>