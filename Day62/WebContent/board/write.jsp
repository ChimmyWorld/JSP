<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h1>글 작성</h1>
<hr>

<form action="writePro.jsp" method="POST" enctype="multipart/form-data">
	<table class="view">
		<tr>
			<th>제목</th>
			<td><input name="title" placeholder="제목" required></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input name="writer" placeholder="작성자" required></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="contents"></textarea></td>
		</tr>
		<tr>
			<th>파일</th>
			<td><input name="upload" type="file"></td>
		</tr>
		<tr>
			<td colspan="2"><button>전송</button></td>
		</tr>
	</table>
	
</form>


</body>
</html>