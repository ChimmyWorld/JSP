<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01_delete.jsp</title>
</head>
<body>
	<%
		String location = pageContext.getServletContext().getRealPath("/uploadEx");
		File file = new File(location, request.getParameter("f"));
		
		System.out.println(file);
		
		file.delete();
	%>
	
	<script>
		location.href="ex01.jsp"
	</script>
	
</body>
</html>