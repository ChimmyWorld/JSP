<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<form method="POST">
	<section class="board write">
	<table>
		<tr>
			<th>제목</th>
			<td><input name="title" value="${row.title }" required></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="contents" required>${row.contents }</textarea></td>	
		</tr>
		</table>
		
		<input name="writer" type="hidden" value="${user.nick }">
	
		<p><button>작성</button></p>
	</section>
</form>

<%@ include file="../footer.jsp"%>