<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${cpath }/css/style.css" rel="stylesheet">
<title>ITBANK</title>

</head>
<body>
<header>
	<h1>ITBANK</h1>
	<h4>로그인 : ${empty user ? "x" : user.nick }</h4>
	<ul class="menu">
		<li><a href="${cpath }">home</a></li>
		<li><a href="${cpath }/login">login</a></li>
		<li><a href="${cpath }/signUp">signUp</a></li>
	</ul>
</header>
	
<hr>
	
<main>
	
