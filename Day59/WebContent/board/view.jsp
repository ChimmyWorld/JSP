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
	<c:if test="${board.writer == user.nick }">
	<p>
		<a href="${cpath }/board/update.jsp?idx=${board.idx }"><button>수정</button></a>
		<button  onclick="isDel(${board.idx}, '${cpath }')">삭제</button>
	</p>
	</c:if>
	
	<hr>
		
		<h5>${board.cnt }개의 댓글 </h5>
		
		<form class="reply" action="reply/replyPro.jsp">
			<input name="board_idx" type="hidden" value="${board.idx }">
			<input name="writer" type="hidden" value="${user.nick }">
			<section>
				<textarea name="contents" placeholder="바른말을 사용합시다"></textarea>
				<button>작성</button>
			</section>
			
			<input name="board_idx" type="hidden" value="${board.idx }">
		</form><hr>
<c:forEach var="rps" items="${rps }">

<c:set var="same" value="${user.nick == rps.writer ? '(x)' : ''} "/>
<pre>
${rps.writer} <a href="reply/deleteReply.jsp?idx=${rps.idx }">${same }</a>
${rps.contents }
${rps.write_date }
</pre><hr>
</c:forEach>
	
</article>
</body>
</html>