<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:useBean id="dao" class="model.BoardDAO"/>

	<h1>썸네일 게시판</h1>
	
	<ul>
		<li><a href="home.jsp">홈</a></li>
		<li><a href="write.jsp">글작성</a></li>
	</ul>
	
	<hr>
</body>
</html>