<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align=center>
		<table width=800 border=1>
			<tr>
				<td align="center" height=25 bgcolor=lightgray>글쓰기</td>
			</tr>
		</table>
		<br>
		<form name=postFrm method="post" action="/HTMLCSSJSJSP/BoardPost" enctype="multipart/form-data">
			<table width=1000 align="center">
				<tr>
					<td>
						<table border=1 align="center">
							<tr>
								<td width=10%>성 명</td>
								<td width=90%><input name=name size=10></td>
							</tr>
							<tr>
								<td width=10%>제 목</td>
								<td width=90%><input name=subject size=10></td>
							</tr>
							<tr>
								<td width=10%>내 용</td>
								<td width=90%><textarea name=content rows=10 cols=50></textarea></td>
							</tr>
							<tr>
								<td width=10%>비밀 번호</td>
								<td width=90%><input type="password" name=pass size=10></td>
							</tr>
							<tr>
								<td width=10%>파일 찾기</td>
								<td width=90%><input type=file name=uploadFile size=50></td>
							</tr>
							<tr>
								<td colspan=2></td>
							</tr>
							<tr>
								<td colspan=2>
									<input type="submit" value="등록">
									<input type="reset" value="다시쓰기">
									<input type="button" value="리스트" onclick="javascript:location.href='List.jsp'">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
		</form>
	</div>
</body>
</html>