<%@page import="java.math.BigInteger"%>
<%@page import="java.security.MessageDigest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp</title>
</head>
<body>
	<%
		String pw = "it12";
		String hash;
	
		MessageDigest md = MessageDigest.getInstance("SHA-512");
		
		md.reset(); // 이전 해시값이 남아 있을 수 있음
		md.update(pw.getBytes());
		
		hash = String.format("%0128x", new BigInteger(1, md.digest()));
	%>
	
	<h1>Hash 처리</h1>
	
	<ul>
		<li>원본(128자) : <%=hash %></li>
		<li>자름(6자): <%=hash.substring(0, 6) %></li>
	</ul>
</body>
</html>