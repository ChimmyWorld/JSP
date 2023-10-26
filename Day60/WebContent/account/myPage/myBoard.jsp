<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="model.BoardDAO"/>
<c:set var="page" value="${empty param.page ? 1 : param.page }"/>
<c:set var="map" value="${dao.selectAll(page, 'writer', user.nick, 'idx') }"/>
<c:set var="list" value="${map['list'] }"/>
<c:set var="p" value="${map['p'] }"/>


<h5>총 개수 : ${p.totalBoard } | 총 페이지 : ${p.totalPage }</h5>

<table class="boards">
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>조회수</th>
		<th>작성일</th>
	</tr>

	<c:forEach var="row" items="${list }">	
	<tr>
		<td>${row.idx }</td>
		<td>${row.title }</td>
		<td>${row.writer }</td>
		<td>${row.view_count }</td>
		<td>${row.write_date }</td>
	</tr>
	</c:forEach>
	
</table>

	<ul class="page">
		<c:if test="${p.prev }">
			<li><a href="?show=myBoard&page=${p.begin - 1 }">이전</a></li>
		</c:if>
	
		<c:forEach var="i" begin="${p.begin }" end="${p.end }">
			<li><a href="?show=myBoard&page=${i}">${i }</a></li>
		</c:forEach>
		
		<c:if test="${p.next }">
			<li><a href="?show=myBoard&page=${p.end + 1 }">다음</a></li>
		</c:if>
	</ul>