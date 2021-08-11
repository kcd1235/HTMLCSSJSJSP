<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="Ch20.BoardBean" %>
	<%
		BoardBean bean=(BoardBean)session.getAttribute("bean");
		String nowPage=request.getParameter("nowPage");
		String reply="\n===============답변==============\n";
	%>
	<div align="center">
		<table width=600 >
			<tr>
				<td bgcolor="lightgray" height=25 align="center">답변하기</td>
			</tr>
		</table>
		<form method="post" action="/HTMLCSSJSJSP/boardReply">
			<table border=1 width=600>
				<tr>
					<td width=15% bgcolor="lightgray">성 명</td>
					<td width=90%><input name="name" value="<%=bean.getName()%>"></td>
				</tr>
				<tr>
					<td width=15% bgcolor="lightgray">제 목</td>
					<td width=90%><input name="subject" value="답변 : <%=bean.getSubject()%>"></td>
				</tr>
				<tr>
					<td width=15% bgcolor="lightgray">내 용</td>
					<td width=90%><textarea rows="20" cols="70" name=content wrap=hard><%=bean.getContent() %><%=reply %></textarea></td>
				</tr>
				<tr>
					<td width=15% bgcolor="lightgray">패스워드</td>
					<td width=90%><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan=2>
						<input type="submit" value="답변등록" >
						<input type="reset" value="다시쓰기">
						<input type="button" value="뒤로가기"  onClick="history.go(-1)">
					</td>
				</tr>
			</table>
			<input type="hidden" name=nowPage value="<%=nowPage%>">
			<input type="hidden" name=ref value="<%=bean.getRef()%>">			<!--read.jsp에서 읽는 게시물  -->
			<input type="hidden" name=pos value="<%=bean.getPos()%>">			<!--read.jsp에서 읽는 게시물  -->
			<input type="hidden" name=depth value="<%=bean.getDepth()%>">		<!--read.jsp에서 읽는 게시물  -->
			<input type="hidden" name=id value="<%=request.getRemoteAddr()%>">	
		</form>
	</div>
</body>
</html>