<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<%
		Random ran = new Random();
		String chs = "abcdefghijklmnopqrstuvwxyz0123456789";
		
		String newPw = "";
				
		for (int i = 1; i <= 6; i++) {
			int n = ran.nextInt(chs.length()); // 0 ~ 35
			
			newPw += chs.charAt(n);	
		}
	%>
	
	<h1>무작위 패스워드 생성</h1>
	
	<h4>새 패스워드 : <%=newPw %></h4>
</body>
</html>