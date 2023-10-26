<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2</title>
<link href="${cpath }/css/style.css" rel="stylesheet"> 
</head>
<body>	
	<h1>Quiz2</h1>
	<hr>
	
	<h4>Account 테이블을 전체 출력</h4>
	
	<table class="board">
		<tr>
			<th>IDX</th>
			<th>USERID</th>
			<th>USERPW</th>
			<th>NICK</th>
			<th>EMAIL</th>
			<th>JOIN_DATE</th>
		</tr>
		
	<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.idx }</td>
			<td>${row.userid }</td>
			<td>${fn:substring(row.userpw, 0, 6)}</td>
			<td>${row.nick }</td>
			<td>${row.email }</td>
			<td>${row.join_date }</td>
		</tr>
	</c:forEach>
	</table>
	

</body>
</html>