<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<c:if test="${empty user }">
	<c:redirect url="../home.jsp" />
</c:if>

<article class="board">
	<form action="writePro.jsp" method="POST">
		<table class="boards">
			<tr>
				<th>제목</th>
				<td colspan="5"><input name="title" required></td>
			</tr>
			<tr>
				<td colspan="6"><textarea name="contents" required></textarea></td>
			</tr>
		</table>
		
		<input name="writer" type="hidden" value="${user.nick }">
		<button>작성</button>		
	</form>
</article>	
</body>
</html>