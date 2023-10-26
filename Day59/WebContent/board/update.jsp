<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="map" value="${dao.selectOne(param.idx) }"/>	
<c:set var="row" value="${map['board'] }"/>	

<article class="board">
	<form action="updatePro.jsp" method="POST">
		<table class="boards">
			<tr>
				<th>제목</th>
				<td colspan="5"><input name="title" value="${row.title }" required></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td colspan="5"><input name="writer" value="${row.writer }"  required></td>
			</tr>
			<tr>
				<td colspan="6"><textarea name="contents" required>${row.contents }</textarea></td>
			</tr>
		</table>
		
		<input name="idx" type="hidden" value="${row.idx }">
		<button>작성</button>
	</form>
</article>	
</body>
</html>