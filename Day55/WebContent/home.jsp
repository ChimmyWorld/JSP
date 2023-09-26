<%@page import="beans.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>


	
	<c:set var="list" value="${dao.selectAll() }"/>
	
	<table class="accounts">
		<tr>
			<th>IDX</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx} </td>
			<td>${row.title}</td>
			<td>${row.contents}</td>
			<td>${row.writer}</td>
			<td>${row.view_count}</td>
			<td>${row.write_date}</td>
		</tr>
		
		</c:forEach>
	</table>
	
	
</body>
</html>