<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="model.BoardDAO"/>
<c:set var="map" value="${dao.selectAll(1, 'writer', user.nick, 'idx') }"/>
<c:set var="list" value="${map['list'] }"/>

<table class="boards">
	<tr>
		<th>삭제</th>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
		<th>작성일</th>
	</tr>

	<c:forEach var="row" items="${list }">	
	<tr>
		<th><input name="" type="checkbox" style="width: auto;"></th>
		<td>${row.idx }</td>
		<td>${row.title }</td>
		<td>${row.writer }</td>
		<td>${row.view_count }</td>
		<td>${row.write_date }</td>
	</tr>
	</c:forEach>
</table>