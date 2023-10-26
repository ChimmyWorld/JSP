<%@page import="beans.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
	
	<c:set var="list" value="${dao.selectAll() }"/>
	
	<table class="boards">
		<tr>
			<th>IDX</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx} </td>
			<td><a href="${cpath }/board/view.jsp?idx=${row.idx }">
			${row.title}
			</a></td>
			<td>${row.writer}</td>
			<td>${row.view_count}</td>
			<td>${row.write_date}</td>
			<td>클릭</td>
			<td onclick="isDel(${row.idx}, '${cpath }')">클릭</td>
		</tr>
		
		</c:forEach>
	</table>
	
	<script>
	</script>
</body>
</html>