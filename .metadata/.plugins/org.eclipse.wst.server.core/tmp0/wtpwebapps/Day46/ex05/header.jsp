<%@page import="beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>
<style>
	ul{
		list-style:none;
		padding:0;
		display: flex;
	}
	li{
		margin: 0 10px;
	}
	table{
		border-collapse: collapse;
	}
	th, td{
		border: 1px solid black;
		padding: 5px 10px;
	}
</style>
</head>
<body>

	<%
		User user = (User)session.getAttribute("user");
		
		if (user == null){
			user = new User();
		}
	%>
	
	<h1>session을 활용한 로그인 유지</h1>
	
	<ul>
		<li><a href="home.jsp">home</a></li>
		<li><a href="myPage.jsp">myPage</a></li>
		<li><a href="logout.jsp">logout</a></li>
	</ul>
	<hr>
	