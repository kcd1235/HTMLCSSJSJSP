<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method=get action=C06Star.jsp>
<fieldset>
	<legend>별찍기</legend>
	높이 : <input type=text name=high>
	<input type=submit value="출력"><!--ex 5입력  -->
</fieldset>
</form>
<hr>
<%
	String tmp = request.getParameter("high");
	if(tmp!=null)
	{
		int n=Integer.parseInt(request.getParameter("high"));
	
		for(int i=0;i<=n-1;i++)
		{	
			for(int j=0;j<=(n-2)-i;j++)
			{
				out.print("&nbsp;");			
			}
			for(int k=0;k<=2*i;k++)
			{

				out.print("*");
	
			}
			%>	
			<br>
			<%
		}
	}





%>
 
 
</body>
</html>