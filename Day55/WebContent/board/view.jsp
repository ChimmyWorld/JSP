<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:set var="row" value="${dao.selectOne(param.idx) }"/>

<article>
	<table class="boards">
		<tr>
			<th colspan="6">${row.idx }. ${row.title }</th>
		</tr>
		<tr>
			<th>작성자</th>
			<th>${row.writer }</th>
			<th>조회수</th>
			<th>${row.view_count }</th>
			<th>작성일</th>
			<th>${row.write_date }</th>
		</tr>
		<tr>
			<td colspan="6"><pre>${row.contents }</pre></td>
		</tr>
	</table>
</article>

</body>
</html>