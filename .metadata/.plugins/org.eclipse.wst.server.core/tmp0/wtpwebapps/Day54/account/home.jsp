<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
</head>
<body>
	<c:set var="list" value="${dao.selectAll() }"/>
	
	<h1>계정 리스트</h1>
	
	<table class="accounts">
		<tr>
			<th>IDX</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>가입일</th>
		</tr>
		
		<c:forEach var="row" items="${list }">
			<tr>
				<td>${row.idx }</td>
				<td>${row.userid }</td>
				<td>${fn:substring(row.userpw, 0, 6) }</td>
				<td>${row.nick }</td>
				<td>${row.email }</td>
				<td>${row.join_date }</td>
			</tr>
		</c:forEach>
	
	</table>
</body>
</html>