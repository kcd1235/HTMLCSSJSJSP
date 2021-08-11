<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bMgr" class="Ch20.BoardMgr" scope="page"/>
	<%@page import="Ch20.BoardBean" %>
	<%
		int num=Integer.parseInt(request.getParameter("num"));	//게시물번호
		String nowPage=request.getParameter("nowPage");			//List.jsp에서 읽던 페이지 번호
		String keyField=request.getParameter("keyField");		//List.jsp에서 검색했던 keyField
		String keyWord=request.getParameter("keyWord");			//List.jsp에서 검색했던 keyWord
		
		//조회수 증가
		bMgr.upCount(num);
		
		//DB로부터 게시물 가져오기
		BoardBean bean=bMgr.getBoard(num);
		
		//현재 페이지에 표시
		//세션 객체에 현재 받아온 게시물 추가(update/reply/delete 시 사용)
		session.setAttribute("bean", bean);
		
	%>
	<script>
		function list(){
			document.listForm.submit();
		}
	</script>
	<form name=listForm method="post" action=List.jsp>
		<input type="hidden" name="nowPage" value=<%=nowPage %>>
		<input type="hidden" name="keyField" value="<%=keyField%>">
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	</form>
	<br><br>
	<table align="center" width=1000>
		<tr>
			<td bdcolor="lightgray" height=25 align="center">글읽기</td>
		</tr>
		<tr>
			<td>
				<table width=100%>
					<tr>
						<td align="center" bgcolor="lightgray">이름</td>
						<td><%=bean.getName() %></td>
						<td align="center" bgcolor="lightgray">등록날짜</td>
						<td><%=bean.getRegdate() %></td>
					</tr>
					<tr>
						<td align="center" bgcolor="lightgray">제 목</td>
						<td><%=bean.getSubject() %></td>
					</tr>
					<tr>
						<td align="center" bgcolor="lightgray">첨부 파일</td>
						<td colspan=3>
							<%
								if(bean.getFilename()!=null && !bean.getFilename().equals("")){
								%>
									<a href="#"><%=bean.getFilename() %></a>&nbsp;&nbsp;<font color=blue><%=bean.getFilesize() %> KByte</font>
								<%
								}
								else{
									%>
									등록된파일이없습니다.
									<%
								}
							%>
							
						</td>
					</tr>
					<tr>
						<td colspan=4>
							<br>
							<pre><%=bean.getContent().replaceAll("\r\n", "<br>") %></pre>
							<%
								String content=bean.getContent();
								System.out.println("CONTENT : "+content);
							%>
							<br>
						</td>
					</tr>
					<tr>
						<td colspan=4 align="right">
							<%=bean.getIp() %>로부터 글을 남기셨습니다 / 조회수 : <%=bean.getCount() %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center" colspan=2>
				<hr>
				[ <a href="javascript:list()">리스트</a> | 
				<a href="Update.jsp?nowPage=<%=nowPage%>">수정</a> | 
				<a href="Reply.jsp?nowPage=<%=nowPage%>">답변</a> | 
				<a href="Delete.jsp?nowPage=<%=nowPage%>">삭제</a> ]
			</td>
		</tr>
	</table>
</body>
</html>