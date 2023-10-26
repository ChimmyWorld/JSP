<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<form method="POST">
	<section class="board write">
	<table>
		<tr>
			<th>제목</th>
			<td><input name="title" required></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="contents" required></textarea></td>	
		</tr>
		</table>
		
		<input name="writer" type="hidden" value="test11111">
	
		<p><button>작성</button></p>
	</section>
</form>

</body>
</html>