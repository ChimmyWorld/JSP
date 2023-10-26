<%@page import="java.util.Enumeration"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02_result.jsp</title>
</head>
<body>
	<%
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		String encoding = "utf-8";
		
		MultipartRequest mr = new MultipartRequest(request, location, encoding);
		
		File name = mr.getFile("upload");
	%>
	
	<h1>업로드 결과</h1>
	<hr>
	
	<ul>
		<li><%=name %></li>
	</ul>
	
	<button onclick="history.back()">뒤로</button>
</body>
</html>