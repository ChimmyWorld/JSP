<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<jsp:useBean id="dao" class="model.BoardDAO"/>
<c:set var="list" value="${dao.selectMyReply(user.nick) }"/>

<table class="boards">
	<tr>
		<th>IDX</th>
		<th>게시글</th>
		<th>댓글</th>
		<th>작성일</th>
	</tr>
	
	<c:forEach var="row" items="${list }">
	<tr>
		<td>${row.board_idx }</td>
		<td>${row.title }</td>
		<td>${row.contents }</td>
		<td>${row.write_date }</td>
	</tr>
	</c:forEach>

</table>

</body>
</html>