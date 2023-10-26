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
	<c:set var="isLogin" value="${not empty user }"/>
	
	<h1>ITBANK</h1>
	
	<ul class="menu">
		<li><a href="${cpath }">home</a></li>
		
		<c:if test="${not isLogin }">
			<li><a href="${cpath }/login">login</a></li>
			<li><a href="${cpath }/signUp">signUp</a></li>
		</c:if>
		<c:if test="${isLogin }">
			<li><a href="${cpath }/myPage">${user.nick }</a></li>
			<li><a href="#" onclick="logout('${cpath}')">logout</a></li>
		</c:if>
		
	</ul>
</header>

<script src="${cpath }/js/account.js"></script>

<hr>
	
<main>
	
