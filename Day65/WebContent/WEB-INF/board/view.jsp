<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section class="board" id="view">
<table>
	<tr>
		<th>${row.idx }글. ${row.title }</th>
	</tr>
	<tr>
		<th>${row.writer } | ${row.view_count } | ${row.writer }</th>
	</tr>
	<tr>
		<td><pre>${row.contents }</pre></td>
	</tr>	
</table>
</section>

<%@ include file="../footer.jsp" %>