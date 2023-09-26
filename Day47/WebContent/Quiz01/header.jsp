<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header.jsp</title>

<link rel="stylesheet" href="../css/style.css">

</head>
<body>

	<%
		Account user =(Account)session.getAttribute("user");
			
		if (user == null){
			user = new Account();
		}
		
		Cookie[] cs = request.getCookies();
			
		String userid, userpw, save;
		userid = userpw = save = "";
		
		if (cs != null) { 
			for (int i=0; i < cs.length; i++){
		switch(cs[i].getName()) {
			case "userid": userid = cs[i].getValue(); break;
			case "userpw": userid = cs[i].getValue(); break;
			case "save":   save = cs[i].getValue();   break;
		}
			}
		}
	%>
	<h1>Quiz01</h1>
	<hr>
	
	<ul class="menu">
		<li><a href="home.jsp">home</a></li>
		<li><a href="myPage.jsp">myPage</a></li>
		<li><a href="logout.jsp">logout</a></li>
	</ul>
