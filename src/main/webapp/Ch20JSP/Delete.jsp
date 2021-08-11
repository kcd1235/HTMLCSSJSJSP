<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Ch20.*" %>
	<%
		BoardBean bean=(BoardBean)session.getAttribute("bean");
		String nowPage=request.getParameter("nowPage");
		int num=bean.getNum();
		String readpass=bean.getPass();		//현재 읽고있는 게시물의 패스워드		
		
		if(request.getParameter("pass")!=null)	//현재 페이지에서 전달한 패스워드
		{
			String inputpass=request.getParameter("pass");
			//패스워드 일치여부 확인
			if(readpass.equals(inputpass))
			{
				//DB에 특정 함수로 삭제
				BoardMgr bMgr=new BoardMgr();
				bMgr.deleteBoard(num);
				
				//위치 이동
				response.sendRedirect("/HTMLCSSJSJSP/Ch20JSP/List.jsp");
				
			}
		}
		else
		{
			//패스워드 입력 경고창을 띄움
			%>
			<script>
			function check()
			{
				if(document.delFrm.pass.value=="")
				{
					alert("패스워드를 입력하세요");
					document.delFrm.pass.focus();
				}
				else
				{
					document.delFrm.submit();
				}
			}
			</script>
		<%
		}
	%>
	<div align="center">
		<table width=1000 border=1>
			<tr align="center">
				<td>사용자의 비밀번호를 입력해주세요</td>
			</tr>
		</table>
		<form name=delFrm method="post" action="Delete.jsp">
			<table width=1000 border=1>
				<tr>
					<td align="center"><input type="password" name=pass></td>
				</tr>
				<tr align="center">
					<td>
						<input type="button" value=삭제하기 onclick="check()">
						<input type="reset" value=다시입력>
						<input type=button value=이전으로 onclick="history.go(-1)">
					</td>
				</tr>
			</table>
			<input type="hidden" name="nowPage" value=<%=request.getParameter("nowPage") %>>
			<input type="hidden" name="num" value=<%=bean.getNum() %>>
		</form>
	</div>
</body>
</html>