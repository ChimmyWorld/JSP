<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="map" value="${dao.selectOne(param.idx) }"/>
<c:set var="board" value="${map['board'] }"/>
<c:set var="rps" value="${map['rps'] }"/>

<article class="board">
	<table class="boards">
		<tr>
			<th colspan="6">${board.idx }. ${board.title }</th>
		</tr>
		<tr>
			<th>작성자</th>
			<th>${board.writer }</th>
			<th>조회수</th>
			<th>${board.view_count }</th>
			<th>작성일</th>
			<th>${board.write_date }</th>
		</tr>
		<tr>
			<td colspan="6"><pre>${board.contents }</pre></td>
		</tr>
	</table>
	
	<br><hr><br>
	
		<form class="reply">
			<input name="nick" placeholder="닉네임(필수)" required>
			<section>
				<textarea name="contents" placeholder="바른말을 사용합시다"></textarea>
				<button>작성</button>
			</section>
		</form><hr>
<c:forEach var="rps" items="${rps }">
<pre>
${rps.writer}
${rps.contents }
${rps.write_date }
</pre><hr>
</c:forEach>
	
</article>
</body>
</html>