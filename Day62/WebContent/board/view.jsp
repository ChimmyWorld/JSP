<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="row" value="${dao.selectOne(param.idx)}"/>

<table class="view">
	<tr>
		<th>${row.idx } | ${row.title }</th>
	<tr>
	<tr>
		<th>${row.writer} | ${row.write_date }</th>
	</tr>	
	<tr>
		<td>
			<div class="contents">
				<c:if test="${row.img_path != 'img/default.png' }">
				<div><img src="${row.img_path }" width="650px" height="500px"></div>
				</c:if>
				<pre>${row.contents }</pre>
			</div>
		</td>
	</tr>
	<tr></tr>
</table>

<button onclick="history.back()">뒤로 </button>

</body>
</html>