<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<h1>파일 업로드</h1>
	<hr>
	
	<form action="ex01_result.jsp" method="POST" enctype="multipart/form-data">
		<p><input name="memo" placeholder="단순 텍스트"></p>
		<p><input name="upload" type="file"></p>
		
		<button>전송</button>
	</form>
	
	<hr>
	
	<%
		File upDir = new File(pageContext.getServletContext().getRealPath("/upload"));
		pageContext.setAttribute("list", upDir.list());
	%>
	
	<h4>업로드 목록</h4>
	
	<ul>
		<c:forEach var="f" items="${list }">
			<li><a href="upload/${f }" download>${f }</a></li>
		</c:forEach>
	</ul>
</body>
</html>