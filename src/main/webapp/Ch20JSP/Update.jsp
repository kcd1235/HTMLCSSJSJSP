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
		int nowPage=Integer.parseInt(request.getParameter("nowPage"));
	%>
	<script>
		function check(){
			if(document.updateFrm.pass.value==""){
				alert("수정을 위해 패스워드를 입력하세요");
				document.updateFrm.pass.focus();
				return false;
			}
			document.updateFrm.submit();
		}
	</script>
	<div align="center">
		<table width=600 >
			<tr>
				<td bgcolor="lightgray" height=25 align="center">수정하기</td>
			</tr>
		</table>
		<form name=updateFrm method="post" action="/HTMLCSSJSJSP/boardUpdate">
			<table border=1 width=600>
				<tr>
					<td width=15% bgcolor="lightgray">성 명</td>
					<td width=90%><input name="name" value="<%=bean.getName()%>"></td>
				</tr>
				<tr>
					<td width=15% bgcolor="lightgray">제 목</td>
					<td width=90%><input name="subject" value="<%=bean.getSubject()%>"></td>
				</tr>
				<tr>
					<td width=15% bgcolor="lightgray">내 용</td>
					<td width=90%><textarea rows="10" cols="50" name=content><%=bean.getContent() %></textarea></td>
				</tr>
				<tr>
					<td width=15% bgcolor="lightgray">패스워드</td>
					<td width=90%><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan=2>
						<input type="button" value="수정완료"  onClick="check()">
						<input type="reset" value="다시쓰기">
						<input type="button" value="뒤로가기"  onClick="history.go(-1)">
					</td>
				</tr>
			</table>
			<input type="hidden" name=nowPage value="<%=nowPage%>">
			<input type="hidden" name=num value="<%=bean.getNum()%>">
		</form>
	</div>
</body>
</html>