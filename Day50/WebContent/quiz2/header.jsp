<%@page import="model.AccountDAO"%>
<%@page import="beans.AccountVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>

<link rel="stylesheet" href="../css/style.css">
<script src="../js/message.js"></script>
</head>
<body>
	<%
		AccountDAO dao = new AccountDAO();
		AccountVO user = (AccountVO)session.getAttribute("user");
		
		String login = "logout";
		String myPage = "myPage";
		
		if (user == null) {
			user = new AccountVO();
			user.setNick("현재 로그인 중이 아닙니다.");
			
			login = "login";
			myPage = "";
		}
	%>
	
	<h1><a href="home.jsp">Quiz02</a></h1>
	
	<nav>
		<ul class="menu">
			<li><a href="home.jsp">home</a></li>
			<li><a href="<%=login %>.jsp"><%=login %></a></li>
			<li><a href="signUp.jsp">signUp</a>
			<li><a href="<%=myPage %>.jsp"><%=myPage %></a>
		</ul>
	</nav>
	
	<hr>
	<div>현재 로그인 : <%=user.getNick() %></div>
	<hr>
	
</body>
</html>